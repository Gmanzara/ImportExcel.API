using ImportExcel.API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OfficeOpenXml;

namespace ImportExcel.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ExcelImportController : ControllerBase
    {
        private readonly ExcelDbContext _context;

        public ExcelImportController(ExcelDbContext context)
        {
            _context = context;
        }

        [HttpPost("upload")]
        public async Task<IActionResult> UploadFile(IFormFile file)
        {
            if (file == null || file.Length <= 0)
                return BadRequest("Fichier Invalide");

            using var stream = file.OpenReadStream();
            using var package = new ExcelPackage(stream);
            var worksheet = package.Workbook.Worksheets.FirstOrDefault();

            if (worksheet == null)
                return BadRequest("Feuille de calcul introuvable dans le fichier Excel");

            var excelDataList = new List<ExcelStudents>();

            for (int row = 2; row <= worksheet.Dimension.End.Row; row++)
            {
                excelDataList.Add(new ExcelStudents
                {
                    RollNo = worksheet.Cells[row, 1].Value?.ToString(),
                    EnrollmentNo = worksheet.Cells[row, 2].Value?.ToString(),
                    Name = worksheet.Cells[row, 3].Value?.ToString(),
                    Branch = worksheet.Cells[row, 4].Value?.ToString(),
                    University = worksheet.Cells[row, 5].Value?.ToString(),
                    // Map other columns as needed
                });
            }

            // Assuming DatabaseEntity is the entity model for your database
            var entitiesToSave = excelDataList.Select(data => new EntityStudents
            {
                RollNo = data.RollNo,
                EnrollmentNo = data.EnrollmentNo,
                Name = data.Name,
                Branch = data.Branch,
                University = data.University
                // Map other properties
            });

            _context.Entities.AddRange(entitiesToSave);
            await _context.SaveChangesAsync();

            return Ok("Données importées avec succès.");
        }
    }
}
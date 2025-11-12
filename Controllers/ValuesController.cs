using Microsoft.AspNetCore.Mvc;

namespace TrackerApi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ValuesController : ControllerBase
{
    [HttpGet]
    public IActionResult Get()
    {
        return Ok(new { message = "Hello from .NET Web API!", timestamp = DateTime.UtcNow });
    }

    [HttpGet("{id}")]
    public IActionResult Get(int id)
    {
        return Ok(new { id = id, message = $"Value with id {id}" });
    }

    [HttpPost]
    public IActionResult Post([FromBody] string value)
    {
        return Ok(new { message = "Value created", value = value });
    }
}


using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using RecodeTrip.Models;

namespace RecodeTrip.Controllers
{
    public class PromocoesController : Controller
    {
        private readonly Contexto _context;

        public PromocoesController(Contexto context)
        {
            _context = context;
        }

        // GET: Promocoes
        public async Task<IActionResult> Index()
        {
            var contexto = _context.Promocoes.Include(p => p.Destino);
            return View(await contexto.ToListAsync());
        }

        // GET: Promocoes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var promocao = await _context.Promocoes
                .Include(p => p.Destino)
                .FirstOrDefaultAsync(m => m.ID == id);
            if (promocao == null)
            {
                return NotFound();
            }

            return View(promocao);
        }

        // GET: Promocoes/Create
        public IActionResult Create()
        {

            ViewData["DestinoID"] = new SelectList(_context.Destinos, "ID", "NomeDestino");
            return View();
        }

        // POST: Promocoes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ID,DestinoID,avaliacao,desconto,valor")] Promocao promocao)
        {
            if (ModelState.IsValid)
            {
                _context.Add(promocao);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["DestinoID"] = new SelectList(_context.Destinos, "ID", "NomeDestino", promocao.DestinoID);
            return View(promocao);
        }

        // GET: Promocoes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var promocao = await _context.Promocoes.FindAsync(id);
            if (promocao == null)
            {
                return NotFound();
            }
            ViewData["DestinoID"] = new SelectList(_context.Destinos, "ID", "NomeDestino", promocao.DestinoID);
            return View(promocao);
        }

        // POST: Promocoes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ID,DestinoID,avaliacao,desconto,valor")] Promocao promocao)
        {
            if (id != promocao.ID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(promocao);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PromocaoExists(promocao.ID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["DestinoID"] = new SelectList(_context.Destinos, "ID", "NomeDestino", promocao.DestinoID);
            return View(promocao);
        }

        // GET: Promocoes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var promocao = await _context.Promocoes
                .Include(p => p.Destino)
                .FirstOrDefaultAsync(m => m.ID == id);
            if (promocao == null)
            {
                return NotFound();
            }

            return View(promocao);
        }

        // POST: Promocoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var promocao = await _context.Promocoes.FindAsync(id);
            _context.Promocoes.Remove(promocao);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PromocaoExists(int id)
        {
            return _context.Promocoes.Any(e => e.ID == id);
        }
    }
}

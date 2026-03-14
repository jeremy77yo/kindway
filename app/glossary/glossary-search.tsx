"use client";

import { useState } from "react";
import { cn } from "@/lib/utils";
import type { GlossaryTerm } from "./page";

interface GlossarySearchProps {
  terms: GlossaryTerm[];
  categories: string[];
}

export function GlossarySearch({ terms, categories }: GlossarySearchProps) {
  const [query, setQuery] = useState("");
  const [activeCategory, setActiveCategory] = useState("All");

  const filtered = terms.filter((t) => {
    const matchesCategory =
      activeCategory === "All" || t.category === activeCategory;
    if (!query.trim()) return matchesCategory;
    const q = query.toLowerCase();
    return (
      matchesCategory &&
      (t.term.toLowerCase().includes(q) ||
        (t.aka && t.aka.toLowerCase().includes(q)) ||
        t.definition.toLowerCase().includes(q))
    );
  });

  return (
    <>
      {/* Search */}
      <div className="mb-4">
        <label htmlFor="glossary-search" className="sr-only">
          Search glossary terms
        </label>
        <input
          id="glossary-search"
          type="search"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Search for a term (e.g., IPP, ILS, fair hearing)..."
          className="h-12 w-full rounded-xl border-2 border-border bg-white px-4 text-base transition-colors placeholder:text-muted-foreground focus:border-primary focus:outline-none focus:ring-2 focus:ring-primary/30"
        />
      </div>

      {/* Category pills */}
      <div
        className="mb-6 flex flex-wrap gap-2"
        role="radiogroup"
        aria-label="Filter by category"
      >
        {categories.map((cat) => {
          const isActive = activeCategory === cat;
          return (
            <button
              key={cat}
              type="button"
              role="radio"
              aria-checked={isActive}
              onClick={() => setActiveCategory(cat)}
              className={cn(
                "inline-flex items-center justify-center rounded-full border-2 px-4 py-1.5 text-sm font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2",
                isActive
                  ? "border-primary bg-primary-light text-primary-dark"
                  : "border-border bg-white text-muted-foreground hover:bg-muted"
              )}
            >
              {cat}
            </button>
          );
        })}
      </div>

      {/* Results */}
      {filtered.length === 0 ? (
        <div className="rounded-2xl border-2 border-dashed border-border bg-white p-10 text-center">
          <p className="text-muted-foreground">
            No terms found matching &quot;{query}&quot;.
          </p>
        </div>
      ) : (
        <div className="space-y-4">
          {filtered.map((t) => (
            <article
              key={t.term}
              className="rounded-2xl border border-border bg-white p-5"
              id={t.term.toLowerCase().replace(/[^a-z0-9]+/g, "-")}
            >
              <div className="flex items-start justify-between gap-3">
                <div>
                  <h2 className="text-base font-bold text-foreground">
                    {t.term}
                  </h2>
                  {t.aka && (
                    <p className="mt-0.5 text-xs text-muted-foreground">
                      Also known as: {t.aka}
                    </p>
                  )}
                </div>
                <span className="shrink-0 rounded-full bg-muted px-3 py-0.5 text-xs font-medium text-muted-foreground">
                  {t.category}
                </span>
              </div>
              <p className="mt-2 text-sm text-muted-foreground leading-relaxed">
                {t.definition}
              </p>
            </article>
          ))}
        </div>
      )}

      {/* Count */}
      <p className="mt-4 text-center text-xs text-muted-foreground">
        Showing {filtered.length} of {terms.length} terms
      </p>
    </>
  );
}

import Link from "next/link";
import { Compass } from "lucide-react";

export function Header() {
  return (
    <header className="sticky top-0 z-40 border-b border-border bg-white/95 backdrop-blur supports-[backdrop-filter]:bg-white/80">
      <div className="mx-auto flex h-16 max-w-7xl items-center justify-between px-4">
        <Link
          href="/"
          className="flex items-center gap-2 text-lg font-bold text-primary"
          aria-label="Kindway - Home"
        >
          <Compass className="h-7 w-7" aria-hidden="true" />
          <span className="hidden sm:inline">Kindway</span>
          <span className="sm:hidden">Kindway</span>
        </Link>
        <nav className="hidden md:flex md:items-center md:gap-1" aria-label="Main navigation">
          <Link
            href="/services"
            className="rounded-lg px-3 py-2 text-sm font-medium text-foreground/70 transition-colors hover:bg-muted hover:text-foreground"
          >
            Services
          </Link>
          <Link
            href="/providers"
            className="rounded-lg px-3 py-2 text-sm font-medium text-foreground/70 transition-colors hover:bg-muted hover:text-foreground"
          >
            Providers
          </Link>
          <Link
            href="/next-steps"
            className="rounded-lg px-3 py-2 text-sm font-medium text-foreground/70 transition-colors hover:bg-muted hover:text-foreground"
          >
            Next Steps
          </Link>
          <Link
            href="/community"
            className="rounded-lg px-3 py-2 text-sm font-medium text-foreground/70 transition-colors hover:bg-muted hover:text-foreground"
          >
            Community
          </Link>
          <Link
            href="/about"
            className="rounded-lg px-3 py-2 text-sm font-medium text-foreground/70 transition-colors hover:bg-muted hover:text-foreground"
          >
            About
          </Link>
        </nav>
      </div>
    </header>
  );
}

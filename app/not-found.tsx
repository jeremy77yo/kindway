import Link from "next/link";
import { Home, Search } from "lucide-react";

export default function NotFound() {
  return (
    <div className="mx-auto flex min-h-[60vh] max-w-xl flex-col items-center justify-center px-4 py-16 text-center">
      <div className="mb-6 text-6xl font-bold text-muted-foreground/30">
        404
      </div>
      <h1 className="mb-2 text-2xl font-bold text-foreground">
        Page Not Found
      </h1>
      <p className="mb-8 text-muted-foreground">
        Sorry, we couldn&apos;t find the page you&apos;re looking for. It may
        have been moved or doesn&apos;t exist.
      </p>
      <div className="flex flex-col gap-3 sm:flex-row">
        <Link
          href="/"
          className="inline-flex h-11 items-center justify-center gap-2 rounded-xl bg-primary px-5 font-semibold text-white transition-colors hover:bg-primary-dark"
        >
          <Home className="h-4 w-4" aria-hidden="true" />
          Go Home
        </Link>
        <Link
          href="/providers"
          className="inline-flex h-11 items-center justify-center gap-2 rounded-xl border-2 border-border bg-white px-5 font-semibold transition-colors hover:bg-muted"
        >
          <Search className="h-4 w-4" aria-hidden="true" />
          Search Providers
        </Link>
      </div>
    </div>
  );
}

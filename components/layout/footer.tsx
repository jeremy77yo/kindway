import Link from "next/link";

export function Footer() {
  return (
    <footer className="hidden border-t border-border bg-muted/50 md:block">
      <div className="mx-auto max-w-7xl px-4 py-8">
        <div className="grid grid-cols-3 gap-8">
          <div>
            <h3 className="mb-3 text-sm font-semibold text-foreground">
              Kindway
            </h3>
            <p className="text-sm text-muted-foreground">
              Kindway helps people with disabilities, families, and caregivers
              discover services and find providers in the Bay Area.
            </p>
          </div>
          <div>
            <h3 className="mb-3 text-sm font-semibold text-foreground">
              Browse
            </h3>
            <ul className="space-y-2 text-sm">
              <li>
                <Link
                  href="/services"
                  className="text-muted-foreground hover:text-foreground"
                >
                  Service Categories
                </Link>
              </li>
              <li>
                <Link
                  href="/providers"
                  className="text-muted-foreground hover:text-foreground"
                >
                  Provider Directory
                </Link>
              </li>
              <li>
                <Link
                  href="/next-steps"
                  className="text-muted-foreground hover:text-foreground"
                >
                  Next Steps Guides
                </Link>
              </li>
            </ul>
          </div>
          <div>
            <h3 className="mb-3 text-sm font-semibold text-foreground">
              Resources
            </h3>
            <ul className="space-y-2 text-sm">
              <li>
                <Link
                  href="/get-help"
                  className="text-muted-foreground hover:text-foreground"
                >
                  Get Help
                </Link>
              </li>
              <li>
                <Link
                  href="/know-your-rights"
                  className="text-muted-foreground hover:text-foreground"
                >
                  Know Your Rights
                </Link>
              </li>
              <li>
                <Link
                  href="/glossary"
                  className="text-muted-foreground hover:text-foreground"
                >
                  Glossary
                </Link>
              </li>
              <li>
                <Link
                  href="/community"
                  className="text-muted-foreground hover:text-foreground"
                >
                  Community
                </Link>
              </li>
              <li>
                <Link
                  href="/about"
                  className="text-muted-foreground hover:text-foreground"
                >
                  About
                </Link>
              </li>
              <li>
                <Link
                  href="/submit-agency"
                  className="text-muted-foreground hover:text-foreground"
                >
                  Add Your Agency
                </Link>
              </li>
              <li>
                <Link
                  href="/contact"
                  className="text-muted-foreground hover:text-foreground"
                >
                  Contact
                </Link>
              </li>
            </ul>
          </div>
        </div>
        <div className="mt-8 border-t border-border pt-6 text-center text-sm text-muted-foreground">
          <p>
            Kindway is an independent community resource and is not affiliated
            with, endorsed by, or connected to any Regional Center, the
            California Department of Developmental Services, or any government
            agency. Information provided is for educational purposes only and
            does not constitute professional advice. Always verify information
            directly with providers.
          </p>
        </div>
      </div>
    </footer>
  );
}

import Link from "next/link";
import { ArrowLeft } from "lucide-react";
import { cn } from "@/lib/utils";

interface PageHeaderProps {
  title: string;
  description?: string;
  /** When provided, renders a back-arrow link to this href */
  backHref?: string;
  /** Accessible label for the back link (defaults to "Go back") */
  backLabel?: string;
  className?: string;
}

function PageHeader({
  title,
  description,
  backHref,
  backLabel = "Go back",
  className,
}: PageHeaderProps) {
  return (
    <header className={cn("flex flex-col gap-2 pb-6", className)}>
      {backHref && (
        <Link
          href={backHref}
          className="inline-flex items-center gap-1.5 text-sm font-medium text-muted-foreground transition-colors hover:text-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2 rounded-lg w-fit -ml-1 px-1 py-1"
          aria-label={backLabel}
        >
          <ArrowLeft className="h-4 w-4" aria-hidden="true" />
          <span>Back</span>
        </Link>
      )}

      <div className="flex flex-col gap-1">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          {title}
        </h1>
        {description && (
          <p className="text-lg text-muted-foreground">{description}</p>
        )}
      </div>
    </header>
  );
}

export { PageHeader, type PageHeaderProps };

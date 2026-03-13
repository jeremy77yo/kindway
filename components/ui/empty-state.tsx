import { type ReactNode } from "react";
import { cn } from "@/lib/utils";

interface EmptyStateProps {
  /** Lucide icon or any React node rendered above the title */
  icon?: ReactNode;
  title: string;
  description?: string;
  /** Optional action element (e.g. a Button) rendered below the description */
  action?: ReactNode;
  className?: string;
}

function EmptyState({
  icon,
  title,
  description,
  action,
  className,
}: EmptyStateProps) {
  return (
    <div
      role="status"
      className={cn(
        "flex flex-col items-center justify-center gap-4 px-6 py-16 text-center",
        className
      )}
    >
      {icon && (
        <div
          className="flex h-16 w-16 items-center justify-center rounded-full bg-muted text-muted-foreground"
          aria-hidden="true"
        >
          {icon}
        </div>
      )}

      <div className="flex flex-col gap-1.5">
        <h2 className="text-xl font-semibold text-foreground">{title}</h2>
        {description && (
          <p className="max-w-md text-base text-muted-foreground">
            {description}
          </p>
        )}
      </div>

      {action && <div className="mt-2">{action}</div>}
    </div>
  );
}

export { EmptyState, type EmptyStateProps };

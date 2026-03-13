import { forwardRef, type InputHTMLAttributes } from "react";
import { cn } from "@/lib/utils";

interface InputProps extends InputHTMLAttributes<HTMLInputElement> {
  /** Visible label text rendered above the input */
  label?: string;
  /** Error message displayed below the input */
  error?: string;
  /** Additional description rendered between label and input */
  hint?: string;
}

const Input = forwardRef<HTMLInputElement, InputProps>(
  ({ className, label, error, hint, id, type = "text", ...props }, ref) => {
    const inputId = id || (label ? label.toLowerCase().replace(/\s+/g, "-") : undefined);

    return (
      <div className="flex flex-col gap-1.5">
        {label && (
          <label
            htmlFor={inputId}
            className="text-sm font-semibold text-foreground"
          >
            {label}
          </label>
        )}

        {hint && (
          <p
            id={inputId ? `${inputId}-hint` : undefined}
            className="text-sm text-muted-foreground"
          >
            {hint}
          </p>
        )}

        <input
          ref={ref}
          id={inputId}
          type={type}
          aria-invalid={error ? true : undefined}
          aria-describedby={
            [
              hint && inputId ? `${inputId}-hint` : null,
              error && inputId ? `${inputId}-error` : null,
            ]
              .filter(Boolean)
              .join(" ") || undefined
          }
          className={cn(
            "h-12 w-full rounded-xl border-2 bg-white px-4 text-base transition-colors placeholder:text-muted-foreground focus:outline-none",
            error
              ? "border-destructive focus:border-destructive focus:ring-2 focus:ring-destructive/30"
              : "border-border focus:border-primary focus:ring-2 focus:ring-primary/30",
            "disabled:cursor-not-allowed disabled:opacity-50",
            className
          )}
          {...props}
        />

        {error && (
          <p
            id={inputId ? `${inputId}-error` : undefined}
            role="alert"
            className="text-sm font-medium text-destructive"
          >
            {error}
          </p>
        )}
      </div>
    );
  }
);
Input.displayName = "Input";

export { Input, type InputProps };

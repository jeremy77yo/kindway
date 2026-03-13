import { type HTMLAttributes } from "react";
import { cn } from "@/lib/utils";

interface BadgeProps extends HTMLAttributes<HTMLSpanElement> {
  variant?: "default" | "primary" | "secondary" | "accent" | "success" | "warning";
  size?: "sm" | "md";
}

function Badge({
  className,
  variant = "default",
  size = "md",
  ...props
}: BadgeProps) {
  return (
    <span
      className={cn(
        "inline-flex items-center font-medium rounded-full whitespace-nowrap",
        {
          "bg-muted text-muted-foreground": variant === "default",
          "bg-primary-light text-primary-dark": variant === "primary",
          "bg-secondary-light text-secondary": variant === "secondary",
          "bg-accent-light text-accent": variant === "accent",
          "bg-green-100 text-success": variant === "success",
          "bg-amber-100 text-warning": variant === "warning",
        },
        {
          "px-2 py-0.5 text-xs": size === "sm",
          "px-3 py-1 text-sm": size === "md",
        },
        className
      )}
      {...props}
    />
  );
}

export { Badge, type BadgeProps };

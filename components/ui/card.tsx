import { forwardRef, type HTMLAttributes } from "react";
import { cn } from "@/lib/utils";

/* -------------------------------------------------------------------------- */
/*  Card                                                                       */
/* -------------------------------------------------------------------------- */

interface CardProps extends HTMLAttributes<HTMLElement> {
  variant?: "default" | "outlined" | "interactive";
  /** Renders as <article> when true (default), <section> otherwise */
  as?: "article" | "section";
}

const Card = forwardRef<HTMLElement, CardProps>(
  (
    { className, variant = "default", as: Tag = "article", children, ...props },
    ref
  ) => {
    return (
      <Tag
        ref={ref as React.Ref<HTMLElement>}
        className={cn(
          "rounded-xl",
          {
            "bg-white shadow-sm": variant === "default",
            "border-2 border-border bg-white": variant === "outlined",
            "bg-white shadow-sm transition-shadow hover:shadow-md cursor-pointer focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2":
              variant === "interactive",
          },
          className
        )}
        tabIndex={variant === "interactive" ? 0 : undefined}
        {...props}
      >
        {children}
      </Tag>
    );
  }
);
Card.displayName = "Card";

/* -------------------------------------------------------------------------- */
/*  Card Header                                                                */
/* -------------------------------------------------------------------------- */

interface CardHeaderProps extends HTMLAttributes<HTMLDivElement> {}

const CardHeader = forwardRef<HTMLDivElement, CardHeaderProps>(
  ({ className, ...props }, ref) => {
    return (
      <div
        ref={ref}
        className={cn("border-b border-border px-6 py-4", className)}
        {...props}
      />
    );
  }
);
CardHeader.displayName = "CardHeader";

/* -------------------------------------------------------------------------- */
/*  Card Content                                                               */
/* -------------------------------------------------------------------------- */

interface CardContentProps extends HTMLAttributes<HTMLDivElement> {}

const CardContent = forwardRef<HTMLDivElement, CardContentProps>(
  ({ className, ...props }, ref) => {
    return <div ref={ref} className={cn("px-6 py-4", className)} {...props} />;
  }
);
CardContent.displayName = "CardContent";

/* -------------------------------------------------------------------------- */
/*  Card Footer                                                                */
/* -------------------------------------------------------------------------- */

interface CardFooterProps extends HTMLAttributes<HTMLDivElement> {}

const CardFooter = forwardRef<HTMLDivElement, CardFooterProps>(
  ({ className, ...props }, ref) => {
    return (
      <div
        ref={ref}
        className={cn(
          "border-t border-border px-6 py-4 flex items-center",
          className
        )}
        {...props}
      />
    );
  }
);
CardFooter.displayName = "CardFooter";

export {
  Card,
  CardHeader,
  CardContent,
  CardFooter,
  type CardProps,
  type CardHeaderProps,
  type CardContentProps,
  type CardFooterProps,
};

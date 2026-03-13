"use client";

import { useEffect, useRef, type ReactNode } from "react";
import { X } from "lucide-react";
import { cn } from "@/lib/utils";

interface FilterDrawerProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  title?: string;
  children: ReactNode;
  className?: string;
}

function FilterDrawer({
  open,
  onOpenChange,
  title = "Filters",
  children,
  className,
}: FilterDrawerProps) {
  const dialogRef = useRef<HTMLDialogElement>(null);
  const panelRef = useRef<HTMLDivElement>(null);

  /* Sync the dialog open/close state with the `open` prop */
  useEffect(() => {
    const dialog = dialogRef.current;
    if (!dialog) return;

    if (open) {
      dialog.showModal();
    } else {
      dialog.close();
    }
  }, [open]);

  /* Close when user presses Escape (native dialog behaviour) */
  useEffect(() => {
    const dialog = dialogRef.current;
    if (!dialog) return;

    function handleCancel(e: Event) {
      e.preventDefault();
      onOpenChange(false);
    }

    dialog.addEventListener("cancel", handleCancel);
    return () => dialog.removeEventListener("cancel", handleCancel);
  }, [onOpenChange]);

  /* Close when clicking the backdrop */
  function handleBackdropClick(e: React.MouseEvent) {
    if (panelRef.current && !panelRef.current.contains(e.target as Node)) {
      onOpenChange(false);
    }
  }

  return (
    <dialog
      ref={dialogRef}
      aria-label={title}
      className={cn(
        /* Reset default dialog styles */
        "fixed inset-0 z-50 m-0 h-full w-full max-h-full max-w-full border-none bg-transparent p-0",
        /* Backdrop */
        "backdrop:bg-black/40",
        className
      )}
      onClick={handleBackdropClick}
    >
      <div
        ref={panelRef}
        className={cn(
          "fixed inset-x-0 bottom-0 z-50 flex max-h-[85vh] flex-col rounded-t-2xl bg-white shadow-lg",
          /* Slide-up animation */
          "animate-[slide-up_0.3s_ease-out]",
          "[&:is(dialog[open]_*)]:animate-[slide-up_0.3s_ease-out]"
        )}
        role="document"
      >
        {/* Header */}
        <div className="flex items-center justify-between border-b border-border px-6 py-4">
          <h2 className="text-lg font-semibold text-foreground">{title}</h2>
          <button
            type="button"
            onClick={() => onOpenChange(false)}
            className="inline-flex h-10 w-10 items-center justify-center rounded-full transition-colors hover:bg-muted focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2"
            aria-label="Close filters"
          >
            <X className="h-5 w-5 text-muted-foreground" aria-hidden="true" />
          </button>
        </div>

        {/* Body */}
        <div className="flex-1 overflow-y-auto px-6 py-4">{children}</div>
      </div>
    </dialog>
  );
}

export { FilterDrawer, type FilterDrawerProps };

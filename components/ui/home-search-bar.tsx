"use client";

import { useState, type FormEvent } from "react";
import { useRouter } from "next/navigation";
import { Search } from "lucide-react";

export function HomeSearchBar() {
  const router = useRouter();
  const [value, setValue] = useState("");

  function handleSubmit(e: FormEvent) {
    e.preventDefault();
    const trimmed = value.trim();
    if (trimmed) {
      router.push(`/providers?q=${encodeURIComponent(trimmed)}`);
    } else {
      router.push("/providers");
    }
  }

  return (
    <form onSubmit={handleSubmit} className="mx-auto max-w-xl">
      <div className="relative">
        <Search
          className="absolute left-4 top-1/2 h-5 w-5 -translate-y-1/2 text-muted-foreground"
          aria-hidden="true"
        />
        <input
          type="search"
          value={value}
          onChange={(e) => setValue(e.target.value)}
          placeholder="Search for services or providers..."
          className="h-14 w-full rounded-2xl border-2 border-border bg-white pl-12 pr-5 text-base shadow-sm transition-all placeholder:text-muted-foreground hover:border-primary hover:shadow-md focus:border-primary focus:shadow-md focus:outline-none"
          aria-label="Search for services or providers"
        />
      </div>
    </form>
  );
}

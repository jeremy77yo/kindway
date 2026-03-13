import { Metadata } from "next";
import { Mail, MessageSquare } from "lucide-react";
import { ContactForm } from "./contact-form";

export const metadata: Metadata = {
  title: "Contact",
  description:
    "Get in touch with the Kindway team. Send us questions, feedback, or provider update requests.",
};

export default function ContactPage() {
  return (
    <div className="mx-auto max-w-3xl px-4 py-8">
      <div className="mb-8">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          Contact Us
        </h1>
        <p className="mt-2 text-lg text-muted-foreground">
          Have a question, feedback, or need help? We&apos;d love to hear from
          you.
        </p>
      </div>

      {/* Contact Options */}
      <div className="mb-10 grid gap-4 sm:grid-cols-2">
        <div className="rounded-2xl border border-border bg-white p-5">
          <div className="mb-3 flex h-10 w-10 items-center justify-center rounded-xl bg-primary-light text-primary">
            <Mail className="h-5 w-5" aria-hidden="true" />
          </div>
          <h2 className="font-semibold text-foreground">Email Us</h2>
          <p className="mt-1 text-sm text-muted-foreground">
            For general inquiries or provider updates
          </p>
          <a
            href="mailto:hello@kindway.org"
            className="mt-3 inline-block text-sm font-medium text-primary hover:underline"
          >
            hello@kindway.org
          </a>
        </div>
        <div className="rounded-2xl border border-border bg-white p-5">
          <div className="mb-3 flex h-10 w-10 items-center justify-center rounded-xl bg-primary-light text-primary">
            <MessageSquare className="h-5 w-5" aria-hidden="true" />
          </div>
          <h2 className="font-semibold text-foreground">Send a Message</h2>
          <p className="mt-1 text-sm text-muted-foreground">
            Use the form below and we&apos;ll get back to you soon
          </p>
        </div>
      </div>

      {/* Contact Form */}
      <div className="rounded-2xl border border-border bg-white p-6">
        <h2 className="mb-6 text-xl font-semibold text-foreground">
          Send Us a Message
        </h2>
        <ContactForm />
      </div>
    </div>
  );
}

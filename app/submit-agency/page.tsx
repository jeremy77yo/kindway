import { Metadata } from "next";
import { SubmitAgencyForm } from "./submit-agency-form";

export const metadata: Metadata = {
  title: "Add Your Agency",
  description:
    "Submit your agency to be listed on Kindway so families can find your services.",
};

export default function SubmitAgencyPage() {
  return (
    <div className="mx-auto max-w-3xl px-4 py-8">
      <div className="mb-8">
        <h1 className="text-3xl font-bold tracking-tight text-foreground">
          Add Your Agency
        </h1>
        <p className="mt-2 text-lg text-muted-foreground">
          Are you a service provider in the Bay Area? Submit your agency to be
          listed on Kindway so families and caregivers can find you.
        </p>
      </div>

      <div className="mb-8 rounded-2xl border-2 border-yellow-400 bg-yellow-50 p-6">
        <h2 className="mb-2 text-sm font-semibold text-foreground">
          Before You Submit
        </h2>
        <div className="space-y-2 text-sm text-muted-foreground">
          <p>
            Submissions are reviewed before being listed. Kindway is not
            affiliated with any Regional Center or government agency.
          </p>
          <p>
            Please provide accurate information. Your listing will be reviewed
            and published within 48 hours if it meets our guidelines.
          </p>
        </div>
      </div>

      <SubmitAgencyForm />
    </div>
  );
}

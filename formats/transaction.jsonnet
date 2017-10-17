(import "shared/default_format.jsonnet") + {
  document_type: "transaction",
  definitions: {
    details: {
      type: "object",
      additionalProperties: false,
      properties: {
        introductory_paragraph: {
          "$ref": "#/definitions/body_html_and_govspeak",
        },
        will_continue_on: {
          "$ref": "#/definitions/will_continue_on",
        },
        transaction_start_link: {
          description: "Link the Start button will lead the user to.",
          type: "string",
          format: "uri",
        },
        more_information: {
          "$ref": "#/definitions/body_html_and_govspeak",
        },
        other_ways_to_apply: {
          "$ref": "#/definitions/body_html_and_govspeak",
        },
        what_you_need_to_know: {
          "$ref": "#/definitions/body_html_and_govspeak",
        },
        external_related_links: {
          "$ref": "#/definitions/external_related_links",
        },
        department_analytics_profile: {
          "$ref": "#/definitions/department_analytics_profile",
        },
        downtime_message: {
          description: "Text of the message alerting the user of service downtime",
          type: "string",
        },
        start_button_text: {
          "$ref": "#/definitions/start_button_text",
        }
      },
    },
  },
}

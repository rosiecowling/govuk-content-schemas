(import "shared/default_format.jsonnet") + {
  document_type: [
    "press_release",
    "news_story",
    "government_response",
    "world_news_story",
  ],
  definitions: (import "shared/definitions/_whitehall.jsonnet") + {
    details: {
      type: "object",
      additionalProperties: false,
      required: [
        "body",
        "government",
        "political",
      ],
      properties: {
        body: {
          "$ref": "#/definitions/body",
        },
        image: {
          "$ref": "#/definitions/image",
        },
        first_public_at: {
          "$ref": "#/definitions/first_public_at",
        },
        change_history: {
          "$ref": "#/definitions/change_history",
        },
        tags: {
          "$ref": "#/definitions/tags",
        },
        emphasised_organisations: {
          "$ref": "#/definitions/emphasised_organisations",
        },
        government: {
          "$ref": "#/definitions/government",
        },
        political: {
          "$ref": "#/definitions/political",
        },
      },
    },
  },
  links: (import "shared/base_links.jsonnet") + {
    related_policies: "",
    ministers: "",
    topical_events: "The topical events this content item relates to.",
    world_locations: "The world locations this content item is about.",
    worldwide_organisations: "The worldwide organisations associated with this content item.",
    roles: "Used to power Email Alert Api subscriptions for Whitehall content",
    people: "Used to power Email Alert Api subscriptions for Whitehall content",
  },
  edition_links: (import "shared/base_edition_links.jsonnet") + {
    topical_events: "The topical events this content item relates to.",
    world_locations: "The world locations this content item is about.",
    worldwide_organisations: "The worldwide organisations associated with this content item.",
    organisations: "All organisations linked to this content item. This should include lead organisations.",
    primary_publishing_organisation: {
      description: "The organisation that published the page. Corresponds to the first of the 'Lead organisations' in Whitehall, and is empty for all other publishing applications.",
      maxItems: 1,
    }
  }
}

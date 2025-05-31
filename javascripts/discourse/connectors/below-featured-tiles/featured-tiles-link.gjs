import Component from "@ember/component";
import { classNames } from "@ember-decorators/component";
import icon from "discourse/helpers/d-icon";

@classNames("below-featured-tiles-outlet", "featured-tiles-link")
export default class FeaturedTilesLink extends Component {
  <template>
    {{#if settings.show_link}}
      <a href={{settings.url}}>
        {{#if settings.prefixed_icon}}
          {{icon settings.prefixed_icon}}
        {{/if}}
        {{settings.text}}
      </a>
    {{/if}}
  </template>
}

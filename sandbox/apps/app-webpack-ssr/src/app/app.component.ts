import { Component, ViewEncapsulation } from '@angular/core';
import { RouterModule } from '@angular/router';
import { NxWelcomeComponent } from './nx-welcome.component';

@Component({
  standalone: true,
  imports: [NxWelcomeComponent, RouterModule],
  selector: 'lego-root',
  template: `<lego-nx-welcome></lego-nx-welcome>
    <router-outlet></router-outlet>`,
  styles: ``,
  encapsulation: ViewEncapsulation.ShadowDom,
})
export class AppComponent {
  title = 'app-webpack-ssr';
}

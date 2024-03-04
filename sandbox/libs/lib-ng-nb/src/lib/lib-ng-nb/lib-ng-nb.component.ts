import {
  ChangeDetectionStrategy,
  Component,
  ViewEncapsulation,
} from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'lego-lib-ng-nb',
  standalone: true,
  imports: [CommonModule],
  template: `<p>lib-ng-nb works!</p>`,
  styles: ``,
  encapsulation: ViewEncapsulation.ShadowDom,
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class LibNgNbComponent {}

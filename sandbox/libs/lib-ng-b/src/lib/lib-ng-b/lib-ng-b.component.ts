import {
  ChangeDetectionStrategy,
  Component,
  ViewEncapsulation,
} from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'lego-lib-ng-b',
  standalone: true,
  imports: [CommonModule],
  template: `<p>lib-ng-b works!</p>`,
  styles: ``,
  encapsulation: ViewEncapsulation.ShadowDom,
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class LibNgBComponent {}

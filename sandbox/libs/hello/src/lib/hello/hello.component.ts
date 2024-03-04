import {
  ChangeDetectionStrategy,
  Component,
  ViewEncapsulation,
} from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'lego-hello',
  standalone: true,
  imports: [CommonModule],
  template: `<p>hello works!</p>`,
  styles: ``,
  encapsulation: ViewEncapsulation.ShadowDom,
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class HelloComponent {}

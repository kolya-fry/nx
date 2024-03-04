import { ComponentFixture, TestBed } from '@angular/core/testing';
import { LibNgBComponent } from './lib-ng-b.component';

describe('LibNgBComponent', () => {
  let component: LibNgBComponent;
  let fixture: ComponentFixture<LibNgBComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [LibNgBComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(LibNgBComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

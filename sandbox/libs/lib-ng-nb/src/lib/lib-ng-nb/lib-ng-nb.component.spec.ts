import { ComponentFixture, TestBed } from '@angular/core/testing';
import { LibNgNbComponent } from './lib-ng-nb.component';

describe('LibNgNbComponent', () => {
  let component: LibNgNbComponent;
  let fixture: ComponentFixture<LibNgNbComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [LibNgNbComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(LibNgNbComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

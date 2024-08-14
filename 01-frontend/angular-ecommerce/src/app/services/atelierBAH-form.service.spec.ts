import { TestBed } from '@angular/core/testing';

import { AtelierBAHFormService } from './atelierBAH-form.service';

describe('AtelierBAHFormService', () => {
  let service: AtelierBAHFormService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(AtelierBAHFormService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});

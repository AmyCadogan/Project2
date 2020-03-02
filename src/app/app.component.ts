import { Component } from '@angular/core';

@Component({
  selector: 'table-basic',
  styleUrls: ['app.component.css'],
  templateUrl: 'app.component.html',
})

export interface PeriodicElement {
  name: string;
  position: number;
  weight: number;
  symbol: string;
}

const TDATA: PeriodicElement[] = [];

export class {
  displayedColumns: string[] = ['position', 'name', 'weight', 'symbol'];
  dataSource = TDATA;
}

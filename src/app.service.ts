import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello world!';
  }

  getFibonacci(index: number): number {
    let previous = 1;
    let current = 1;
    for (let i = 3; i <= index; i++) {
      current += previous;
      previous = current - previous;
    }
    return current;
  }
}

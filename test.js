const request = require('supertest');
const app = require('./app'); // Importa o app corretamente

test('GET / retorna Hello, CI/CD!', async () => {
  const response = await request(app).get('/');
  expect(response.statusCode).toBe(200);
  expect(response.text).toBe('Hello, CI/CD!');
});

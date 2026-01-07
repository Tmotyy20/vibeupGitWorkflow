/**
 * Application Configuration
 * 
 * Exercice 5 : Modifie la ligne 10 (APP_NAME)
 * Un conflit sera créé pour tester la résolution
 */

const config = {
  // Ligne à modifier pour créer un conflit
  APP_NAME: 'MyApp',
  VERSION: '1.0.0',
  
  // Database
  DB_HOST: 'localhost',
  DB_PORT: 5432,
  
  // API
  API_URL: 'https://api.example.com',
  API_TIMEOUT: 5000
};

module.exports = config;

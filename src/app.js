/**
 * Main Application
 */

const config = require('./config');

function main() {
  console.log(`Starting ${config.APP_NAME} v${config.VERSION}`);
}

module.exports = { main };

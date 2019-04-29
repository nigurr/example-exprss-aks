module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  "reporters": [
    "default",
    ["jest-junit", { "outputDirectory": "./reports" }]
  ],
  "coverageReporters": [
    "cobertura"
  ],
  "coverageDirectory": "./reports"
};
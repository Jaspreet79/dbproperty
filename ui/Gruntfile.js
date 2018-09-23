// Package.json
// https://docs.npmjs.com/files/package.json
'use strict';

var LIVERELOAD_PORT = Math.floor(Math.random() * (65535 - 35729 + 1)) + 35729; // Generates a random port between 35729 and 65535
var path = require('path');

module.exports = function (grunt) {
    require('time-grunt')(grunt);

    // Loading Common Configuration
    require('load-grunt-config')(grunt, {
        configPath: path.join(process.cwd(), 'node_modules/@hcm/hcm-ui-build/grunt'),
        init: true,
        data: {
            test: false,
            project: {
                module: 'hcm-property-management-ui',
                live_reload_port: LIVERELOAD_PORT,
                mock_api_context_root: 'properties',
                live_api_local_context: grunt.option('live-api-local-context') || '/dist/v1',
                live_api_remote_context: grunt.option('live-api-remote-context') || '/properties'
            }
        },
        mergeFunction: require('recursive-merge'),
        loadGruntTasks: {
            pattern: 'grunt-*'
        }
    });

    // Project Configuration Overrides
    // hone doesn't like to be ran through wiredep concat and mangle.
    grunt.config.merge({
        wiredep: {
            build: {
                exclude: [
                    'chai',
                    'mocha',
                    'hone',
                    'angular-ui-tour'
                ]
            }
        }
    });

    // Loading Plugins
    grunt.registerTask('build', 'Main build task', [
        'validate',
        'jsbeautifier',
        'copy:build',
        'string-replace:translations',
        'ngtemplates:build',
        'less:build',
        'concat:build',
        'wiredep:build'
    ]);
};

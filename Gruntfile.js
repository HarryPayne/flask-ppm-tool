module.exports = function(grunt){
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		concat: {
		    javascript: {
		        src: ["server/app/static/app.js",
		              "server/app/static/app.config.js",
		              "server/app/static/app.controller.js",
		              "server/app/static/app.run.js",
		              "server/app/static/attributes/*.js",
		              "server/app/static/browse/*.js",
		              "server/app/static/comment/*.js",
		              "server/app/static/curate/*.js",
		              "server/app/static/filter/*.js",
		              "server/app/static/header/*.js",
		              "server/app/static/login/*.js",
		              "server/app/static/loginInjector/*.js",
		              "server/app/static/manage/*.js",
		              "server/app/static/modalConfirm/*.js",
		              "server/app/static/project/*.js",
		              "server/app/static/select/*.js",
		              "server/app/static/stateLocation/*.js",
		              "server/app/static/title/*.js"
		              ],
		        dest: "server/app/static/min/<%= pkg.name %>.concat.js"
		    },
		    css: {
		        src: ["static/vendor/jquery-ui/jquery-ui.min.css",
		              "static/vendor/bootstrap/dist/css/bootstrap.min.css",
		              "static/vendor/angular-readmore-master/css/style.css",
		              "server/app/static/*.css",
		              "server/app/static/attributes/*.css",
		              "server/app/static/browse/*.css",
		              "server/app/static/comment/*.css",
		              "server/app/static/curate/*.css",
		              "server/app/static/filter/*.css",
		              "server/app/static/header/*.css",
		              "server/app/static/login/*.css",
		              "server/app/static/manage/*.css",
		              "server/app/static/modalConfirm/*.css",
		              "server/app/static/project/*.css",
		              "server/app/static/select/*.css",
		              "server/app/static/stateLocation/*.css",
		              "server/app/static/title/*.css"
		              ],
		        dest: "server/app/static/min/<%= pkg.name %>.concat.css"
		    }
		},
		ngAnnotate: {
		    options: {
		        add: true,
		        remove: true,
		        singleQuotes: true
		    },
		    ppt: {
                files: {
                    'server/app/static/min/<%= pkg.name %>.annotated.js':
                        ['<%= concat.javascript.dest %>']
                }
		    }
		},
		uglify: {
		    javascript: {
		        options: {
		            banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n',
		            //mangle: false
		        },
		        files: {
		            "server/app/static/min/<%= pkg.name %>.min.js":
		                ['server/app/static/min/<%= pkg.name %>.annotated.js']
		        }
		    }
		},
		cssmin: {
            options: {
                shorthandCompacting: false,
                roundingPrecision: -1
            },
            target: {
                files: {
                    "server/app/static/min/<%= pkg.name %>.min.css": [
                        "server/app/static/vendor/jquery-ui/jquery-ui.min.css",
                        "server/app/static/vendor/bootstrap/dist/css/bootstrap.min.css",
                        "server/app/static/vendor/angular-readmore-master/css/style.css",
                        "server/app/static/*.css",
                        "server/app/static/attributes/*.css",
                        "server/app/static/browse/*.css",
                        "server/app/static/comment/*.css",
                        "server/app/static/curate/*.css",
                        "server/app/static/filter/*.css",
                        "server/app/static/header/*.css",
                        "server/app/static/login/*.css",
                        "server/app/static/manage/*.css",
                        "server/app/static/modalConfirm/*.css",
                        "server/app/static/project/*.css",
                        "server/app/static/select/*.css",
                        "server/app/static/stateLocation/*.css",
                        "server/app/static/title/*.css"
                    ]
                }
            }
		}
	});

	grunt.loadNpmTasks('grunt-contrib-concat');
	grunt.loadNpmTasks('grunt-contrib-jshint');
	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-cssmin');
	grunt.loadNpmTasks('grunt-ng-annotate');

	grunt.registerTask('default', ["concat", "ngAnnotate", "uglify", "cssmin"]);
};

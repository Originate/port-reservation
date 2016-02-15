require! \gulp
require! \gulp-exit
require! \gulp-mocha
{instrument, hook-require, write-reports} = (require \gulp-livescript-istanbul)!

gulp.task \coverage, ->
    gulp.src <[ dist/*.js ]>
        .pipe instrument!
        .pipe hook-require!

    gulp.src <[ ./spec/port-reservation-spec.ls ]>
        .pipe gulp-mocha!
        .pipe write-reports!
        .on \finish, -> process.exit!

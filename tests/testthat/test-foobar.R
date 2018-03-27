context('Testing foobar')

test_that('something', {
    expect_identical(1L, 1L);
    expect_true(T);
});


if (Sys.getenv('TRAVIS') == 'true' && Sys.getenv('CI') == 'true') {

} else {
    
}


context("Testing as-symbol.R")



test_that('as_symbol_from_symbol()', {
	expect_identical(as_symbol_from_symbol(c('ANKLE2', 'A1BG', '-1')), c('ANKLE2', 'A1BG', NA));
});

test_that('as_symbol_from_entrez()', {
	expect_identical(as_symbol_from_entrez(c('503538', '144568', '-1')), c('A1BG-AS1', 'A2ML1', NA));
});

test_that('as_symbol_from_genebank()', {
	expect_identical(as_symbol_from_genebank(c('BX647329', 'AY005822', '-1')), c('A2M', 'ACOT2', NA));
});

test_that('as_symbol_from_genebank() ignores transcript id', {
	expect_identical(as_symbol_from_genebank('AK056168.1'), 'SPATA33');
});

test_that('as_symbol_from_unigene()', {
	expect_identical(as_symbol_from_unigene(c('41', 'Hs.96', '-1')), c('CEACAM8', 'PMAIP1', NA));
});

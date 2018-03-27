context("Testing data")





test_that('as_symbol_from_symbol()', {
	expect_identical(as_symbol_from_symbol(c('ANKLE2', 'A1BG', '-1')), c('ANKLE2', 'A1BG', NA));

# assertthat::assert_that(
# 	hugo_symbol %>% {.[!stringr::str_detect(., '^[-@\\w]+')]} %>% libzhuoer::print_or_T(),
# 	entrez2symbol$entrez %>% {.[!stringr::str_detect(., '^\\d+$')]} %>% libzhuoer::print_or_T(),
# 	genebank2symbol$genebank  %>% {.[!stringr::str_detect(., '^[\\w\\d\\.]+$')]} %>% libzhuoer::print_or_T(),
# 	#ids$unigene %>% {.[!stringr::str_detect(., '^Hs\\.\\d+$')]} %>% libzhuoer::print_or_T(),
# 	msg = 'some elements of certain id contains multiple values'
# ) -> dev.null



	# lapply(maps, . %>% dplyr::group_by_at(2) %>% dplyr::summarise(n = dplyr::n()) %>% filter(n > 1L) %>% {if (nrow(.) == 0L) T else print(.)} %>% assertthat::assert_that(msg = 'a single id mapped to multiple symbols')) -> dev.null

# lapply(names(maps), . %>% {message('The coverage of ', str_pad(., 8, 'r'), ' is ', length(unique(maps[[.]]$symbol)) / length(hgnc$symbol))}) -> dev.null

});

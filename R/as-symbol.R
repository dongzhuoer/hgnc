

#' @export
as_symbol_from_symbol <- function(symbol) {
	hgnc::hugo_symbol[match(symbol, hgnc::hugo_symbol)]
}

#' @export
as_symbol_from_entrez <- function(entrez) {
	map <- hgnc::entrez2symbol;
	map$symbol[match(entrez, map$entrez)]
}

#' @export
as_symbol_from_genebank <- function(genebank) {
	genebank %<>% stringr::str_remove('\\.\\d+$');
	map <- hgnc::genebank2symbol;
	map$symbol[match(genebank, map$genebank)]
}

#' @export
as_symbol_from_entrez_or_symbol <- function(entrez_or_symbol) {
	is_symbol <- stringr::str_detect(entrez_or_symbol, '[^\\d]');
	result <- character(length(entrez_or_symbol));

	result[is_symbol]  = as_symbol_from_symbol(entrez_or_symbol[is_symbol]);
	result[!is_symbol] = as_symbol_from_entrez(entrez_or_symbol[!is_symbol]);

	result
}

#' @export
as_symbol_from_unigene <- function(unigene) {
	unigene %<>% stringr::str_replace('^\\d', 'Hs.\\0'); #" add Hs. if necessary

	map <- hgnc::unigene2entrez;
	map$entrez[match(unigene, map$unigene)] %>% as_symbol_from_entrez
}

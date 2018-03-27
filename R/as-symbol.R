

map_1_to_2 <- function(id, map) {
	map[[2]][match(id, map[[1]])]
}

#' @export
as_symbol_from_symbol <- function(symbol) {
	hgnc::hugo_symbol[match(symbol, hgnc::hugo_symbol)]
}

#' @export
as_symbol_from_entrez <- function(entrez) {
	map_1_to_2(entrez, hgnc::entrez2symbol)
}

#' @export
as_symbol_from_ensembl <- function(ensembl) {
	map_1_to_2(ensembl, hgnc::ensembl2symbol)
}

# update 'Caution' in readme.md if you edit it
#' @export
as_symbol_from_genbank <- function(genbank) {
	genbank %<>% stringr::str_remove('\\.\\d+$');

	map_1_to_2(genbank, hgnc::genbank2symbol)
}

#' @export
as_symbol_from_entrez_or_symbol <- function(entrez_or_symbol) {
	map_1_to_2(entrez_or_symbol, hgnc::entrez_or_symbol2symbol)
}

#' @export
as_symbol_from_unigene <- function(unigene) {
	unigene %<>% stringr::str_replace('^\\d', 'Hs.\\0'); #" add Hs. if necessary

	map_1_to_2(unigene, hgnc::unigene2entrez) %>% as_symbol_from_entrez
}

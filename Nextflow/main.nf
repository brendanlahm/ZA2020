#!/usr/bin/env nextflow

params.query = "/home/aaxdin/Za17_softmasked_for_publication.fa"

process extractHead {

input:
path query

output:
path 'Head.txt'

script:
"""
head $query > Head.txt
"""
}

workflow {
	ch_query = Channel.of(params.query)
	extractHead(ch_query)
}
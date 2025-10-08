# Script transforms AO-Cat from RDFS to TTL

library(rdflib)

# Read your RDFS file (RDF/XML format)
rdf <- rdf_parse(here::here("aocat/AO-CAT1.2.2.rdfs"), format = "rdfxml")

# Write as Turtle
rdf_serialize(rdf, here::here("aocat/aocat.ttl"), format = "turtle")

# for more details see: http://emberjs.com/guides/models/defining-models/

Return.SearchSuggestion = DS.Model.extend
  term: DS.attr 'string'
  popularity: DS.attr 'number'

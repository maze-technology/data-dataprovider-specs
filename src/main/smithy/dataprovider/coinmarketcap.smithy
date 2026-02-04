$version: "2"
namespace tech.maze.dtos.dataprovider.coinmarketcap.proto

list RankingsResponseRankingsList {
  member: Rankings
}

structure Rankings {
  id: String
  symbol: String
  name: String
  rank: Long
}

structure RankingsResponse {
  rankedBy: String
  rankings: RankingsResponseRankingsList
}

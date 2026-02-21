$version: "2"

namespace tech.maze.dtos.dataprovider.coinmarketcap.proto

list RankingsResponseRankingsList {
    member: Rankings
}

structure Rankings {
    @required
    id: String

    @required
    symbol: String

    @required
    name: String

    @required
    rank: Long
}

structure RankingsResponse {
    @required
    rankedBy: String

    @required
    rankings: RankingsResponseRankingsList
}

$version: "2"

namespace tech.maze.dtos.dataprovider.requests

use smithy.api#Document

list FetchMarketsResponseMessageMarketsList {
    member: FetchMarketsResponseMessageMarket
}

map FetchMarketsResponseMessageMarketMetaDatasExtraDatasMap {
    key: String
    value: String
}

map FetchMarketsResponseMessageMarketMetaDatasToolBoxMap {
    key: String
    value: String
}

structure FetchMarkets {}

structure FetchMarketsRequest {}

structure FetchMarketsResponse {
    skipped: Long
    dataProviderId: Document
    messageKey: String
}

structure FetchMarketsResponseMessage {
    markets: FetchMarketsResponseMessageMarketsList
}

structure FetchMarketsResponseMessageMarket {
    baseAssetCriterion: Document
    quoteAssetCriterion: Document
    type: String
    exchange: String
}

structure FetchMarketsResponseMessageMarketMetaDatas {
    extraDatas: FetchMarketsResponseMessageMarketMetaDatasExtraDatasMap
    toolBox: FetchMarketsResponseMessageMarketMetaDatasToolBoxMap
}

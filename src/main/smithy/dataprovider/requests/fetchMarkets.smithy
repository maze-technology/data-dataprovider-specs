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
    @required
    skipped: Long

    @required
    dataProviderId: Document

    @required
    messageKey: String
}

structure FetchMarketsResponseMessage {
    @required
    markets: FetchMarketsResponseMessageMarketsList
}

structure FetchMarketsResponseMessageMarket {
    @required
    baseAssetCriterion: Document

    @required
    quoteAssetCriterion: Document

    @required
    type: String

    @required
    exchange: String
}

structure FetchMarketsResponseMessageMarketMetaDatas {
    @required
    extraDatas: FetchMarketsResponseMessageMarketMetaDatasExtraDatasMap
    
    @required
    toolBox: FetchMarketsResponseMessageMarketMetaDatasToolBoxMap
}

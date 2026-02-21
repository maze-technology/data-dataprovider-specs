$version: "2"

namespace tech.maze.dtos.dataprovider.requests

use smithy.api#Document
use smithy.api#Timestamp
use tech.maze.dtos.commons.time#Duration

list FetchMarketOHLCVsResponseMessageOhlcvsList {
    member: Document
}

map FetchMarketOHLCVsRequestBaseAssetToolBoxMap {
    key: String
    value: String
}

map FetchMarketOHLCVsRequestQuoteAssetToolBoxMap {
    key: String
    value: String
}

map FetchMarketOHLCVsRequestMarketToolBoxMap {
    key: String
    value: String
}

structure FetchMarketOHLCVs {}

structure FetchMarketOHLCVsRequest {
    @required
    wishedTimeframe: Duration

    @required
    wishedElementsPerReply: Long

    @required
    startAt: Timestamp

    @required
    endAt: Timestamp

    @required
    baseAssetToolBox: FetchMarketOHLCVsRequestBaseAssetToolBoxMap

    @required
    quoteAssetToolBox: FetchMarketOHLCVsRequestQuoteAssetToolBoxMap

    @required
    marketToolBox: FetchMarketOHLCVsRequestMarketToolBoxMap

    @required
    marketType: Document

    @required
    exchange: Document

    @required
    base: Document

    @required
    quote: Document
}

structure FetchMarketOHLCVsResponse {
    @required
    dataProvider: Document

    @required
    timeframe: Duration

    @required
    wishedTimeframe: Duration

    @required
    startAt: Timestamp

    @required
    marketType: Document

    @required
    exchange: Document

    @required
    base: Document

    @required
    quote: Document
}

structure FetchMarketOHLCVsResponseMessage {
    @required
    ohlcvs: FetchMarketOHLCVsResponseMessageOhlcvsList
}

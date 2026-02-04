$version: "2"
namespace tech.maze.dtos.dataprovider.requests

use smithy.api#Document
use smithy.api#Timestamp

list FetchMarketOHLCVsResponseMessageOhlcvsList {
  member: OHLCV
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

structure FetchMarketOHLCVs {
}

structure FetchMarketOHLCVsRequest {
  wishedTimeframe: Duration
  wishedElementsPerReply: Long
  startAt: Timestamp
  endAt: Timestamp
  baseAssetToolBox: FetchMarketOHLCVsRequestBaseAssetToolBoxMap
  quoteAssetToolBox: FetchMarketOHLCVsRequestQuoteAssetToolBoxMap
  marketToolBox: FetchMarketOHLCVsRequestMarketToolBoxMap
  marketType: Document
  exchange: Document
  base: Document
  quote: Document
}

structure FetchMarketOHLCVsResponse {
  dataProvider: Document
  timeframe: Duration
  wishedTimeframe: Duration
  startAt: Timestamp
  marketType: Document
  exchange: Document
  base: Document
  quote: Document
}

structure FetchMarketOHLCVsResponseMessage {
  ohlcvs: FetchMarketOHLCVsResponseMessageOhlcvsList
}

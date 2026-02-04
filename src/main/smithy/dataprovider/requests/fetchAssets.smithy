$version: "2"

namespace tech.maze.dtos.dataprovider.requests

use smithy.api#Document

list FetchAssetsResponseMessageAssetsList {
    member: Asset
}

map FetchAssetsResponseMessageAssetMetaDatasExtraDatasMap {
    key: String
    value: String
}

map FetchAssetsResponseMessageAssetMetaDatasToolBoxMap {
    key: String
    value: String
}

structure FetchAssets {}

structure FetchAssetsRequest {}

structure FetchAssetsResponse {
    skipped: Long
    dataProviderId: Document
    messageKey: String
}

structure FetchAssetsResponseMessage {
    assets: FetchAssetsResponseMessageAssetsList
}

structure FetchAssetsResponseMessageAsset {
    id: String
    symbol: String
    name: String
    primaryClass: PrimaryClass
}

structure FetchAssetsResponseMessageAssetMetaDatas {
    extraDatas: FetchAssetsResponseMessageAssetMetaDatasExtraDatasMap
    toolBox: FetchAssetsResponseMessageAssetMetaDatasToolBoxMap
}

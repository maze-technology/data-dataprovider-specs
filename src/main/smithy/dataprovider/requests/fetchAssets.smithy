$version: "2"

namespace tech.maze.dtos.dataprovider.requests

use smithy.api#Document
use tech.maze.dtos.dataprovider.enums#PrimaryClass

list FetchAssetsResponseMessageAssetsList {
    member: FetchAssetsResponseMessageAsset
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
    @required
    skipped: Long

    @required
    dataProviderId: Document

    @required
    messageKey: String
}

structure FetchAssetsResponseMessage {
    @required
    assets: FetchAssetsResponseMessageAssetsList
}

structure FetchAssetsResponseMessageAsset {
    @required
    id: String

    @required
    symbol: String

    @required
    name: String

    @required
    primaryClass: PrimaryClass
}

structure FetchAssetsResponseMessageAssetMetaDatas {
    @required
    extraDatas: FetchAssetsResponseMessageAssetMetaDatasExtraDatasMap

    @required
    toolBox: FetchAssetsResponseMessageAssetMetaDatasToolBoxMap
}

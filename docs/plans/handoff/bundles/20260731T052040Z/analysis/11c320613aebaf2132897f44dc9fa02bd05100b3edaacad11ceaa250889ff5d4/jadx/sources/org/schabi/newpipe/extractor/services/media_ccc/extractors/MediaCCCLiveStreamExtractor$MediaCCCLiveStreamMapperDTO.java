package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import com.grack.nanojson.JsonObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO {
    public final JsonObject streamJsonObj;
    public final String urlKey;
    public final JsonObject urlValue;

    public MediaCCCLiveStreamExtractor$MediaCCCLiveStreamMapperDTO(JsonObject jsonObject, String str, JsonObject jsonObject2) {
        this.streamJsonObj = jsonObject;
        this.urlKey = str;
        this.urlValue = jsonObject2;
    }
}

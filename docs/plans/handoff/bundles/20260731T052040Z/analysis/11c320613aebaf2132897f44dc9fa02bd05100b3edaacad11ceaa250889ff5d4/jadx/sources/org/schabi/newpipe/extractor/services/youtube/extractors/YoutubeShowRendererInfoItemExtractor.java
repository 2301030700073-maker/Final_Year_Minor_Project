package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonObject;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeShowRendererInfoItemExtractor extends YoutubeBaseShowInfoItemExtractor {
    public final JsonObject longBylineText;
    public final JsonObject shortBylineText;

    public YoutubeShowRendererInfoItemExtractor(JsonObject jsonObject) {
        super(jsonObject);
        this.shortBylineText = jsonObject.getObject("shortBylineText");
        this.longBylineText = jsonObject.getObject("longBylineText");
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final String getUploaderName() {
        String textFromObject = YoutubeParsingHelper.getTextFromObject(this.longBylineText, false);
        if (!Utils.isNullOrEmpty(textFromObject)) {
            return textFromObject;
        }
        String textFromObject2 = YoutubeParsingHelper.getTextFromObject(this.shortBylineText, false);
        if (!Utils.isNullOrEmpty(textFromObject2)) {
            return textFromObject2;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader name");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final String getUploaderUrl() {
        String urlFromObject = YoutubeParsingHelper.getUrlFromObject(this.longBylineText);
        if (urlFromObject != null) {
            return urlFromObject;
        }
        String urlFromObject2 = YoutubeParsingHelper.getUrlFromObject(this.shortBylineText);
        if (urlFromObject2 != null) {
            return urlFromObject2;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get uploader URL");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final boolean isUploaderVerified() {
        return false;
    }
}

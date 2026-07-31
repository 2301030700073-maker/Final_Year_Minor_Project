package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class YoutubeBaseShowInfoItemExtractor implements PlaylistInfoItemExtractor {
    public final JsonObject showRenderer;

    public YoutubeBaseShowInfoItemExtractor(JsonObject jsonObject) {
        this.showRenderer = jsonObject;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final Description getDescription() {
        return Description.EMPTY_DESCRIPTION;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return this.showRenderer.getString("title", null);
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final /* synthetic */ PlaylistInfo.PlaylistType getPlaylistType() {
        return PlaylistInfo.PlaylistType.NORMAL;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final long getStreamCount() {
        String textFromObject = YoutubeParsingHelper.getTextFromObject(this.showRenderer.getObject("thumbnailOverlays").getObject("thumbnailOverlayBottomPanelRenderer").getObject("text"), false);
        if (textFromObject == null) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get stream count");
            return 0L;
        }
        try {
            return Long.parseLong(textFromObject.replaceAll("\\D+", ""));
        } catch (NumberFormatException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not convert stream count to a long", e);
            return 0L;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return YoutubeParsingHelper.getThumbnailsFromInfoItem(this.showRenderer.getObject("thumbnailRenderer").getObject("showCustomThumbnailRenderer"));
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        return YoutubeParsingHelper.getUrlFromNavigationEndpoint(this.showRenderer.getObject("navigationEndpoint"));
    }
}

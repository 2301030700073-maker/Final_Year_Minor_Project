package org.schabi.newpipe.extractor.services.youtube.extractors;

import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeParsingHelper;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class YoutubeMixOrPlaylistLockupInfoItemExtractor implements PlaylistInfoItemExtractor {
    public final JsonObject firstMetadataRow;
    public final JsonObject lockupMetadataViewModel;
    public final JsonObject lockupViewModel;
    public final PlaylistInfo.PlaylistType playlistType;
    public final JsonObject thumbnailViewModel;

    public YoutubeMixOrPlaylistLockupInfoItemExtractor(JsonObject jsonObject) {
        this.lockupViewModel = jsonObject;
        this.thumbnailViewModel = RecordTag.m(jsonObject, "contentImage", "collectionThumbnailViewModel", "primaryThumbnail", "thumbnailViewModel");
        JsonObject object = jsonObject.getObject(TtmlNode.TAG_METADATA).getObject("lockupMetadataViewModel");
        this.lockupMetadataViewModel = object;
        this.firstMetadataRow = object.getObject(TtmlNode.TAG_METADATA).getObject("contentMetadataViewModel").getArray("metadataRows").getObject(0);
        try {
            this.playlistType = YoutubeParsingHelper.extractPlaylistTypeFromPlaylistId(getPlaylistId());
        } catch (ParsingException unused) {
            this.playlistType = PlaylistInfo.PlaylistType.NORMAL;
        }
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final Description getDescription() {
        return Description.EMPTY_DESCRIPTION;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return this.lockupMetadataViewModel.getObject("title").getString("content", null);
    }

    public final String getPlaylistId() {
        JsonObject jsonObject = this.lockupViewModel;
        String string = jsonObject.getString("contentId", null);
        if (Utils.isNullOrEmpty(string)) {
            string = jsonObject.getObject("rendererContext").getObject("commandContext").getObject("watchEndpoint").getString("playlistId", null);
        }
        if (!Utils.isNullOrEmpty(string)) {
            return string;
        }
        Utils$$ExternalSyntheticBUOutline0.m("Could not get playlist ID");
        return null;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final PlaylistInfo.PlaylistType getPlaylistType() {
        return this.playlistType;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final long getStreamCount() {
        if (this.playlistType != PlaylistInfo.PlaylistType.NORMAL) {
            return -2L;
        }
        try {
            return Long.parseLong(Utils.removeNonDigitCharacters(((JsonObject) ((JsonObject) this.thumbnailViewModel.getArray("overlays").streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(27)).findFirst().orElseThrow(new Entities$$ExternalSyntheticLambda0(17))).getObject("thumbnailOverlayBadgeViewModel").getArray("thumbnailBadges").streamAsJsonObjects().filter(new JsonArray$$ExternalSyntheticLambda0(28)).findFirst().orElseThrow(new Entities$$ExternalSyntheticLambda0(18))).getObject("thumbnailBadgeViewModel").getString("text", null)));
        } catch (Exception e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not get playlist stream count", e);
            return 0L;
        }
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return YoutubeParsingHelper.getImagesFromThumbnailsArray(this.thumbnailViewModel.getObject("image").getArray("sources"));
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public String getUploaderName() {
        return this.firstMetadataRow.getArray("metadataParts").getObject(0).getObject("text").getString("content", null);
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public String getUploaderUrl() {
        if (this.playlistType != PlaylistInfo.PlaylistType.NORMAL) {
            return null;
        }
        return YoutubeParsingHelper.getUrlFromNavigationEndpoint(this.firstMetadataRow.getArray("metadataParts").getObject(0).getObject("text").getArray("commandRuns").getObject(0).getObject("onTap").getObject("innertubeCommand"));
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        if (this.playlistType == PlaylistInfo.PlaylistType.NORMAL) {
            try {
                String playlistId = getPlaylistId();
                new ArrayList(0);
                return "https://www.youtube.com/playlist?list=" + playlistId;
            } catch (Exception unused) {
            }
        }
        return YoutubeParsingHelper.getUrlFromNavigationEndpoint(this.lockupViewModel.getObject("rendererContext").getObject("commandContext").getObject("onTap").getObject("innertubeCommand"));
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public boolean isUploaderVerified() {
        if (this.playlistType != PlaylistInfo.PlaylistType.NORMAL) {
            return false;
        }
        JsonArray array = this.firstMetadataRow.getArray("metadataParts").getObject(0).getObject("text").getArray("attachmentRuns");
        String str = YoutubeParsingHelper.clientVersion;
        return array.streamAsJsonObjects().anyMatch(new JsonArray$$ExternalSyntheticLambda0(17));
    }
}

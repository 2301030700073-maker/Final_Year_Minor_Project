package org.schabi.newpipe.extractor.services.peertube.extractors;

import androidx.core.os.BundleKt;
import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubePlaylistInfoItemExtractor implements PlaylistInfoItemExtractor {
    public final String baseUrl;
    public final JsonObject item;
    public final JsonObject uploader;

    public PeertubePlaylistInfoItemExtractor(JsonObject jsonObject, String str) {
        this.item = jsonObject;
        this.uploader = jsonObject.getObject("uploader");
        this.baseUrl = str;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final Description getDescription() {
        String string = this.item.getString("description", null);
        return Utils.isNullOrEmpty(string) ? Description.EMPTY_DESCRIPTION : new Description(string, 3);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return this.item.getString("displayName", null);
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final /* synthetic */ PlaylistInfo.PlaylistType getPlaylistType() {
        return PlaylistInfo.PlaylistType.NORMAL;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final long getStreamCount() {
        return this.item.getInt(0, "videosLength");
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return BundleKt.getThumbnailsFromPlaylistOrVideoItem(this.item, this.baseUrl);
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final String getUploaderName() {
        return this.uploader.getString("displayName", null);
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final String getUploaderUrl() {
        return this.uploader.getString("url", null);
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        return this.item.getString("url", null);
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final boolean isUploaderVerified() {
        return false;
    }
}

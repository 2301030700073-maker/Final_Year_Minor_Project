package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import java.util.List;
import org.jsoup.nodes.Element;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.Description;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampRelatedPlaylistInfoItemExtractor implements PlaylistInfoItemExtractor {
    public final Element relatedAlbum;

    public BandcampRelatedPlaylistInfoItemExtractor(Element element) {
        this.relatedAlbum = element;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final Description getDescription() {
        return Description.EMPTY_DESCRIPTION;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getName() {
        return this.relatedAlbum.getElementsByClass("release-title").text();
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final /* synthetic */ PlaylistInfo.PlaylistType getPlaylistType() {
        return PlaylistInfo.PlaylistType.NORMAL;
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final long getStreamCount() {
        return -1L;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final List getThumbnails() {
        return BandcampExtractorHelper.getImagesFromImageUrl(this.relatedAlbum.getElementsByClass("album-art").attr("src"));
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final String getUploaderName() {
        return this.relatedAlbum.getElementsByClass("by-artist").text().replace("by ", "");
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final String getUploaderUrl() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.InfoItemExtractor
    public final String getUrl() {
        return this.relatedAlbum.getElementsByClass("album-link").attr("abs:href");
    }

    @Override // org.schabi.newpipe.extractor.playlist.PlaylistInfoItemExtractor
    public final boolean isUploaderVerified() {
        return false;
    }
}

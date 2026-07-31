package org.schabi.newpipe.extractor.playlist;

import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.stream.Description;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistInfoItem extends InfoItem {
    private Description description;
    private PlaylistInfo.PlaylistType playlistType;
    private long streamCount;
    private String uploaderName;
    private String uploaderUrl;
    private boolean uploaderVerified;

    public PlaylistInfoItem(String str, int i, String str2) {
        super(InfoItem.InfoType.PLAYLIST, i, str, str2);
        this.streamCount = 0L;
    }

    public final long getStreamCount() {
        return this.streamCount;
    }

    public final String getUploaderName() {
        return this.uploaderName;
    }

    public final void setDescription(Description description) {
        this.description = description;
    }

    public final void setPlaylistType(PlaylistInfo.PlaylistType playlistType) {
        this.playlistType = playlistType;
    }

    public final void setStreamCount(long j) {
        this.streamCount = j;
    }

    public final void setUploaderName(String str) {
        this.uploaderName = str;
    }

    public final void setUploaderUrl(String str) {
        this.uploaderUrl = str;
    }

    public final void setUploaderVerified(boolean z) {
        this.uploaderVerified = z;
    }
}

package org.schabi.newpipe.database.playlist;

import org.schabi.newpipe.database.LocalItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class PlaylistMetadataEntry implements PlaylistLocalItem {
    public static final Companion Companion = new Companion();
    public Long displayIndex;
    public final Boolean isThumbnailPermanent;
    public final String orderingName;
    public final long streamCount;
    public final Long thumbnailStreamId;
    public final String thumbnailUrl;
    public final long uid;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public PlaylistMetadataEntry(long j, String str, String str2, Long l, Boolean bool, Long l2, long j2) {
        this.uid = j;
        this.orderingName = str;
        this.thumbnailUrl = str2;
        this.displayIndex = l;
        this.isThumbnailPermanent = bool;
        this.thumbnailStreamId = l2;
        this.streamCount = j2;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public Long getDisplayIndex() {
        return this.displayIndex;
    }

    @Override // org.schabi.newpipe.database.LocalItem
    public final LocalItem.LocalItemType getLocalItemType() {
        return LocalItem.LocalItemType.PLAYLIST_LOCAL_ITEM;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public String getOrderingName() {
        return this.orderingName;
    }

    public long getStreamCount() {
        return this.streamCount;
    }

    public Long getThumbnailStreamId() {
        return this.thumbnailStreamId;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public long getUid() {
        return this.uid;
    }

    public Boolean isThumbnailPermanent() {
        return this.isThumbnailPermanent;
    }

    public void setDisplayIndex(Long l) {
        this.displayIndex = l;
    }
}

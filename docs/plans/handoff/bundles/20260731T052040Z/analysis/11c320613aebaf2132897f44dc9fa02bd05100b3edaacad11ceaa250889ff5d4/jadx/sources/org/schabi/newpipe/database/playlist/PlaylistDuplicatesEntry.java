package org.schabi.newpipe.database.playlist;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistDuplicatesEntry extends PlaylistMetadataEntry {
    public static final Companion Companion = new Companion();
    public Long displayIndex;
    public final Boolean isThumbnailPermanent;
    public final String orderingName;
    public final long streamCount;
    public final Long thumbnailStreamId;
    public final String thumbnailUrl;
    public final long timesStreamIsContained;
    public final long uid;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public PlaylistDuplicatesEntry(long j, String str, Boolean bool, Long l, Long l2, long j2, String str2, long j3) {
        super(j, str2, str, l2, bool, l, j2);
        this.uid = j;
        this.thumbnailUrl = str;
        this.isThumbnailPermanent = bool;
        this.thumbnailStreamId = l;
        this.displayIndex = l2;
        this.streamCount = j2;
        this.orderingName = str2;
        this.timesStreamIsContained = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaylistDuplicatesEntry)) {
            return false;
        }
        PlaylistDuplicatesEntry playlistDuplicatesEntry = (PlaylistDuplicatesEntry) obj;
        return this.uid == playlistDuplicatesEntry.uid && Intrinsics.areEqual(this.thumbnailUrl, playlistDuplicatesEntry.thumbnailUrl) && Intrinsics.areEqual(this.isThumbnailPermanent, playlistDuplicatesEntry.isThumbnailPermanent) && Intrinsics.areEqual(this.thumbnailStreamId, playlistDuplicatesEntry.thumbnailStreamId) && Intrinsics.areEqual(this.displayIndex, playlistDuplicatesEntry.displayIndex) && this.streamCount == playlistDuplicatesEntry.streamCount && Intrinsics.areEqual(this.orderingName, playlistDuplicatesEntry.orderingName) && this.timesStreamIsContained == playlistDuplicatesEntry.timesStreamIsContained;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistMetadataEntry, org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public final Long getDisplayIndex() {
        return this.displayIndex;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistMetadataEntry, org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public final String getOrderingName() {
        return this.orderingName;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistMetadataEntry
    public final long getStreamCount() {
        return this.streamCount;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistMetadataEntry
    public final Long getThumbnailStreamId() {
        return this.thumbnailStreamId;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistMetadataEntry, org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public final String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistMetadataEntry, org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public final long getUid() {
        return this.uid;
    }

    public final int hashCode() {
        long j = this.uid;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.thumbnailUrl;
        int hashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.isThumbnailPermanent;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Long l = this.thumbnailStreamId;
        int hashCode3 = (hashCode2 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.displayIndex;
        int hashCode4 = (hashCode3 + (l2 == null ? 0 : l2.hashCode())) * 31;
        long j2 = this.streamCount;
        int i2 = (hashCode4 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str2 = this.orderingName;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        long j3 = this.timesStreamIsContained;
        return ((i2 + hashCode5) * 31) + ((int) ((j3 >>> 32) ^ j3));
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistMetadataEntry
    public final Boolean isThumbnailPermanent() {
        return this.isThumbnailPermanent;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistMetadataEntry
    public final void setDisplayIndex(Long l) {
        this.displayIndex = l;
    }

    public final String toString() {
        return "PlaylistDuplicatesEntry(uid=" + this.uid + ", thumbnailUrl=" + this.thumbnailUrl + ", isThumbnailPermanent=" + this.isThumbnailPermanent + ", thumbnailStreamId=" + this.thumbnailStreamId + ", displayIndex=" + this.displayIndex + ", streamCount=" + this.streamCount + ", orderingName=" + this.orderingName + ", timesStreamIsContained=" + this.timesStreamIsContained + ")";
    }
}

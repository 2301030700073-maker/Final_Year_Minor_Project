package org.schabi.newpipe.database.playlist.model;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistEntity {
    public static final Companion Companion = new Companion();
    public final long displayIndex;
    public boolean isThumbnailPermanent;
    public String name;
    public long thumbnailStreamId;
    public final long uid;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public PlaylistEntity(long j, String str, boolean z, long j2, long j3) {
        this.uid = j;
        this.name = str;
        this.isThumbnailPermanent = z;
        this.thumbnailStreamId = j2;
        this.displayIndex = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaylistEntity)) {
            return false;
        }
        PlaylistEntity playlistEntity = (PlaylistEntity) obj;
        return this.uid == playlistEntity.uid && Intrinsics.areEqual(this.name, playlistEntity.name) && this.isThumbnailPermanent == playlistEntity.isThumbnailPermanent && this.thumbnailStreamId == playlistEntity.thumbnailStreamId && this.displayIndex == playlistEntity.displayIndex;
    }

    public final int hashCode() {
        long j = this.uid;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.name;
        int hashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        int i2 = this.isThumbnailPermanent ? 1231 : 1237;
        long j2 = this.thumbnailStreamId;
        int i3 = (((hashCode + i2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.displayIndex;
        return i3 + ((int) ((j3 >>> 32) ^ j3));
    }

    public final String toString() {
        return "PlaylistEntity(uid=" + this.uid + ", name=" + this.name + ", isThumbnailPermanent=" + this.isThumbnailPermanent + ", thumbnailStreamId=" + this.thumbnailStreamId + ", displayIndex=" + this.displayIndex + ")";
    }
}

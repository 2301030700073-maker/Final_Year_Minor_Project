package org.schabi.newpipe.database.playlist.model;

import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.playlist.PlaylistLocalItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistRemoteEntity implements PlaylistLocalItem {
    public static final Companion Companion = new Companion();
    public long displayIndex;
    public final String orderingName;
    public final int serviceId;
    public final Long streamCount;
    public final String thumbnailUrl;
    public long uid;
    public final String uploader;
    public final String url;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PlaylistRemoteEntity(org.schabi.newpipe.extractor.playlist.PlaylistInfo r12) {
        /*
            r11 = this;
            r12.getClass()
            int r3 = r12.getServiceId()
            java.lang.String r4 = r12.getName()
            java.lang.String r5 = r12.getUrl()
            java.util.List r0 = r12.getThumbnails()
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L1d
            java.util.List r0 = r12.getUploaderAvatars()
        L1d:
            r0.getClass()
            java.lang.String r6 = org.schabi.newpipe.util.image.ImageStrategy.imageListToDbUrl(r0)
            java.lang.String r7 = r12.getUploaderName()
            long r0 = r12.getStreamCount()
            java.lang.Long r10 = java.lang.Long.valueOf(r0)
            r1 = 0
            r8 = -1
            r0 = r11
            r0.<init>(r1, r3, r4, r5, r6, r7, r8, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity.<init>(org.schabi.newpipe.extractor.playlist.PlaylistInfo):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaylistRemoteEntity)) {
            return false;
        }
        PlaylistRemoteEntity playlistRemoteEntity = (PlaylistRemoteEntity) obj;
        return this.uid == playlistRemoteEntity.uid && this.serviceId == playlistRemoteEntity.serviceId && Intrinsics.areEqual(this.orderingName, playlistRemoteEntity.orderingName) && Intrinsics.areEqual(this.url, playlistRemoteEntity.url) && Intrinsics.areEqual(this.thumbnailUrl, playlistRemoteEntity.thumbnailUrl) && Intrinsics.areEqual(this.uploader, playlistRemoteEntity.uploader) && this.displayIndex == playlistRemoteEntity.displayIndex && Intrinsics.areEqual(this.streamCount, playlistRemoteEntity.streamCount);
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public final Long getDisplayIndex() {
        return Long.valueOf(this.displayIndex);
    }

    @Override // org.schabi.newpipe.database.LocalItem
    public final LocalItem.LocalItemType getLocalItemType() {
        return LocalItem.LocalItemType.PLAYLIST_REMOTE_ITEM;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public final String getOrderingName() {
        return this.orderingName;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public final String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    @Override // org.schabi.newpipe.database.playlist.PlaylistLocalItem
    public final long getUid() {
        return this.uid;
    }

    public final int hashCode() {
        long j = this.uid;
        int i = ((((int) (j ^ (j >>> 32))) * 31) + this.serviceId) * 31;
        String str = this.orderingName;
        int hashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.url;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.thumbnailUrl;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.uploader;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        long j2 = this.displayIndex;
        int i2 = (hashCode4 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        Long l = this.streamCount;
        return i2 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "PlaylistRemoteEntity(uid=" + this.uid + ", serviceId=" + this.serviceId + ", orderingName=" + this.orderingName + ", url=" + this.url + ", thumbnailUrl=" + this.thumbnailUrl + ", uploader=" + this.uploader + ", displayIndex=" + this.displayIndex + ", streamCount=" + this.streamCount + ")";
    }

    public PlaylistRemoteEntity(long j, int i, String str, String str2, String str3, String str4, long j2, Long l) {
        this.uid = j;
        this.serviceId = i;
        this.orderingName = str;
        this.url = str2;
        this.thumbnailUrl = str3;
        this.uploader = str4;
        this.displayIndex = j2;
        this.streamCount = l;
    }
}

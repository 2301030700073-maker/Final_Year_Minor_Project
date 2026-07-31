package org.schabi.newpipe.database.playlist.model;

import androidx.compose.ui.Modifier;
import org.schabi.newpipe.database.LocalItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistStreamEntity implements LocalItem {
    public static final Companion Companion = new Companion();
    public final int index;
    public final long playlistUid;
    public final long streamUid;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public PlaylistStreamEntity(long j, long j2, int i) {
        this.playlistUid = j;
        this.streamUid = j2;
        this.index = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaylistStreamEntity)) {
            return false;
        }
        PlaylistStreamEntity playlistStreamEntity = (PlaylistStreamEntity) obj;
        return this.playlistUid == playlistStreamEntity.playlistUid && this.streamUid == playlistStreamEntity.streamUid && this.index == playlistStreamEntity.index;
    }

    @Override // org.schabi.newpipe.database.LocalItem
    public final LocalItem.LocalItemType getLocalItemType() {
        return LocalItem.LocalItemType.PLAYLIST_STREAM_ITEM;
    }

    public final int hashCode() {
        long j = this.playlistUid;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.streamUid;
        return ((i + ((int) ((j2 >>> 32) ^ j2))) * 31) + this.index;
    }

    public final String toString() {
        StringBuilder m = Modifier.CC.m(this.playlistUid, "PlaylistStreamEntity(playlistUid=", ", streamUid=");
        m.append(this.streamUid);
        m.append(", index=");
        m.append(this.index);
        m.append(")");
        return m.toString();
    }
}

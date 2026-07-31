package org.schabi.newpipe.database.playlist.dao;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistRemoteDAO_Impl {
    public static final Companion Companion = new Companion();
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfPlaylistRemoteEntity = new WorkTagDao_Impl.AnonymousClass1(13);
    public final WorkSpecDao_Impl.AnonymousClass2 __updateAdapterOfPlaylistRemoteEntity = new WorkSpecDao_Impl.AnonymousClass2(6);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public PlaylistRemoteDAO_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}

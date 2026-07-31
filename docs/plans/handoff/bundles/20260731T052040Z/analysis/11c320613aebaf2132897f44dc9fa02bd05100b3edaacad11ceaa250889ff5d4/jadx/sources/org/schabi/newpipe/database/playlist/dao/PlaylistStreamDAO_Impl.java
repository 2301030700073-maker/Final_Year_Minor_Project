package org.schabi.newpipe.database.playlist.dao;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistStreamDAO_Impl {
    public static final Companion Companion = new Companion();
    public final RoomDatabase __db;
    public final Path.Companion __converters = new Path.Companion(10);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfPlaylistStreamEntity = new WorkTagDao_Impl.AnonymousClass1(14);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public PlaylistStreamDAO_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}

package org.schabi.newpipe.database.history.dao;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import okio.Path;
import org.schabi.newpipe.database.history.model.StreamHistoryEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamHistoryDAO_Impl {
    public static final Companion Companion = new Companion();
    public final RoomDatabase __db;
    public final Path.Companion __converters = new Path.Companion(10);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfStreamHistoryEntity = new WorkTagDao_Impl.AnonymousClass1(this, 11);
    public final WorkSpecDao_Impl.AnonymousClass2 __deleteAdapterOfStreamHistoryEntity = new WorkSpecDao_Impl.AnonymousClass2(this, 4);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public StreamHistoryDAO_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final long insert(Object obj) {
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new StreamHistoryDAO_Impl$$ExternalSyntheticLambda4(this, (StreamHistoryEntity) obj, 1))).longValue();
    }
}

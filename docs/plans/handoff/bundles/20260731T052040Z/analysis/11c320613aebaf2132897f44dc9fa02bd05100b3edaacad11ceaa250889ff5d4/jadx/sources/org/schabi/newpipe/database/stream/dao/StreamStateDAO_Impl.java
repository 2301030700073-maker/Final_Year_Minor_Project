package org.schabi.newpipe.database.stream.dao;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import androidx.work.impl.model.WorkTagDao_Impl;
import io.reactivex.rxjava3.core.Flowable;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamStateDAO_Impl {
    public static final Companion Companion = new Companion();
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfStreamStateEntity_1 = new WorkTagDao_Impl.AnonymousClass1(16);
    public final WorkSpecDao_Impl.AnonymousClass2 __updateAdapterOfStreamStateEntity = new WorkSpecDao_Impl.AnonymousClass2(8);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public StreamStateDAO_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final Flowable getState(long j) {
        WorkSpecDao_Impl$$ExternalSyntheticLambda26 workSpecDao_Impl$$ExternalSyntheticLambda26 = new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 16);
        return Cookie.Companion.createFlowable(this.__db, false, new String[]{"stream_state"}, workSpecDao_Impl$$ExternalSyntheticLambda26);
    }
}

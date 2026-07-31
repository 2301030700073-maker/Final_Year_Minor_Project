package org.schabi.newpipe.database.feed.dao;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedDAO_Impl {
    public static final Companion Companion = new Companion();
    public final RoomDatabase __db;
    public final Path.Companion __converters = new Path.Companion(10);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfFeedEntity = new WorkTagDao_Impl.AnonymousClass1(6);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfFeedLastUpdatedEntity = new WorkTagDao_Impl.AnonymousClass1(this, 7);
    public final WorkSpecDao_Impl.AnonymousClass2 __updateAdapterOfFeedLastUpdatedEntity = new WorkSpecDao_Impl.AnonymousClass2(this, 1);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public FeedDAO_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}

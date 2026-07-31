package org.schabi.newpipe.database.feed.dao;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import io.reactivex.rxjava3.core.Flowable;
import okhttp3.Cookie;
import okio.Path;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupDAO_Impl {
    public static final Companion Companion = new Companion();
    public final RoomDatabase __db;
    public final Path.Companion __converters = new Path.Companion(10);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfFeedGroupSubscriptionEntity = new WorkTagDao_Impl.AnonymousClass1(8);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfFeedGroupEntity = new WorkTagDao_Impl.AnonymousClass1(this, 9);
    public final WorkSpecDao_Impl.AnonymousClass2 __updateAdapterOfFeedGroupEntity = new WorkSpecDao_Impl.AnonymousClass2(this, 2);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public FeedGroupDAO_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final Flowable getAll() {
        ZipFilesKt$$ExternalSyntheticLambda3 zipFilesKt$$ExternalSyntheticLambda3 = new ZipFilesKt$$ExternalSyntheticLambda3(this, 24);
        return Cookie.Companion.createFlowable(this.__db, false, new String[]{"feed_group"}, zipFilesKt$$ExternalSyntheticLambda3);
    }
}

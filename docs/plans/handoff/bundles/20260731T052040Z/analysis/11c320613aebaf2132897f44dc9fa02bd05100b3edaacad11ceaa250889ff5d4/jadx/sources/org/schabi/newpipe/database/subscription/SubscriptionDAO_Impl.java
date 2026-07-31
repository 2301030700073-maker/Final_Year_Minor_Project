package org.schabi.newpipe.database.subscription;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import io.reactivex.rxjava3.core.Flowable;
import okhttp3.Cookie;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionDAO_Impl {
    public static final Companion Companion = new Companion();
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfSubscriptionEntity = new WorkTagDao_Impl.AnonymousClass1(17);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfSubscriptionEntity_1 = new WorkTagDao_Impl.AnonymousClass1(18);
    public final WorkSpecDao_Impl.AnonymousClass2 __deleteAdapterOfSubscriptionEntity = new WorkSpecDao_Impl.AnonymousClass2(9);
    public final WorkSpecDao_Impl.AnonymousClass2 __updateAdapterOfSubscriptionEntity = new WorkSpecDao_Impl.AnonymousClass2(10);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public SubscriptionDAO_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final Flowable getAll() {
        FeedFragment$$ExternalSyntheticLambda10 feedFragment$$ExternalSyntheticLambda10 = new FeedFragment$$ExternalSyntheticLambda10(6);
        return Cookie.Companion.createFlowable(this.__db, false, new String[]{"subscriptions"}, feedFragment$$ExternalSyntheticLambda10);
    }

    public final int update(Object obj) {
        SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj;
        subscriptionEntity.getClass();
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new SubscriptionDAO_Impl$$ExternalSyntheticLambda2(this, subscriptionEntity, 0))).intValue();
    }
}

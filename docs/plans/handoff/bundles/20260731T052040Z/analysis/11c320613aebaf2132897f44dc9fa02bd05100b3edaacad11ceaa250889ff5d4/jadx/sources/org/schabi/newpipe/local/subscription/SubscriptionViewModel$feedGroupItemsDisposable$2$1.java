package org.schabi.newpipe.local.subscription;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.schabi.newpipe.database.feed.model.FeedGroupEntity;
import org.schabi.newpipe.local.subscription.item.FeedGroupCardItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SubscriptionViewModel$feedGroupItemsDisposable$2$1 extends FunctionReferenceImpl implements Function1 {
    public static final SubscriptionViewModel$feedGroupItemsDisposable$2$1 INSTANCE = new SubscriptionViewModel$feedGroupItemsDisposable$2$1(1, FeedGroupCardItem.class, "<init>", "<init>(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FeedGroupEntity feedGroupEntity = (FeedGroupEntity) obj;
        feedGroupEntity.getClass();
        return new FeedGroupCardItem(feedGroupEntity.uid, feedGroupEntity.name, feedGroupEntity.icon);
    }
}

package org.schabi.newpipe.local.subscription;

import android.content.Context;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionManager {
    public final AppDatabase database;
    public final FeedDatabaseManager feedDatabaseManager;
    public final SubscriptionDAO_Impl subscriptionTable;

    public SubscriptionManager(Context context) {
        context.getClass();
        AppDatabase appKt = AppKt.getInstance(context);
        this.database = appKt;
        this.subscriptionTable = appKt.subscriptionDAO();
        this.feedDatabaseManager = new FeedDatabaseManager(context);
    }
}

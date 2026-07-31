package org.schabi.newpipe.local.feed.service;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceManager;
import androidx.transition.Transition;
import io.noties.markwon.BlockHandlerDef;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableBuffer;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableDoOnEach;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMap;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableSkip;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle;
import io.reactivex.rxjava3.internal.operators.parallel.ParallelFromPublisher;
import io.reactivex.rxjava3.internal.operators.parallel.ParallelJoin;
import io.reactivex.rxjava3.internal.operators.parallel.ParallelMap;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.processors.PublishProcessor;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.time.OffsetDateTime;
import j$.time.ZoneOffset;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ranges.LongRange;
import okhttp3.Cookie;
import okhttp3.Headers;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda0;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda2;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedLoadManager {
    public static final Companion Companion = new Companion();
    public static final LongRange DELAY_BETWEEN_BATCHES_MILLIS = new LongRange(6000, 12000);
    public final AtomicBoolean cancelSignal;
    public final Context context;
    public final AtomicInteger currentProgress;
    public final FeedDatabaseManager feedDatabaseManager;
    public final Headers.Builder feedResultsHolder;
    public final AtomicInteger maxProgress;
    public final FlowableMap notification;
    public final PublishProcessor notificationUpdater;
    public final SubscriptionManager subscriptionManager;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public FeedLoadManager(Context context) {
        this.context = context;
        this.subscriptionManager = new SubscriptionManager(context);
        this.feedDatabaseManager = new FeedDatabaseManager(context);
        PublishProcessor publishProcessor = new PublishProcessor();
        this.notificationUpdater = publishProcessor;
        this.currentProgress = new AtomicInteger(-1);
        this.maxProgress = new AtomicInteger(-1);
        this.cancelSignal = new AtomicBoolean();
        this.feedResultsHolder = new Headers.Builder(3);
        int i = 0;
        this.notification = new FlowableMap(publishProcessor, new FeedLoadManager$notification$1(this, i), i);
    }

    public final SingleMap startLoading(long j, boolean z) {
        OffsetDateTime minusSeconds;
        Flowable createFlowable;
        Context context = this.context;
        int i = 0;
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        boolean z2 = sharedPreferences.getBoolean(context.getString(R.string.feed_use_dedicated_fetch_method_key), false);
        if (z) {
            minusSeconds = OffsetDateTime.now(ZoneOffset.UTC);
        } else {
            String string = context.getString(R.string.feed_update_threshold_key);
            string.getClass();
            String string2 = context.getString(R.string.feed_update_threshold_default_value);
            string2.getClass();
            String string3 = sharedPreferences.getString(string, null);
            if (string3 != null) {
                string2 = string3;
            }
            minusSeconds = OffsetDateTime.now(ZoneOffset.UTC).minusSeconds(Integer.parseInt(string2));
        }
        int i2 = 1;
        FeedDatabaseManager feedDatabaseManager = this.feedDatabaseManager;
        if (j == -1) {
            minusSeconds.getClass();
            feedDatabaseManager.getClass();
            FeedDAO_Impl feedDAO_Impl = feedDatabaseManager.feedTable;
            feedDAO_Impl.getClass();
            createFlowable = Cookie.Companion.createFlowable(feedDAO_Impl.__db, false, new String[]{"subscriptions", "feed_last_updated"}, new FeedDAO_Impl$$ExternalSyntheticLambda0(feedDAO_Impl, minusSeconds, i));
        } else if (j == -2) {
            minusSeconds.getClass();
            feedDatabaseManager.getClass();
            FeedDAO_Impl feedDAO_Impl2 = feedDatabaseManager.feedTable;
            feedDAO_Impl2.getClass();
            createFlowable = Cookie.Companion.createFlowable(feedDAO_Impl2.__db, false, new String[]{"subscriptions", "feed_last_updated"}, new FeedDAO_Impl$$ExternalSyntheticLambda0(feedDAO_Impl2, minusSeconds, i2));
        } else {
            minusSeconds.getClass();
            feedDatabaseManager.getClass();
            FeedDAO_Impl feedDAO_Impl3 = feedDatabaseManager.feedTable;
            feedDAO_Impl3.getClass();
            createFlowable = Cookie.Companion.createFlowable(feedDAO_Impl3.__db, false, new String[]{"subscriptions", "feed_group_subscription_join", "feed_last_updated"}, new FeedDAO_Impl$$ExternalSyntheticLambda2(j, feedDAO_Impl3, minusSeconds));
        }
        AtomicInteger atomicInteger = new AtomicInteger();
        FlowableSkip flowableSkip = new FlowableSkip(createFlowable, 1);
        int i3 = 4;
        FeedLoadManager$notification$1 feedLoadManager$notification$1 = new FeedLoadManager$notification$1(this, i3);
        BlockHandlerDef blockHandlerDef = Functions.EMPTY_CONSUMER;
        Transition.AnonymousClass1 anonymousClass1 = Functions.EMPTY_ACTION;
        FlowableDoOnEach flowableDoOnEach = new FlowableDoOnEach(new FlowableMap(new FlowableDoOnEach(flowableSkip, feedLoadManager$notification$1, blockHandlerDef, anonymousClass1), FeedEventManager$events$1.INSTANCE$1, i2).observeOn(AndroidSchedulers.mainThread()), new FeedLoadManager$notification$1(this, 5), blockHandlerDef, anonymousClass1);
        IoScheduler ioScheduler = Schedulers.IO;
        FlowableObserveOn observeOn = flowableDoOnEach.observeOn(ioScheduler);
        FeedEventManager$events$1 feedEventManager$events$1 = FeedEventManager$events$1.INSTANCE$2;
        int i4 = Flowable.BUFFER_SIZE;
        FlowableDoOnEach flowableDoOnEach2 = new FlowableDoOnEach(new FlowableMap(observeOn.flatMap(feedEventManager$events$1, i4, i4), new FeedLoadManager$notification$1(this, 6), 3), new VideoPlayerUi.AnonymousClass1(atomicInteger, i3), blockHandlerDef, anonymousClass1);
        Functions.verifyPositive(3, "parallelism");
        Functions.verifyPositive(6, "prefetch");
        ParallelFromPublisher parallelFromPublisher = new ParallelFromPublisher(flowableDoOnEach2);
        Functions.verifyPositive(6, "prefetch");
        int i5 = 2;
        ParallelMap parallelMap = new ParallelMap(new ParallelMap(new ParallelMap(parallelFromPublisher, ioScheduler, i5), new FeedLoadManager$notification$1(this, 7), i2), new FeedLoadManager$startLoading$8(this, z2, sharedPreferences), i);
        Functions.verifyPositive(i4, "prefetch");
        FlowableObserveOn observeOn2 = new FlowableDoOnEach(new ParallelJoin(parallelMap, i4).observeOn(AndroidSchedulers.mainThread()), new FeedLoadManager$notification$1(this, i5), blockHandlerDef, anonymousClass1).observeOn(ioScheduler);
        Functions.verifyPositive(20, "count");
        Functions.verifyPositive(20, "skip");
        return new SingleMap(new FlowableToListSingle(new FlowableDoOnEach(new FlowableBuffer(observeOn2), new FeedLoadManager$notification$1(this, i2), blockHandlerDef, anonymousClass1).subscribeOn(ioScheduler), i), new FeedLoadManager$notification$1(this, 8), i2);
    }
}

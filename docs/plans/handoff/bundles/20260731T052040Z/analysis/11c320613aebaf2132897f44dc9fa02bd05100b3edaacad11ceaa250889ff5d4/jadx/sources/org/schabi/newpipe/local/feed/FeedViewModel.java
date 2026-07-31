package org.schabi.newpipe.local.feed;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import io.noties.markwon.BlockHandlerDef;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableCombineLatest;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableDistinctUntilChanged;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMap;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableThrottleLatest;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.processors.BehaviorProcessor;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.time.OffsetDateTime;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import okhttp3.Cookie;
import okhttp3.internal.http1.HeadersReader;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.reactivestreams.Publisher;
import org.schabi.newpipe.App;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda6;
import org.schabi.newpipe.local.feed.service.FeedEventManager;
import org.schabi.newpipe.local.feed.service.FeedEventManager$events$1;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedViewModel extends ViewModel {
    public static final Companion Companion = new Companion();
    public final App application;
    public final LambdaSubscriber combineDisposable;
    public final FeedDatabaseManager feedDatabaseManager;
    public final MutableLiveData mutableStateLiveData;
    public final BehaviorProcessor showFutureItems;
    public final BehaviorProcessor showPartiallyPlayedItems;
    public final BehaviorProcessor showPlayedItems;
    public final MutableLiveData stateLiveData;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CombineResultDataHolder {
        public final FeedEventManager.Event t1;
        public final List t2;
        public final long t3;
        public final OffsetDateTime t4;

        public CombineResultDataHolder(FeedEventManager.Event event, List list, long j, OffsetDateTime offsetDateTime) {
            this.t1 = event;
            this.t2 = list;
            this.t3 = j;
            this.t4 = offsetDateTime;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CombineResultDataHolder)) {
                return false;
            }
            CombineResultDataHolder combineResultDataHolder = (CombineResultDataHolder) obj;
            return this.t1.equals(combineResultDataHolder.t1) && this.t2.equals(combineResultDataHolder.t2) && this.t3 == combineResultDataHolder.t3 && Intrinsics.areEqual(this.t4, combineResultDataHolder.t4);
        }

        public final int hashCode() {
            int hashCode = (this.t2.hashCode() + (this.t1.hashCode() * 31)) * 31;
            long j = this.t3;
            int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
            OffsetDateTime offsetDateTime = this.t4;
            return i + (offsetDateTime == null ? 0 : offsetDateTime.hashCode());
        }

        public final String toString() {
            return "CombineResultDataHolder(t1=" + this.t1 + ", t2=" + this.t2 + ", t3=" + this.t3 + ", t4=" + this.t4 + ")";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CombineResultEventHolder {
        public final FeedEventManager.Event t1;
        public final boolean t2;
        public final boolean t3;
        public final boolean t4;
        public final long t5;
        public final OffsetDateTime t6;

        public CombineResultEventHolder(FeedEventManager.Event event, boolean z, boolean z2, boolean z3, long j, OffsetDateTime offsetDateTime) {
            this.t1 = event;
            this.t2 = z;
            this.t3 = z2;
            this.t4 = z3;
            this.t5 = j;
            this.t6 = offsetDateTime;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CombineResultEventHolder)) {
                return false;
            }
            CombineResultEventHolder combineResultEventHolder = (CombineResultEventHolder) obj;
            return this.t1.equals(combineResultEventHolder.t1) && this.t2 == combineResultEventHolder.t2 && this.t3 == combineResultEventHolder.t3 && this.t4 == combineResultEventHolder.t4 && this.t5 == combineResultEventHolder.t5 && Intrinsics.areEqual(this.t6, combineResultEventHolder.t6);
        }

        public final int hashCode() {
            int hashCode = ((((((this.t1.hashCode() * 31) + (this.t2 ? 1231 : 1237)) * 31) + (this.t3 ? 1231 : 1237)) * 31) + (this.t4 ? 1231 : 1237)) * 31;
            long j = this.t5;
            int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
            OffsetDateTime offsetDateTime = this.t6;
            return i + (offsetDateTime == null ? 0 : offsetDateTime.hashCode());
        }

        public final String toString() {
            return "CombineResultEventHolder(t1=" + this.t1 + ", t2=" + this.t2 + ", t3=" + this.t3 + ", t4=" + this.t4 + ", t5=" + this.t5 + ", t6=" + this.t6 + ")";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public FeedViewModel(App app, long j, boolean z, boolean z2, boolean z3) {
        char c;
        Flowable createFlowable;
        this.application = app;
        FeedDatabaseManager feedDatabaseManager = new FeedDatabaseManager(app);
        this.feedDatabaseManager = feedDatabaseManager;
        BehaviorProcessor behaviorProcessor = new BehaviorProcessor();
        this.showPlayedItems = behaviorProcessor;
        FlowableDistinctUntilChanged flowableDistinctUntilChanged = new FlowableDistinctUntilChanged(behaviorProcessor.startWithItem(Boolean.valueOf(z)));
        BehaviorProcessor behaviorProcessor2 = new BehaviorProcessor();
        this.showPartiallyPlayedItems = behaviorProcessor2;
        FlowableDistinctUntilChanged flowableDistinctUntilChanged2 = new FlowableDistinctUntilChanged(behaviorProcessor2.startWithItem(Boolean.valueOf(z2)));
        BehaviorProcessor behaviorProcessor3 = new BehaviorProcessor();
        this.showFutureItems = behaviorProcessor3;
        FlowableDistinctUntilChanged flowableDistinctUntilChanged3 = new FlowableDistinctUntilChanged(behaviorProcessor3.startWithItem(Boolean.valueOf(z3)));
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.mutableStateLiveData = mutableLiveData;
        this.stateLiveData = mutableLiveData;
        Flowable flowable = FeedEventManager.eventsFlowable;
        FeedEventManager$events$1 feedEventManager$events$1 = FeedEventManager$events$1.INSTANCE;
        flowable.getClass();
        FlowableMap flowableMap = new FlowableMap(flowable, feedEventManager$events$1, 1);
        int i = 0;
        FeedDAO_Impl feedDAO_Impl = feedDatabaseManager.feedTable;
        if (j == -1) {
            c = 1;
            createFlowable = Cookie.Companion.createFlowable(feedDAO_Impl.__db, false, new String[]{"feed_last_updated"}, new ZipFilesKt$$ExternalSyntheticLambda3(23));
        } else {
            c = 1;
            createFlowable = Cookie.Companion.createFlowable(feedDAO_Impl.__db, false, new String[]{"subscriptions", "feed_group_subscription_join", "feed_last_updated"}, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 2));
        }
        Flowable createFlowable2 = j == -1 ? Cookie.Companion.createFlowable(feedDAO_Impl.__db, false, new String[]{"feed_last_updated"}, new RxAwaitKt$$ExternalSyntheticLambda0(feedDAO_Impl, 11)) : Cookie.Companion.createFlowable(feedDAO_Impl.__db, false, new String[]{"feed_last_updated", "feed_group_subscription_join"}, new FeedDAO_Impl$$ExternalSyntheticLambda6(i, j, feedDAO_Impl));
        FeedViewModel$$ExternalSyntheticLambda0 feedViewModel$$ExternalSyntheticLambda0 = new FeedViewModel$$ExternalSyntheticLambda0(i);
        Publisher[] publisherArr = new Publisher[6];
        publisherArr[0] = flowableMap;
        publisherArr[c] = flowableDistinctUntilChanged;
        publisherArr[2] = flowableDistinctUntilChanged2;
        publisherArr[3] = flowableDistinctUntilChanged3;
        publisherArr[4] = createFlowable;
        publisherArr[5] = createFlowable2;
        BlockHandlerDef blockHandlerDef = new BlockHandlerDef(feedViewModel$$ExternalSyntheticLambda0);
        int i2 = Flowable.BUFFER_SIZE;
        Functions.verifyPositive(i2, "bufferSize");
        FlowableThrottleLatest throttleLatest = new FlowableCombineLatest(publisherArr, blockHandlerDef, i2).throttleLatest(120L);
        IoScheduler ioScheduler = Schedulers.IO;
        FlowableObserveOn observeOn = new FlowableMap(throttleLatest.subscribeOn(ioScheduler).observeOn(ioScheduler), new HeadersReader(this, j), i).observeOn(AndroidSchedulers.mainThread());
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new VideoPlayerUi.AnonymousClass1(this, 3), Functions.ON_ERROR_MISSING);
        observeOn.subscribe((FlowableSubscriber) lambdaSubscriber);
        this.combineDisposable = lambdaSubscriber;
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        LambdaSubscriber lambdaSubscriber = this.combineDisposable;
        lambdaSubscriber.getClass();
        SubscriptionHelper.cancel(lambdaSubscriber);
    }
}

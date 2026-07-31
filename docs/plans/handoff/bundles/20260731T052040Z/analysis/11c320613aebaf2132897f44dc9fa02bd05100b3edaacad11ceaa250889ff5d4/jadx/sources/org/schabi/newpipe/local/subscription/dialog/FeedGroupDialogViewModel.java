package org.schabi.newpipe.local.subscription.dialog;

import android.content.Context;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.CallbackCompletableObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableDistinctUntilChanged;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableEmpty;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMap;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMapPublisher;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableSubscribeOn;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeDefer;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ScalarSupplier;
import io.reactivex.rxjava3.processors.BehaviorProcessor;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;
import okio.ByteString;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda6;
import org.schabi.newpipe.database.feed.dao.FeedGroupDAO_Impl;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupDialogViewModel extends ViewModel {
    public static final Companion Companion = new Companion();
    public CallbackCompletableObserver actionProcessingDisposable;
    public final MutableLiveData dialogEventLiveData;
    public final FeedDatabaseManager feedDatabaseManager;
    public final MaybeCallbackObserver feedGroupDisposable;
    public final BehaviorProcessor filterSubscriptions;
    public final long groupId;
    public final MutableLiveData groupLiveData;
    public final MutableLiveData mutableDialogEventLiveData;
    public final SubscriptionManager subscriptionManager;
    public final LambdaSubscriber subscriptionsDisposable;
    public final MutableLiveData subscriptionsLiveData;
    public final BehaviorProcessor toggleShowOnlyUngrouped;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class DialogEvent {

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class ProcessingEvent extends DialogEvent {
            public static final ProcessingEvent INSTANCE = new ProcessingEvent();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ProcessingEvent);
            }

            public final int hashCode() {
                return -543267964;
            }

            public final String toString() {
                return "ProcessingEvent";
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class SuccessEvent extends DialogEvent {
            public static final SuccessEvent INSTANCE = new SuccessEvent();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof SuccessEvent);
            }

            public final int hashCode() {
                return -1560288966;
            }

            public final String toString() {
                return "SuccessEvent";
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes3.dex */
    public final class Filter {
        public final String query;
        public final boolean showOnlyUngrouped;

        public Filter(String str, boolean z) {
            str.getClass();
            this.query = str;
            this.showOnlyUngrouped = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Filter)) {
                return false;
            }
            Filter filter = (Filter) obj;
            return Intrinsics.areEqual(this.query, filter.query) && this.showOnlyUngrouped == filter.showOnlyUngrouped;
        }

        public final int hashCode() {
            return (this.query.hashCode() * 31) + (this.showOnlyUngrouped ? 1231 : 1237);
        }

        public final String toString() {
            return "Filter(query=" + this.query + ", showOnlyUngrouped=" + this.showOnlyUngrouped + ")";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FeedGroupDialogViewModel(Context context, long j, String str, boolean z) {
        Flowable flowableObserveOn;
        str.getClass();
        this.groupId = j;
        FeedDatabaseManager feedDatabaseManager = new FeedDatabaseManager(context);
        this.feedDatabaseManager = feedDatabaseManager;
        this.subscriptionManager = new SubscriptionManager(context);
        BehaviorProcessor behaviorProcessor = new BehaviorProcessor();
        this.filterSubscriptions = behaviorProcessor;
        BehaviorProcessor behaviorProcessor2 = new BehaviorProcessor();
        this.toggleShowOnlyUngrouped = behaviorProcessor2;
        FlowableDistinctUntilChanged flowableDistinctUntilChanged = new FlowableDistinctUntilChanged(Flowable.combineLatest(behaviorProcessor.startWithItem(str), behaviorProcessor2.startWithItem(Boolean.valueOf(z)), FeedGroupDialogViewModel$subscriptionsFlowable$1.INSTANCE));
        VideoPlayerUi.AnonymousClass1 anonymousClass1 = new VideoPlayerUi.AnonymousClass1(this, 6);
        int i = Flowable.BUFFER_SIZE;
        Functions.verifyPositive(i, "bufferSize");
        int i2 = 1;
        if (flowableDistinctUntilChanged instanceof ScalarSupplier) {
            Object obj = ((ScalarSupplier) flowableDistinctUntilChanged).get();
            flowableObserveOn = obj == null ? FlowableEmpty.INSTANCE : new FlowableMapPublisher(obj, anonymousClass1, i2);
        } else {
            flowableObserveOn = new FlowableObserveOn(flowableDistinctUntilChanged, anonymousClass1, i, 3);
        }
        int i3 = 0;
        FlowableMap flowableMap = new FlowableMap(flowableObserveOn, FeedGroupDialogViewModel$subscriptionsFlowable$1.INSTANCE$2, i3);
        MutableLiveData mutableLiveData = new MutableLiveData();
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        MutableLiveData mutableLiveData3 = new MutableLiveData();
        this.mutableDialogEventLiveData = mutableLiveData3;
        this.groupLiveData = mutableLiveData;
        this.subscriptionsLiveData = mutableLiveData2;
        this.dialogEventLiveData = mutableLiveData3;
        FeedGroupDAO_Impl feedGroupDAO_Impl = feedDatabaseManager.feedGroupTable;
        MaybeDefer createMaybe = Cookie.Companion.createMaybe(feedGroupDAO_Impl.__db, new FeedDAO_Impl$$ExternalSyntheticLambda6(i2, j, feedGroupDAO_Impl));
        IoScheduler ioScheduler = Schedulers.IO;
        MaybeObserveOn subscribeOn = new MaybeObserveOn(createMaybe.subscribeOn(ioScheduler), AndroidSchedulers.mainThread(), i3).subscribeOn(ioScheduler);
        FeedGroupDialogViewModel$feedGroupDisposable$1 feedGroupDialogViewModel$feedGroupDisposable$1 = new FeedGroupDialogViewModel$feedGroupDisposable$1(mutableLiveData, 0);
        ByteString.Companion companion = Functions.ON_ERROR_MISSING;
        MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(feedGroupDialogViewModel$feedGroupDisposable$1, companion, Functions.EMPTY_ACTION);
        subscribeOn.subscribe(maybeCallbackObserver);
        this.feedGroupDisposable = maybeCallbackObserver;
        FlowableSubscribeOn subscribeOn2 = Flowable.combineLatest(flowableMap, Cookie.Companion.createFlowable(feedGroupDAO_Impl.__db, false, new String[]{"feed_group_subscription_join"}, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(j, 5)).subscribeOn(ioScheduler).observeOn(AndroidSchedulers.mainThread()), FeedGroupDialogViewModel$subscriptionsFlowable$1.INSTANCE$1).subscribeOn(ioScheduler);
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new FeedGroupDialogViewModel$feedGroupDisposable$1(mutableLiveData2, 1), companion);
        subscribeOn2.subscribe((FlowableSubscriber) lambdaSubscriber);
        this.subscriptionsDisposable = lambdaSubscriber;
    }

    public final void doAction$1(Completable completable) {
        if (this.actionProcessingDisposable == null) {
            this.mutableDialogEventLiveData.setValue(DialogEvent.ProcessingEvent.INSTANCE);
            CompletableObserveOn subscribeOn = completable.subscribeOn(Schedulers.IO);
            CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(Functions.ON_ERROR_MISSING, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 19));
            subscribeOn.subscribe(callbackCompletableObserver);
            this.actionProcessingDisposable = callbackCompletableObserver;
        }
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        CallbackCompletableObserver callbackCompletableObserver = this.actionProcessingDisposable;
        if (callbackCompletableObserver != null) {
            DisposableHelper.dispose(callbackCompletableObserver);
        }
        LambdaSubscriber lambdaSubscriber = this.subscriptionsDisposable;
        lambdaSubscriber.getClass();
        SubscriptionHelper.cancel(lambdaSubscriber);
        MaybeCallbackObserver maybeCallbackObserver = this.feedGroupDisposable;
        maybeCallbackObserver.getClass();
        DisposableHelper.dispose(maybeCallbackObserver);
    }
}

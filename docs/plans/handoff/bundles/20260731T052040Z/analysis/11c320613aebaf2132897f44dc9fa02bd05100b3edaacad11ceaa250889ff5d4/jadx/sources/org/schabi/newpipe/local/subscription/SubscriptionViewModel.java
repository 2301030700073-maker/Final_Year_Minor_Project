package org.schabi.newpipe.local.subscription;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableDistinctUntilChanged;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMap;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableSubscribeOn;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.processors.BehaviorProcessor;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import net.newpipe.app.AppKt;
import okio.Options;
import org.schabi.newpipe.database.subscription.SubscriptionDAO_Impl;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.subscription.SubscriptionViewModel;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionViewModel extends AndroidViewModel {
    public static final Companion Companion = new Companion();
    public final LambdaSubscriber feedGroupItemsDisposable;
    public final MutableLiveData feedGroupsLiveData;
    public final BehaviorProcessor listViewMode;
    public final MutableLiveData mutableFeedGroupsLiveData;
    public final MutableLiveData mutableStateLiveData;
    public final LambdaSubscriber stateItemsDisposable;
    public final MutableLiveData stateLiveData;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static boolean shouldUseGridForSubscription(Context context) {
            context.getClass();
            ItemViewMode itemViewMode = Options.Companion.getItemViewMode(context);
            return itemViewMode == ItemViewMode.GRID || itemViewMode == ItemViewMode.CARD;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class SubscriptionState {

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class ErrorState extends SubscriptionState {
            public final Throwable error;

            public ErrorState(Throwable th) {
                this.error = th;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ErrorState) && Intrinsics.areEqual(this.error, ((ErrorState) obj).error);
            }

            public final int hashCode() {
                Throwable th = this.error;
                if (th == null) {
                    return 0;
                }
                return th.hashCode();
            }

            public final String toString() {
                return "ErrorState(error=" + this.error + ")";
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class LoadedState extends SubscriptionState {
            public final List subscriptions;

            public LoadedState(List list) {
                list.getClass();
                this.subscriptions = list;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadedState) && Intrinsics.areEqual(this.subscriptions, ((LoadedState) obj).subscriptions);
            }

            public final int hashCode() {
                return this.subscriptions.hashCode();
            }

            public final String toString() {
                return "LoadedState(subscriptions=" + this.subscriptions + ")";
            }
        }
    }

    public SubscriptionViewModel(Application application) {
        application.getClass();
        FeedDatabaseManager feedDatabaseManager = new FeedDatabaseManager(application);
        SubscriptionDAO_Impl subscriptionDAO = AppKt.getInstance(application).subscriptionDAO();
        new FeedDatabaseManager(application);
        Companion.getClass();
        final int i = 1;
        Boolean valueOf = Boolean.valueOf(!Companion.shouldUseGridForSubscription(application));
        BehaviorProcessor behaviorProcessor = new BehaviorProcessor();
        behaviorProcessor.value.lazySet(valueOf);
        this.listViewMode = behaviorProcessor;
        FlowableDistinctUntilChanged flowableDistinctUntilChanged = new FlowableDistinctUntilChanged(behaviorProcessor);
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.mutableStateLiveData = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.mutableFeedGroupsLiveData = mutableLiveData2;
        this.stateLiveData = mutableLiveData;
        this.feedGroupsLiveData = mutableLiveData2;
        final int i2 = 0;
        FlowableMap flowableMap = new FlowableMap(Flowable.combineLatest(feedDatabaseManager.feedGroupTable.getAll(), flowableDistinctUntilChanged, SubscriptionViewModel$stateItemsDisposable$1.INSTANCE$1).throttleLatest(120L), SubscriptionViewModel$stateItemsDisposable$1.INSTANCE$2, i2);
        IoScheduler ioScheduler = Schedulers.IO;
        FlowableSubscribeOn subscribeOn = flowableMap.subscribeOn(ioScheduler);
        final int i3 = 2;
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new Consumer(this) { // from class: org.schabi.newpipe.local.subscription.SubscriptionViewModel$stateItemsDisposable$2
            public final /* synthetic */ SubscriptionViewModel this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i;
                SubscriptionViewModel subscriptionViewModel = this.this$0;
                switch (i4) {
                    case 0:
                        List list = (List) obj;
                        list.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.LoadedState(list));
                        break;
                    case 1:
                        Pair pair = (Pair) obj;
                        pair.getClass();
                        subscriptionViewModel.mutableFeedGroupsLiveData.postValue(pair);
                        break;
                    case 2:
                        Throwable th = (Throwable) obj;
                        th.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.ErrorState(th));
                        break;
                    default:
                        Throwable th2 = (Throwable) obj;
                        th2.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.ErrorState(th2));
                        break;
                }
            }
        }, new Consumer(this) { // from class: org.schabi.newpipe.local.subscription.SubscriptionViewModel$stateItemsDisposable$2
            public final /* synthetic */ SubscriptionViewModel this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                SubscriptionViewModel subscriptionViewModel = this.this$0;
                switch (i4) {
                    case 0:
                        List list = (List) obj;
                        list.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.LoadedState(list));
                        break;
                    case 1:
                        Pair pair = (Pair) obj;
                        pair.getClass();
                        subscriptionViewModel.mutableFeedGroupsLiveData.postValue(pair);
                        break;
                    case 2:
                        Throwable th = (Throwable) obj;
                        th.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.ErrorState(th));
                        break;
                    default:
                        Throwable th2 = (Throwable) obj;
                        th2.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.ErrorState(th2));
                        break;
                }
            }
        });
        subscribeOn.subscribe((FlowableSubscriber) lambdaSubscriber);
        this.feedGroupItemsDisposable = lambdaSubscriber;
        FlowableSubscribeOn subscribeOn2 = new FlowableMap(subscriptionDAO.getAll().throttleLatest(120L), SubscriptionViewModel$stateItemsDisposable$1.INSTANCE, i2).subscribeOn(ioScheduler);
        final int i4 = 3;
        LambdaSubscriber lambdaSubscriber2 = new LambdaSubscriber(new Consumer(this) { // from class: org.schabi.newpipe.local.subscription.SubscriptionViewModel$stateItemsDisposable$2
            public final /* synthetic */ SubscriptionViewModel this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i42 = i2;
                SubscriptionViewModel subscriptionViewModel = this.this$0;
                switch (i42) {
                    case 0:
                        List list = (List) obj;
                        list.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.LoadedState(list));
                        break;
                    case 1:
                        Pair pair = (Pair) obj;
                        pair.getClass();
                        subscriptionViewModel.mutableFeedGroupsLiveData.postValue(pair);
                        break;
                    case 2:
                        Throwable th = (Throwable) obj;
                        th.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.ErrorState(th));
                        break;
                    default:
                        Throwable th2 = (Throwable) obj;
                        th2.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.ErrorState(th2));
                        break;
                }
            }
        }, new Consumer(this) { // from class: org.schabi.newpipe.local.subscription.SubscriptionViewModel$stateItemsDisposable$2
            public final /* synthetic */ SubscriptionViewModel this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                int i42 = i4;
                SubscriptionViewModel subscriptionViewModel = this.this$0;
                switch (i42) {
                    case 0:
                        List list = (List) obj;
                        list.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.LoadedState(list));
                        break;
                    case 1:
                        Pair pair = (Pair) obj;
                        pair.getClass();
                        subscriptionViewModel.mutableFeedGroupsLiveData.postValue(pair);
                        break;
                    case 2:
                        Throwable th = (Throwable) obj;
                        th.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.ErrorState(th));
                        break;
                    default:
                        Throwable th2 = (Throwable) obj;
                        th2.getClass();
                        subscriptionViewModel.mutableStateLiveData.postValue(new SubscriptionViewModel.SubscriptionState.ErrorState(th2));
                        break;
                }
            }
        });
        subscribeOn2.subscribe((FlowableSubscriber) lambdaSubscriber2);
        this.stateItemsDisposable = lambdaSubscriber2;
    }

    public final boolean getListViewMode() {
        Object obj = this.listViewMode.value.get();
        if (obj == NotificationLite.COMPLETE || (obj instanceof NotificationLite.ErrorNotification)) {
            obj = null;
        }
        Boolean bool = (Boolean) obj;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        LambdaSubscriber lambdaSubscriber = this.stateItemsDisposable;
        lambdaSubscriber.getClass();
        SubscriptionHelper.cancel(lambdaSubscriber);
        LambdaSubscriber lambdaSubscriber2 = this.feedGroupItemsDisposable;
        lambdaSubscriber2.getClass();
        SubscriptionHelper.cancel(lambdaSubscriber2);
    }
}

package org.schabi.newpipe.local.subscription.dialog;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.CallbackCompletableObserver;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableSkip;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableSubscribeOn;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.schedulers.Schedulers;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupReorderDialogViewModel extends AndroidViewModel {
    public CallbackCompletableObserver actionProcessingDisposable;
    public final MutableLiveData dialogEventLiveData;
    public final FeedDatabaseManager feedDatabaseManager;
    public final LambdaSubscriber groupsDisposable;
    public final MutableLiveData groupsLiveData;
    public final MutableLiveData mutableDialogEventLiveData;

    public FeedGroupReorderDialogViewModel(Application application) {
        application.getClass();
        FeedDatabaseManager feedDatabaseManager = new FeedDatabaseManager(application);
        this.feedDatabaseManager = feedDatabaseManager;
        MutableLiveData mutableLiveData = new MutableLiveData();
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.mutableDialogEventLiveData = mutableLiveData2;
        this.groupsLiveData = mutableLiveData;
        this.dialogEventLiveData = mutableLiveData2;
        FlowableSubscribeOn subscribeOn = new FlowableSkip(feedDatabaseManager.feedGroupTable.getAll(), 1).subscribeOn(Schedulers.IO);
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new FeedGroupDialogViewModel$feedGroupDisposable$1(mutableLiveData, 2), Functions.ON_ERROR_MISSING);
        subscribeOn.subscribe((FlowableSubscriber) lambdaSubscriber);
        this.groupsDisposable = lambdaSubscriber;
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        CallbackCompletableObserver callbackCompletableObserver = this.actionProcessingDisposable;
        if (callbackCompletableObserver != null) {
            DisposableHelper.dispose(callbackCompletableObserver);
        }
        LambdaSubscriber lambdaSubscriber = this.groupsDisposable;
        lambdaSubscriber.getClass();
        SubscriptionHelper.cancel(lambdaSubscriber);
    }
}

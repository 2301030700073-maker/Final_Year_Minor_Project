package org.schabi.newpipe.local.feed.service;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.ui.node.Owner;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationManagerCompat;
import coil3.decode.StaticImageDecoderKt;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.BiConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableDoOnEach;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMap;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.internal.subscribers.LambdaSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import kotlin.jvm.internal.Intrinsics;
import net.newpipe.app.AppKt;
import okhttp3.ConnectionPool;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedLoadService extends Service {
    public static final Companion Companion = new Companion();
    public MainActivity.AnonymousClass3 broadcastReceiver;
    public FeedLoadManager feedLoadManager;
    public BiConsumerSingleObserver loadingDisposable;
    public NotificationCompat$Builder notificationBuilder;
    public LambdaSubscriber notificationDisposable;
    public NotificationManagerCompat notificationManager;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RequestException extends Exception {
        private final long subscriptionId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestException(String str, Throwable th, long j) {
            super(str, th);
            th.getClass();
            this.subscriptionId = j;
        }

        public final long getSubscriptionId() {
            return this.subscriptionId;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getClass();
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.feedLoadManager = new FeedLoadManager(this);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        int i3 = MainActivity.$r8$clinit;
        int i4 = 2;
        if (intent == null || this.loadingDisposable != null) {
            return 2;
        }
        this.notificationManager = new NotificationManagerCompat(this);
        PendingIntent broadcast = PendingIntent.getBroadcast(this, 7293450, new Intent("org.schabi.newpipe.local.feed.service.FeedLoadService.CANCEL"), 67108864);
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(this, getString(R.string.notification_channel_id));
        notificationCompat$Builder.setFlag(2, true);
        notificationCompat$Builder.setProgress(-1, -1, true);
        notificationCompat$Builder.mNotification.icon = R.drawable.ic_newpipe_triangle_white;
        notificationCompat$Builder.mVisibility = 1;
        notificationCompat$Builder.mActions.add(new NotificationCompat$Action(0, getString(R.string.cancel), broadcast));
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(getString(R.string.feed_notification_loading));
        this.notificationBuilder = notificationCompat$Builder;
        FeedViewModel$$ExternalSyntheticLambda0 feedViewModel$$ExternalSyntheticLambda0 = new FeedViewModel$$ExternalSyntheticLambda0(11);
        FeedLoadManager feedLoadManager = this.feedLoadManager;
        if (feedLoadManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedLoadManager");
            throw null;
        }
        FlowableMap flowableMap = feedLoadManager.notification;
        flowableMap.getClass();
        int i5 = Flowable.BUFFER_SIZE;
        Functions.verifyPositive(i5, "prefetch");
        FlowableObserveOn observeOn = new FlowableObserveOn(flowableMap, feedViewModel$$ExternalSyntheticLambda0, i5, i4).observeOn(AndroidSchedulers.mainThread());
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 15);
        FlowableDoOnEach flowableDoOnEach = new FlowableDoOnEach(observeOn, Functions.EMPTY_CONSUMER, new ConnectionPool(onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0, 14), onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0);
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(new FeedLoadService$onStartCommand$1(this, 2), Functions.ON_ERROR_MISSING);
        flowableDoOnEach.subscribe((FlowableSubscriber) lambdaSubscriber);
        this.notificationDisposable = lambdaSubscriber;
        MainActivity.AnonymousClass3 anonymousClass3 = new MainActivity.AnonymousClass3(this, 4);
        this.broadcastReceiver = anonymousClass3;
        StaticImageDecoderKt.registerReceiver(this, anonymousClass3, new IntentFilter("org.schabi.newpipe.local.feed.service.FeedLoadService.CANCEL"), 4);
        long longExtra = intent.getLongExtra("FeedLoadService.EXTRA_GROUP_ID", -1L);
        FeedLoadManager feedLoadManager2 = this.feedLoadManager;
        if (feedLoadManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedLoadManager");
            throw null;
        }
        SingleMap startLoading = feedLoadManager2.startLoading(longExtra, false);
        Scheduler mainThread = AndroidSchedulers.mainThread();
        FeedLoadService$onStartCommand$1 feedLoadService$onStartCommand$1 = new FeedLoadService$onStartCommand$1(this, 0);
        BiConsumerSingleObserver biConsumerSingleObserver = new BiConsumerSingleObserver(new FeedLoadService$onStartCommand$1(this, 1));
        try {
            try {
                startLoading.subscribe(new SingleObserveOn.ObserveOnSingleObserver(new FeedLoadManager$startLoading$8(biConsumerSingleObserver, feedLoadService$onStartCommand$1), mainThread));
                this.loadingDisposable = biConsumerSingleObserver;
                return 2;
            } catch (NullPointerException e) {
                throw e;
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
                nullPointerException.initCause(th);
                throw nullPointerException;
            }
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th2) {
            throw Owner.CC.m(th2, "subscribeActual failed", th2);
        }
    }

    public final void stopService() {
        MainActivity.AnonymousClass3 anonymousClass3 = this.broadcastReceiver;
        if (anonymousClass3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("broadcastReceiver");
            throw null;
        }
        unregisterReceiver(anonymousClass3);
        BiConsumerSingleObserver biConsumerSingleObserver = this.loadingDisposable;
        if (biConsumerSingleObserver != null) {
            biConsumerSingleObserver.dispose();
        }
        LambdaSubscriber lambdaSubscriber = this.notificationDisposable;
        if (lambdaSubscriber != null) {
            SubscriptionHelper.cancel(lambdaSubscriber);
        }
        NavUtils.stopForeground(this);
        stopSelf();
    }
}

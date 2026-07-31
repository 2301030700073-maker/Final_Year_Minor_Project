package org.schabi.newpipe.local.feed.service;

import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.internal.operators.completable.CompletableObserveOn;
import io.reactivex.rxjava3.internal.operators.completable.CompletablePeek;
import io.reactivex.rxjava3.internal.operators.completable.CompletableToSingle;
import io.reactivex.rxjava3.processors.BehaviorProcessor;
import io.reactivex.rxjava3.processors.PublishProcessor;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.local.feed.service.FeedEventManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedLoadManager$notification$1 implements Consumer, Function, Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FeedLoadManager this$0;

    public /* synthetic */ FeedLoadManager$notification$1(FeedLoadManager feedLoadManager, int i) {
        this.$r8$classId = i;
        this.this$0 = feedLoadManager;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        FeedLoadManager feedLoadManager = this.this$0;
        switch (i) {
            case 1:
                List list = (List) obj;
                list.getClass();
                AppDatabase appDatabase = feedLoadManager.feedDatabaseManager.database;
                WorkerKt$$ExternalSyntheticLambda2 workerKt$$ExternalSyntheticLambda2 = new WorkerKt$$ExternalSyntheticLambda2(15, list, this, feedLoadManager);
                appDatabase.getClass();
                appDatabase.runInTransaction(new Worker$$ExternalSyntheticLambda0(workerKt$$ExternalSyntheticLambda2, 15));
                break;
            case 2:
                Notification notification = (Notification) obj;
                notification.getClass();
                AtomicInteger atomicInteger = feedLoadManager.currentProgress;
                atomicInteger.incrementAndGet();
                PublishProcessor publishProcessor = feedLoadManager.notificationUpdater;
                FeedUpdateInfo feedUpdateInfo = (FeedUpdateInfo) notification.getValue();
                String str = feedUpdateInfo != null ? feedUpdateInfo.name : null;
                publishProcessor.onNext(str != null ? str : "");
                BehaviorProcessor behaviorProcessor = FeedEventManager.processor;
                FeedEventManager.processor.onNext(new FeedEventManager.Event.ProgressEvent(atomicInteger.get(), feedLoadManager.maxProgress.get(), 0));
                break;
            case 3:
                ((Disposable) obj).getClass();
                feedLoadManager.currentProgress.set(-1);
                feedLoadManager.maxProgress.set(-1);
                feedLoadManager.notificationUpdater.onNext(feedLoadManager.context.getString(R.string.feed_processing_message));
                FeedEventManager.processor.onNext(new FeedEventManager.Event.ProgressEvent(-1, -1, R.string.feed_processing_message));
                break;
            case 4:
                List list2 = (List) obj;
                list2.getClass();
                feedLoadManager.currentProgress.set(0);
                feedLoadManager.maxProgress.set(list2.size());
                break;
            default:
                ((List) obj).getClass();
                feedLoadManager.notificationUpdater.onNext("");
                BehaviorProcessor behaviorProcessor2 = FeedEventManager.processor;
                FeedEventManager.processor.onNext(new FeedEventManager.Event.ProgressEvent(feedLoadManager.currentProgress.get(), feedLoadManager.maxProgress.get(), 0));
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        int i = this.$r8$classId;
        FeedLoadManager feedLoadManager = this.this$0;
        switch (i) {
            case 0:
                String str = (String) obj;
                str.getClass();
                return new FeedLoadState(str, feedLoadManager.maxProgress.get(), feedLoadManager.currentProgress.get());
            default:
                List list = (List) obj;
                list.getClass();
                CompletableObserveOn subscribeOn = new CompletablePeek(new CompletableFromAction(new ReportExecutor$$ExternalSyntheticLambda0(feedLoadManager, 27), 2), new FeedLoadManager$notification$1(feedLoadManager, 3), Functions.EMPTY_CONSUMER).subscribeOn(Schedulers.IO);
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    CollectionsKt__MutableCollectionsKt.addAll((Iterable) it.next(), arrayList);
                }
                return new CompletableToSingle(subscribeOn, arrayList);
        }
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object obj) {
        boolean z;
        int i = this.$r8$classId;
        FeedLoadManager feedLoadManager = this.this$0;
        switch (i) {
            case 6:
                ((SubscriptionEntity) obj).getClass();
                z = feedLoadManager.cancelSignal.get();
                break;
            default:
                ((SubscriptionEntity) obj).getClass();
                z = feedLoadManager.cancelSignal.get();
                break;
        }
        return !z;
    }
}

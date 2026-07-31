package org.schabi.newpipe.local.feed.notifications;

import android.content.Context;
import android.os.Build;
import androidx.room.TransactionExecutor;
import androidx.work.Constraints;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.Logger$LogcatLogger;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.OperationKt;
import androidx.work.PeriodicWorkRequest;
import androidx.work.SystemClock;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkManagerImpl$$ExternalSyntheticLambda0;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import androidx.work.rxjava3.RxWorker;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleDoOnError;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.internal.operators.single.SingleOnErrorReturn;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.concurrent.TimeUnit;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.ranges.RangesKt;
import org.koin.core.scope.Scope$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.feed.notifications.NotificationHelper;
import org.schabi.newpipe.local.feed.service.FeedLoadManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationWorker extends RxWorker {
    public static final Companion Companion = new Companion();
    public final FeedLoadManager feedLoadManager;
    public final SynchronizedLazyImpl notificationHelper$delegate;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static void cancel(Context context) {
            WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(context);
            SystemClock systemClock = instance$1.mConfiguration.tracer;
            String concat = "CancelWorkByTag_".concat("org.schabi.newpipe_streams_notifications");
            TransactionExecutor transactionExecutor = (TransactionExecutor) instance$1.mWorkTaskExecutor.executorServiceOrNull;
            transactionExecutor.getClass();
            OperationKt.launchOperation(systemClock, concat, transactionExecutor, new WorkManagerImpl$$ExternalSyntheticLambda0(instance$1, 1));
        }

        public static void schedule(Context context, ScheduleOptions scheduleOptions, boolean z) {
            Constraints constraints = new Constraints(new NetworkRequestCompat(null), scheduleOptions.isRequireNonMeteredNetwork ? NetworkType.UNMETERED : NetworkType.CONNECTED, false, false, false, false, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? CollectionsKt.toSet(new LinkedHashSet()) : EmptySet.INSTANCE);
            long j = scheduleOptions.interval;
            TimeUnit.MILLISECONDS.getClass();
            OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(1, NotificationWorker.class);
            WorkSpec workSpec = builder.workSpec;
            workSpec.getClass();
            String str = WorkSpec.TAG;
            if (j < 900000) {
                Logger$LogcatLogger.get().warning(str, "Interval duration lesser than minimum allowed value; Changed to 900000");
            }
            long j2 = j < 900000 ? 900000L : j;
            long j3 = j < 900000 ? 900000L : j;
            if (j2 < 900000) {
                Logger$LogcatLogger.get().warning(str, "Interval duration lesser than minimum allowed value; Changed to 900000");
            }
            workSpec.intervalDuration = j2 >= 900000 ? j2 : 900000L;
            if (j3 < 300000) {
                Logger$LogcatLogger.get().warning(str, "Flex duration lesser than minimum allowed value; Changed to 300000");
            }
            if (j3 > workSpec.intervalDuration) {
                Logger$LogcatLogger.get().warning(str, "Flex duration greater than interval duration; Changed to " + j2);
            }
            workSpec.flexDuration = RangesKt.coerceIn(j3, 300000L, workSpec.intervalDuration);
            builder.workSpec.constraints = constraints;
            builder.tags.add("org.schabi.newpipe_streams_notifications");
            PeriodicWorkRequest periodicWorkRequest = (PeriodicWorkRequest) builder.build();
            WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(context);
            ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy = ExistingPeriodicWorkPolicy.KEEP;
            ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy2 = z ? ExistingPeriodicWorkPolicy.CANCEL_AND_REENQUEUE : existingPeriodicWorkPolicy;
            if (existingPeriodicWorkPolicy2 != ExistingPeriodicWorkPolicy.UPDATE) {
                new WorkContinuationImpl(instance$1, "org.schabi.newpipe_streams_notifications", existingPeriodicWorkPolicy2 == existingPeriodicWorkPolicy ? ExistingWorkPolicy.KEEP : ExistingWorkPolicy.REPLACE, Collections.singletonList(periodicWorkRequest), 0).enqueue();
                return;
            }
            SystemClock systemClock = instance$1.mConfiguration.tracer;
            String concat = "enqueueUniquePeriodic_".concat("org.schabi.newpipe_streams_notifications");
            TransactionExecutor transactionExecutor = (TransactionExecutor) instance$1.mWorkTaskExecutor.executorServiceOrNull;
            transactionExecutor.getClass();
            OperationKt.launchOperation(systemClock, concat, transactionExecutor, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(instance$1, periodicWorkRequest, 12));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.notificationHelper$delegate = new SynchronizedLazyImpl(new Scope$$ExternalSyntheticLambda0(context, 6));
        this.feedLoadManager = new FeedLoadManager(context);
    }

    @Override // androidx.work.rxjava3.RxWorker
    public final Single createWork() {
        Companion companion = Companion;
        Context context = this.mAppContext;
        context.getClass();
        companion.getClass();
        NotificationHelper.Companion.getClass();
        if (!NotificationHelper.Companion.areNewStreamsNotificationsEnabled(context) || !NotificationHelper.Companion.areNotificationsEnabledOnDevice(context)) {
            return new SingleAmb(new ListenableWorker.Result.Success(), 4);
        }
        int i = 1;
        int i2 = 0;
        return new SingleOnErrorReturn(new SingleDoOnError(new SingleMap(new SingleObserveOn(new SingleMap(new SingleDoOnError(this.feedLoadManager.startLoading(-2L, true), new NotificationWorker$createWork$1(this, i2), i), NotificationWorker$createWork$2.INSTANCE, i2), AndroidSchedulers.mainThread(), 0), new NotificationWorker$createWork$1(this, i), i2), new NotificationWorker$createWork$1(this, 2), i2), null, new ListenableWorker.Result.Failure());
    }
}

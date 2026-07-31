package androidx.work.impl.foreground;

import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.core.app.ActivityRecreator;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.room.TransactionExecutor;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.impl.WorkManagerImpl;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import java.util.UUID;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SystemForegroundService extends Service implements LifecycleOwner {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("SystemFgService");
    public final ProcessFinisher dispatcher = new ProcessFinisher(this);
    public SystemForegroundDispatcher mDispatcher;
    public boolean mIsShutdown;
    public NotificationManager mNotificationManager;

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle getLifecycle() {
        return (LifecycleRegistry) this.dispatcher.context;
    }

    public final void initializeDispatcher() {
        this.mNotificationManager = (NotificationManager) getApplicationContext().getSystemService("notification");
        SystemForegroundDispatcher systemForegroundDispatcher = new SystemForegroundDispatcher(getApplicationContext());
        this.mDispatcher = systemForegroundDispatcher;
        if (systemForegroundDispatcher.mCallback != null) {
            Logger$LogcatLogger.get().error(SystemForegroundDispatcher.TAG, "A callback already exists.");
        } else {
            systemForegroundDispatcher.mCallback = this;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getClass();
        ProcessFinisher processFinisher = this.dispatcher;
        processFinisher.getClass();
        processFinisher.postDispatchRunnable(Lifecycle.Event.ON_START);
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        onCreate$androidx$lifecycle$LifecycleService();
        initializeDispatcher();
    }

    public final void onCreate$androidx$lifecycle$LifecycleService() {
        ProcessFinisher processFinisher = this.dispatcher;
        processFinisher.getClass();
        processFinisher.postDispatchRunnable(Lifecycle.Event.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        onDestroy$androidx$lifecycle$LifecycleService();
        this.mDispatcher.onDestroy();
    }

    public final void onDestroy$androidx$lifecycle$LifecycleService() {
        ProcessFinisher processFinisher = this.dispatcher;
        processFinisher.getClass();
        processFinisher.postDispatchRunnable(Lifecycle.Event.ON_STOP);
        processFinisher.postDispatchRunnable(Lifecycle.Event.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i) {
        ProcessFinisher processFinisher = this.dispatcher;
        processFinisher.getClass();
        processFinisher.postDispatchRunnable(Lifecycle.Event.ON_START);
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        boolean z = this.mIsShutdown;
        boolean z2 = false;
        String str = TAG;
        if (z) {
            Logger$LogcatLogger.get().info(str, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.mDispatcher.onDestroy();
            initializeDispatcher();
            this.mIsShutdown = false;
        }
        if (intent == null) {
            return 3;
        }
        SystemForegroundDispatcher systemForegroundDispatcher = this.mDispatcher;
        systemForegroundDispatcher.getClass();
        String str2 = SystemForegroundDispatcher.TAG;
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            Logger$LogcatLogger.get().info(str2, "Started foreground service " + intent);
            String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            ((TransactionExecutor) systemForegroundDispatcher.mTaskExecutor.executorServiceOrNull).execute(new ActivityRecreator.AnonymousClass1(11, systemForegroundDispatcher, stringExtra, z2));
            systemForegroundDispatcher.handleNotify(intent);
            return 3;
        }
        if ("ACTION_NOTIFY".equals(action)) {
            systemForegroundDispatcher.handleNotify(intent);
            return 3;
        }
        if (!"ACTION_CANCEL_WORK".equals(action)) {
            if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                return 3;
            }
            Logger$LogcatLogger.get().info(str2, "Stopping foreground service");
            SystemForegroundService systemForegroundService = systemForegroundDispatcher.mCallback;
            if (systemForegroundService == null) {
                return 3;
            }
            systemForegroundService.mIsShutdown = true;
            Logger$LogcatLogger.get().debug(str, "Shutting down.");
            if (Build.VERSION.SDK_INT >= 26) {
                systemForegroundService.stopForeground(true);
            }
            systemForegroundService.stopSelf(i2);
            return 3;
        }
        Logger$LogcatLogger.get().info(str2, "Stopping foreground work for " + intent);
        String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra2 == null || TextUtils.isEmpty(stringExtra2)) {
            return 3;
        }
        WorkManagerImpl workManagerImpl = systemForegroundDispatcher.mWorkManagerImpl;
        UUID fromString = UUID.fromString(stringExtra2);
        workManagerImpl.getClass();
        fromString.getClass();
        SystemClock systemClock = workManagerImpl.mConfiguration.tracer;
        TransactionExecutor transactionExecutor = (TransactionExecutor) workManagerImpl.mWorkTaskExecutor.executorServiceOrNull;
        transactionExecutor.getClass();
        OperationKt.launchOperation(systemClock, "CancelWorkById", transactionExecutor, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(workManagerImpl, fromString, 15));
        return 3;
    }

    @Override // android.app.Service
    public final void onTimeout(int i) {
        if (Build.VERSION.SDK_INT >= 35) {
            return;
        }
        this.mDispatcher.onTimeout(i, 2048);
    }

    public final void onTimeout(int i, int i2) {
        this.mDispatcher.onTimeout(i, i2);
    }
}

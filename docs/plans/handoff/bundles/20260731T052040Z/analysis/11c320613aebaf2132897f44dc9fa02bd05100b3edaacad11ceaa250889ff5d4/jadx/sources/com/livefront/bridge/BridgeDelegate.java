package com.livefront.bridge;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.ActivityRecreator;
import androidx.core.provider.FontRequestWorker;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1;
import androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.HeaderBehavior;
import com.livefront.bridge.disk.FileDiskHandler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.schedulers.ExecutorScheduler;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.JobKt;
import okio.ByteString;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.builder.LastActivityManager;
import org.schabi.newpipe.App;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BridgeDelegate {
    public final FileDiskHandler mDiskHandler;
    public final ExecutorService mExecutorService;
    public final ByteString.Companion mSavedStateHandler;
    public final CopyOnWriteArrayList mPendingWriteTasks = new CopyOnWriteArrayList();
    public final ConcurrentHashMap mUuidBundleMap = new ConcurrentHashMap();
    public final WeakHashMap mObjectUuidMap = new WeakHashMap();
    public int mActivityCount = 0;
    public boolean mIsConfigChange = false;
    public boolean mIsFirstCreateCall = true;
    public volatile CountDownLatch mPendingWriteTasksLatch = null;

    public BridgeDelegate(App app, ExecutorService executorService, ByteString.Companion companion) {
        this.mSavedStateHandler = companion;
        this.mExecutorService = executorService;
        this.mDiskHandler = new FileDiskHandler(app, executorService);
        ((Application) app.getApplicationContext()).registerActivityLifecycleCallbacks(new AnonymousClass4(this, 0));
        app.getSharedPreferences("com.livefront.bridge.BridgeDelegate", 0).edit().clear().apply();
    }

    public static boolean access$800(BridgeDelegate bridgeDelegate, Activity activity, Bundle bundle) {
        if (bridgeDelegate.mIsFirstCreateCall) {
            bridgeDelegate.mIsFirstCreateCall = false;
            if (bundle == null) {
                List<ActivityManager.AppTask> appTasks = ((ActivityManager) activity.getSystemService("activity")).getAppTasks();
                if (appTasks.size() == 1 && appTasks.get(0).getTaskInfo().numActivities == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.livefront.bridge.BridgeDelegate$3, reason: invalid class name */
    public final class AnonymousClass3 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public Object this$0;
        public Object val$bundle;
        public Object val$uuid;

        public AnonymousClass3(CancellableContinuationImpl cancellableContinuationImpl, RoomDatabase roomDatabase, RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1) {
            this.$r8$classId = 2;
            this.val$uuid = cancellableContinuationImpl;
            this.val$bundle = roomDatabase;
            this.this$0 = roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            OverScroller overScroller;
            Object obj = null;
            switch (this.$r8$classId) {
                case 0:
                    BridgeDelegate bridgeDelegate = (BridgeDelegate) this.this$0;
                    String str = (String) this.val$uuid;
                    Bundle bundle = (Bundle) this.val$bundle;
                    bridgeDelegate.getClass();
                    Parcel obtain = Parcel.obtain();
                    obtain.writeBundle(bundle);
                    byte[] marshall = obtain.marshall();
                    obtain.recycle();
                    FileDiskHandler fileDiskHandler = bridgeDelegate.mDiskHandler;
                    ((ConcurrentHashMap) fileDiskHandler.mKeyByteMap).put(str, marshall);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(new File((File) fileDiskHandler.mDirectory, str));
                        try {
                            fileOutputStream.write(marshall);
                        } catch (IOException unused) {
                        } catch (Throwable th) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                            throw th;
                        }
                        fileOutputStream.close();
                    } catch (FileNotFoundException | IOException unused3) {
                    }
                    if (!((BridgeDelegate) this.this$0).mUuidBundleMap.containsKey((String) this.val$uuid)) {
                        BridgeDelegate bridgeDelegate2 = (BridgeDelegate) this.this$0;
                        String str2 = (String) this.val$uuid;
                        bridgeDelegate2.getClass();
                        bridgeDelegate2.mExecutorService.execute(new ActivityRecreator.AnonymousClass1(13, bridgeDelegate2, str2, false));
                    }
                    ((BridgeDelegate) this.this$0).mPendingWriteTasks.remove(this);
                    if (!((BridgeDelegate) this.this$0).mPendingWriteTasks.isEmpty() || ((BridgeDelegate) this.this$0).mPendingWriteTasksLatch == null) {
                        return;
                    }
                    ((BridgeDelegate) this.this$0).mPendingWriteTasksLatch.countDown();
                    return;
                case 1:
                    try {
                        obj = ((FontRequestWorker.AnonymousClass1) this.val$uuid).call();
                    } catch (Exception unused4) {
                    }
                    ((Handler) this.this$0).post(new ActivityRecreator.AnonymousClass1((FontRequestWorker.AnonymousClass2) this.val$bundle, obj, 4));
                    return;
                case 2:
                    CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.val$uuid;
                    try {
                        JobKt.runBlocking(cancellableContinuationImpl.context.minusKey(ContinuationInterceptor$Key.$$INSTANCE), new RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1((RoomDatabase) this.val$bundle, cancellableContinuationImpl, (RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1) this.this$0, null));
                        return;
                    } catch (Throwable th2) {
                        cancellableContinuationImpl.cancel(th2);
                        return;
                    }
                case 3:
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.val$uuid;
                    HeaderBehavior headerBehavior = (HeaderBehavior) this.this$0;
                    View view = (View) this.val$bundle;
                    if (view == null || (overScroller = headerBehavior.scroller) == null) {
                        return;
                    }
                    if (overScroller.computeScrollOffset()) {
                        headerBehavior.setHeaderTopBottomOffset(coordinatorLayout, view, headerBehavior.scroller.getCurrY());
                        view.postOnAnimation(this);
                        return;
                    }
                    AppBarLayout appBarLayout = (AppBarLayout) view;
                    ((AppBarLayout.BaseBehavior) headerBehavior).snapToChildIfNeeded(coordinatorLayout, appBarLayout);
                    if (appBarLayout.liftOnScroll) {
                        appBarLayout.setLiftedState(appBarLayout.shouldLift(AppBarLayout.BaseBehavior.findFirstScrollingChild(coordinatorLayout)));
                        return;
                    }
                    return;
                default:
                    DisposableHelper.replace((SequentialDisposable) this.val$uuid, ((ExecutorScheduler.ExecutorWorker) this.this$0).schedule((Runnable) this.val$bundle));
                    return;
            }
        }

        public /* synthetic */ AnonymousClass3(int i, Object obj, Object obj2, Object obj3) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.val$uuid = obj2;
            this.val$bundle = obj3;
        }

        public /* synthetic */ AnonymousClass3() {
            this.$r8$classId = 1;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.livefront.bridge.BridgeDelegate$4, reason: invalid class name */
    public final class AnonymousClass4 implements Application.ActivityLifecycleCallbacks {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass4(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    BridgeDelegate bridgeDelegate = (BridgeDelegate) obj;
                    bridgeDelegate.mIsConfigChange = false;
                    if (BridgeDelegate.access$800(bridgeDelegate, activity, bundle)) {
                        bridgeDelegate.mUuidBundleMap.clear();
                        bridgeDelegate.mObjectUuidMap.clear();
                        bridgeDelegate.mExecutorService.execute(new LiveData.AnonymousClass1(bridgeDelegate, 18));
                        break;
                    }
                    break;
                default:
                    activity.getClass();
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    ((LastActivityManager) obj).activityStack.add(activity);
                    break;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            switch (this.$r8$classId) {
                case 0:
                    activity.isFinishing();
                    return;
                default:
                    activity.getClass();
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    LastActivityManager lastActivityManager = (LastActivityManager) this.this$0;
                    ReentrantLock reentrantLock = lastActivityManager.lock;
                    reentrantLock.lock();
                    try {
                        lastActivityManager.activityStack.remove(activity);
                        lastActivityManager.destroyedCondition.signalAll();
                        return;
                    } finally {
                        reentrantLock.unlock();
                    }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            switch (this.$r8$classId) {
                case 0:
                    ((BridgeDelegate) this.this$0).mIsConfigChange = activity.isChangingConfigurations();
                    break;
                default:
                    activity.getClass();
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    break;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            switch (this.$r8$classId) {
                case 0:
                    break;
                default:
                    activity.getClass();
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    break;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            switch (this.$r8$classId) {
                case 0:
                    break;
                default:
                    activity.getClass();
                    bundle.getClass();
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    break;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            switch (this.$r8$classId) {
                case 0:
                    ((BridgeDelegate) this.this$0).mActivityCount++;
                    break;
                default:
                    activity.getClass();
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    break;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            switch (this.$r8$classId) {
                case 0:
                    BridgeDelegate bridgeDelegate = (BridgeDelegate) this.this$0;
                    bridgeDelegate.mActivityCount--;
                    break;
                default:
                    activity.getClass();
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    break;
            }
        }

        private final void onActivityResumed$com$livefront$bridge$BridgeDelegate$4(Activity activity) {
        }

        private final void onActivitySaveInstanceState$com$livefront$bridge$BridgeDelegate$4(Activity activity, Bundle bundle) {
        }
    }
}

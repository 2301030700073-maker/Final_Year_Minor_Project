package androidx.core.app;

import android.animation.Animator;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.Window;
import androidx.core.content.res.CamUtils;
import androidx.core.provider.FontRequestWorker;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.AsyncPagingDataDiffer;
import androidx.paging.CombinedLoadStates;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.TransactionExecutor;
import androidx.transition.Transition;
import androidx.work.Constraints;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.background.greedy.DelayedWorkTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkSpec;
import com.skydoves.balloon.Balloon$$ExternalSyntheticLambda3;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.ExecutorCoroutineDispatcherImpl;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.LimitedDispatcher;
import okhttp3.HttpUrl;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.edit.EditSuccessResult;
import org.wikipedia.games.onthisday.OnThisDayGamePlayFragment;
import retrofit2.KotlinExtensions$suspendAndThrow$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ActivityRecreator {
    public static final Class activityThreadClass;
    public static final Handler mainHandler = new Handler(Looper.getMainLooper());
    public static final Field mainThreadField;
    public static final Method performStopActivity2ParamsMethod;
    public static final Method performStopActivity3ParamsMethod;
    public static final Method requestRelaunchActivityMethod;
    public static final Field tokenField;

    /* JADX WARN: Can't wrap try/catch for region: R(22:0|1|(2:2|3)|4|5|6|7|8|9|10|(12:33|34|13|(6:29|30|16|(3:24|25|26)|20|21)|15|16|(1:18)|24|25|26|20|21)|12|13|(0)|15|16|(0)|24|25|26|20|21) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<android.app.Activity> r0 = android.app.Activity.class
            android.os.Handler r1 = new android.os.Handler
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            r1.<init>(r2)
            androidx.core.app.ActivityRecreator.mainHandler = r1
            r1 = 0
            java.lang.String r2 = "android.app.ActivityThread"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Throwable -> L15
            goto L16
        L15:
            r2 = r1
        L16:
            androidx.core.app.ActivityRecreator.activityThreadClass = r2
            r2 = 1
            java.lang.String r3 = "mMainThread"
            java.lang.reflect.Field r3 = r0.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L23
            r3.setAccessible(r2)     // Catch: java.lang.Throwable -> L23
            goto L24
        L23:
            r3 = r1
        L24:
            androidx.core.app.ActivityRecreator.mainThreadField = r3
            java.lang.String r3 = "mToken"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L30
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L30
            goto L31
        L30:
            r0 = r1
        L31:
            androidx.core.app.ActivityRecreator.tokenField = r0
            java.lang.Class r0 = androidx.core.app.ActivityRecreator.activityThreadClass
            r3 = 3
            r4 = 2
            r5 = 0
            java.lang.Class r6 = java.lang.Boolean.TYPE
            java.lang.Class<android.os.IBinder> r7 = android.os.IBinder.class
            java.lang.String r8 = "performStopActivity"
            if (r0 != 0) goto L42
        L40:
            r0 = r1
            goto L53
        L42:
            java.lang.Class[] r9 = new java.lang.Class[r3]     // Catch: java.lang.Throwable -> L40
            r9[r5] = r7     // Catch: java.lang.Throwable -> L40
            r9[r2] = r6     // Catch: java.lang.Throwable -> L40
            java.lang.Class<java.lang.String> r10 = java.lang.String.class
            r9[r4] = r10     // Catch: java.lang.Throwable -> L40
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r8, r9)     // Catch: java.lang.Throwable -> L40
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L40
        L53:
            androidx.core.app.ActivityRecreator.performStopActivity3ParamsMethod = r0
            java.lang.Class r0 = androidx.core.app.ActivityRecreator.activityThreadClass
            if (r0 != 0) goto L5b
        L59:
            r0 = r1
            goto L68
        L5b:
            java.lang.Class[] r9 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L59
            r9[r5] = r7     // Catch: java.lang.Throwable -> L59
            r9[r2] = r6     // Catch: java.lang.Throwable -> L59
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r8, r9)     // Catch: java.lang.Throwable -> L59
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L59
        L68:
            androidx.core.app.ActivityRecreator.performStopActivity2ParamsMethod = r0
            java.lang.Class r0 = androidx.core.app.ActivityRecreator.activityThreadClass
            int r8 = android.os.Build.VERSION.SDK_INT
            r9 = 26
            if (r8 == r9) goto L76
            r9 = 27
            if (r8 != r9) goto La5
        L76:
            if (r0 != 0) goto L79
            goto La5
        L79:
            java.lang.String r8 = "requestRelaunchActivity"
            r9 = 9
            java.lang.Class[] r9 = new java.lang.Class[r9]     // Catch: java.lang.Throwable -> La5
            r9[r5] = r7     // Catch: java.lang.Throwable -> La5
            java.lang.Class<java.util.List> r5 = java.util.List.class
            r9[r2] = r5     // Catch: java.lang.Throwable -> La5
            r9[r4] = r5     // Catch: java.lang.Throwable -> La5
            java.lang.Class r4 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> La5
            r9[r3] = r4     // Catch: java.lang.Throwable -> La5
            r3 = 4
            r9[r3] = r6     // Catch: java.lang.Throwable -> La5
            java.lang.Class<android.content.res.Configuration> r3 = android.content.res.Configuration.class
            r4 = 5
            r9[r4] = r3     // Catch: java.lang.Throwable -> La5
            r4 = 6
            r9[r4] = r3     // Catch: java.lang.Throwable -> La5
            r3 = 7
            r9[r3] = r6     // Catch: java.lang.Throwable -> La5
            r3 = 8
            r9[r3] = r6     // Catch: java.lang.Throwable -> La5
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r8, r9)     // Catch: java.lang.Throwable -> La5
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> La5
            r1 = r0
        La5:
            androidx.core.app.ActivityRecreator.requestRelaunchActivityMethod = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.ActivityRecreator.<clinit>():void");
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.core.app.ActivityRecreator$1, reason: invalid class name */
    public final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public Object val$callbacks;
        public final Object val$token;

        public AnonymousClass1(AsyncPagingDataDiffer asyncPagingDataDiffer) {
            this.$r8$classId = 5;
            this.val$token = asyncPagingDataDiffer;
            this.val$callbacks = new AtomicReference(null);
        }

        private final void run$androidx$work$impl$utils$SerialExecutorImpl$Task() {
            try {
                ((Runnable) this.val$token).run();
                synchronized (((TransactionExecutor) this.val$callbacks).syncLock) {
                    ((TransactionExecutor) this.val$callbacks).scheduleNext();
                }
            } catch (Throwable th) {
                synchronized (((TransactionExecutor) this.val$callbacks).syncLock) {
                    ((TransactionExecutor) this.val$callbacks).scheduleNext();
                    throw th;
                }
            }
        }

        private final void run$kotlinx$coroutines$internal$LimitedDispatcher$Worker() {
            int i = 0;
            while (true) {
                try {
                    ((Runnable) this.val$callbacks).run();
                } catch (Throwable th) {
                    AwaitKt.handleCoroutineException(th, EmptyCoroutineContext.INSTANCE);
                }
                Runnable obtainTaskOrDeallocateWorker = ((LimitedDispatcher) this.val$token).obtainTaskOrDeallocateWorker();
                if (obtainTaskOrDeallocateWorker == null) {
                    return;
                }
                try {
                    this.val$callbacks = obtainTaskOrDeallocateWorker;
                    i++;
                    if (i >= 16) {
                        LimitedDispatcher limitedDispatcher = (LimitedDispatcher) this.val$token;
                        if (InlineList.safeIsDispatchNeeded(limitedDispatcher.dispatcher, limitedDispatcher)) {
                            LimitedDispatcher limitedDispatcher2 = (LimitedDispatcher) this.val$token;
                            InlineList.safeDispatch(limitedDispatcher2.dispatcher, limitedDispatcher2, this);
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    LimitedDispatcher limitedDispatcher3 = (LimitedDispatcher) this.val$token;
                    synchronized (limitedDispatcher3.workerAllocationLock) {
                        LimitedDispatcher.runningWorkers$volatile$FU.decrementAndGet(limitedDispatcher3);
                        throw th2;
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (this.$r8$classId) {
                case 0:
                    ((LifecycleCheckCallbacks) this.val$callbacks).currentlyRecreatingToken = this.val$token;
                    return;
                case 1:
                    ((Application) this.val$token).unregisterActivityLifecycleCallbacks((LifecycleCheckCallbacks) this.val$callbacks);
                    return;
                case 2:
                    Object obj = this.val$callbacks;
                    Object obj2 = this.val$token;
                    try {
                        Method method = ActivityRecreator.performStopActivity3ParamsMethod;
                        if (method != null) {
                            method.invoke(obj2, obj, Boolean.FALSE, "AppCompat recreation");
                        } else {
                            ActivityRecreator.performStopActivity2ParamsMethod.invoke(obj2, obj, Boolean.FALSE);
                        }
                        return;
                    } catch (RuntimeException e) {
                        if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                            throw e;
                        }
                        return;
                    } catch (Throwable th) {
                        Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
                        return;
                    }
                case 3:
                    HintHandler hintHandler = (HintHandler) this.val$callbacks;
                    Typeface typeface = (Typeface) this.val$token;
                    CamUtils camUtils = (CamUtils) hintHandler.state;
                    if (camUtils != null) {
                        camUtils.onFontRetrieved(typeface);
                        return;
                    }
                    return;
                case 4:
                    ((FontRequestWorker.AnonymousClass2) this.val$callbacks).accept(this.val$token);
                    return;
                case 5:
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) ((AtomicReference) this.val$callbacks).get();
                    if (combinedLoadStates != null) {
                        Iterator it = ((AsyncPagingDataDiffer) this.val$token).childLoadStateListeners.iterator();
                        while (it.hasNext()) {
                            ((Function1) it.next()).invoke(combinedLoadStates);
                        }
                        return;
                    }
                    return;
                case 6:
                    ItemTouchHelper.AnonymousClass3 anonymousClass3 = (ItemTouchHelper.AnonymousClass3) this.val$callbacks;
                    RecyclerView.ViewHolder viewHolder = anonymousClass3.mViewHolder;
                    ItemTouchHelper itemTouchHelper = (ItemTouchHelper) this.val$token;
                    RecyclerView recyclerView = itemTouchHelper.mRecyclerView;
                    if (recyclerView == null || !recyclerView.mIsAttached || anonymousClass3.mOverridden || viewHolder.getAbsoluteAdapterPosition() == -1) {
                        return;
                    }
                    RecyclerView.ItemAnimator itemAnimator = itemTouchHelper.mRecyclerView.getItemAnimator();
                    if (itemAnimator == null || !itemAnimator.isRunning()) {
                        ArrayList arrayList = itemTouchHelper.mRecoverAnimations;
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            if (((ItemTouchHelper.AnonymousClass3) arrayList.get(i)).mEnded) {
                            }
                        }
                        itemTouchHelper.mCallback.onSwiped(viewHolder);
                        return;
                    }
                    itemTouchHelper.mRecyclerView.post(this);
                    return;
                case 7:
                    Logger$LogcatLogger logger$LogcatLogger = Logger$LogcatLogger.get();
                    String str = DelayedWorkTracker.TAG;
                    StringBuilder sb = new StringBuilder("Scheduling work ");
                    WorkSpec workSpec = (WorkSpec) this.val$callbacks;
                    sb.append(workSpec.id);
                    logger$LogcatLogger.debug(str, sb.toString());
                    ((DelayedWorkTracker) this.val$token).mImmediateScheduler.schedule(workSpec);
                    return;
                case 8:
                    WorkSpec runningWorkSpec = ((SystemForegroundDispatcher) this.val$token).mWorkManagerImpl.mProcessor.getRunningWorkSpec((String) this.val$callbacks);
                    if (runningWorkSpec == null || Intrinsics.areEqual(Constraints.NONE, runningWorkSpec.constraints)) {
                        return;
                    }
                    synchronized (((SystemForegroundDispatcher) this.val$token).mLock) {
                        ((SystemForegroundDispatcher) this.val$token).mWorkSpecById.put(ResultKt.generationalId(runningWorkSpec), runningWorkSpec);
                        SystemForegroundDispatcher systemForegroundDispatcher = (SystemForegroundDispatcher) this.val$token;
                        ((SystemForegroundDispatcher) this.val$token).mTrackedWorkSpecs.put(ResultKt.generationalId(runningWorkSpec), WorkConstraintsTrackerKt.listen(systemForegroundDispatcher.mConstraintsTracker, runningWorkSpec, systemForegroundDispatcher.mTaskExecutor.mTaskDispatcher, systemForegroundDispatcher));
                    }
                    return;
                case 9:
                    run$androidx$work$impl$utils$SerialExecutorImpl$Task();
                    return;
                case 10:
                    View view = (View) this.val$callbacks;
                    if (view.isAttachedToWindow()) {
                        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, (view.getRight() + view.getLeft()) / 2, (view.getBottom() + view.getTop()) / 2, Math.max(view.getWidth(), view.getHeight()), RecyclerView.DECELERATION_RATE);
                        createCircularReveal.setDuration(500L);
                        createCircularReveal.start();
                        createCircularReveal.addListener(new Transition.AnonymousClass3(13, (Balloon$$ExternalSyntheticLambda3) this.val$token));
                        return;
                    }
                    return;
                case 11:
                    ((CancellableContinuationImpl) this.val$token).resumeUndispatched((ExecutorCoroutineDispatcherImpl) this.val$callbacks);
                    return;
                case 12:
                    run$kotlinx$coroutines$internal$LimitedDispatcher$Worker();
                    return;
                case IMAGE_VALUE:
                    EditSectionActivity editSectionActivity = (EditSectionActivity) this.val$callbacks;
                    editSectionActivity.showProgressBar$1(false);
                    Intent intent = new Intent();
                    intent.putExtra("sectionId", editSectionActivity.getViewModel().sectionID);
                    intent.putExtra("revId", ((EditSuccessResult) ((HttpUrl.Companion) this.val$token)).revID);
                    editSectionActivity.setResult(1, intent);
                    Window window = editSectionActivity.getWindow();
                    window.getClass();
                    HintHandler hintHandler2 = new HintHandler(window.getDecorView());
                    int i2 = Build.VERSION.SDK_INT;
                    (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler2) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler2) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler2) : new WindowInsetsControllerCompat$Impl23(window, hintHandler2)).hide();
                    editSectionActivity.finish();
                    return;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    if (((OnThisDayGamePlayFragment) this.val$callbacks).isAdded()) {
                        ((Regex$$ExternalSyntheticLambda0) this.val$token).invoke();
                        return;
                    }
                    return;
                default:
                    ExceptionsKt.intercepted((KotlinExtensions$suspendAndThrow$1) this.val$callbacks).resumeWith(ResultKt.createFailure((Throwable) this.val$token));
                    return;
            }
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2, boolean z) {
            this.$r8$classId = i;
            this.val$token = obj;
            this.val$callbacks = obj2;
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.val$callbacks = obj;
            this.val$token = obj2;
        }

        public AnonymousClass1(ItemTouchHelper itemTouchHelper, ItemTouchHelper.AnonymousClass3 anonymousClass3, int i) {
            this.$r8$classId = 6;
            this.val$token = itemTouchHelper;
            this.val$callbacks = anonymousClass3;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LifecycleCheckCallbacks implements Application.ActivityLifecycleCallbacks {
        public Object currentlyRecreatingToken;
        public Activity mActivity;
        public final int mRecreatingHashCode;
        public boolean mStarted = false;
        public boolean mDestroyed = false;
        public boolean mStopQueued = false;

        public LifecycleCheckCallbacks(Activity activity) {
            this.mActivity = activity;
            this.mRecreatingHashCode = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            if (this.mActivity == activity) {
                this.mActivity = null;
                this.mDestroyed = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            if (!this.mDestroyed || this.mStopQueued || this.mStarted) {
                return;
            }
            Object obj = this.currentlyRecreatingToken;
            try {
                Object obj2 = ActivityRecreator.tokenField.get(activity);
                if (obj2 == obj && activity.hashCode() == this.mRecreatingHashCode) {
                    ActivityRecreator.mainHandler.postAtFrontOfQueue(new AnonymousClass1(2, ActivityRecreator.mainThreadField.get(activity), obj2, false));
                    this.mStopQueued = true;
                    this.currentlyRecreatingToken = null;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while fetching field values", th);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            if (this.mActivity == activity) {
                this.mStarted = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }
    }
}

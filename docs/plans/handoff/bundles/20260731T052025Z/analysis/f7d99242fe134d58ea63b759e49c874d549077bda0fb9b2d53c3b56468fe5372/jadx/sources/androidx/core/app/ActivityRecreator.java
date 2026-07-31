package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.util.Log;
import androidx.biometric.BiometricFragment;
import androidx.biometric.BiometricPrompt;
import androidx.biometric.BiometricViewModel;
import androidx.camera.core.impl.utils.futures.ChainingListenableFuture;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.Edge;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.core.content.res.CamUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.Fragment;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroupAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.TransactionExecutor;
import androidx.work.Constraints;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.background.greedy.DelayedWorkTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkSpec;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import com.bumptech.glide.manager.FirstFrameWaiter;
import com.bumptech.glide.util.Util;
import com.fsck.k9.activity.AlternateRecipientAdapter;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.MessageLoaderHelper;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract;
import com.fsck.k9.ui.messagelist.MessageListHandler;
import com.fsck.k9.ui.messageview.AttachmentController$SaveAttachmentAsyncTask;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.settings.general.GeneralSettingsFragment;
import com.fsck.k9.view.RecipientSelectView;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorCoroutineDispatcherImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.LimitedDispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.core.app.ActivityRecreator$1, reason: invalid class name */
    public final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public Object val$callbacks;
        public final Object val$token;

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.val$callbacks = obj;
            this.val$token = obj2;
        }

        private final void run$androidx$work$impl$foreground$SystemForegroundDispatcher$1() {
            WorkSpec runningWorkSpec = ((SystemForegroundDispatcher) this.val$token).mWorkManagerImpl.mProcessor.getRunningWorkSpec((String) this.val$callbacks);
            if (runningWorkSpec == null || Intrinsics.areEqual(Constraints.NONE, runningWorkSpec.constraints)) {
                return;
            }
            synchronized (((SystemForegroundDispatcher) this.val$token).mLock) {
                ((SystemForegroundDispatcher) this.val$token).mWorkSpecById.put(Validate.generationalId(runningWorkSpec), runningWorkSpec);
                SystemForegroundDispatcher systemForegroundDispatcher = (SystemForegroundDispatcher) this.val$token;
                ((SystemForegroundDispatcher) this.val$token).mTrackedWorkSpecs.put(Validate.generationalId(runningWorkSpec), WorkConstraintsTrackerKt.listen(systemForegroundDispatcher.mConstraintsTracker, runningWorkSpec, (CoroutineDispatcher) systemForegroundDispatcher.mTaskExecutor.readyAsyncCalls, systemForegroundDispatcher));
            }
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v18, types: [androidx.camera.core.impl.utils.futures.ChainingListenableFuture] */
        @Override // java.lang.Runnable
        public final void run() {
            int i = 0;
            switch (this.$r8$classId) {
                case 0:
                    ((LifecycleCheckCallbacks) this.val$callbacks).currentlyRecreatingToken = this.val$token;
                    return;
                case 1:
                    FutureCallback futureCallback = (FutureCallback) this.val$token;
                    try {
                        futureCallback.onSuccess(Futures.getDone((Future) this.val$callbacks));
                        return;
                    } catch (Error e) {
                        e = e;
                        futureCallback.onFailure(e);
                        return;
                    } catch (RuntimeException e2) {
                        e = e2;
                        futureCallback.onFailure(e);
                        return;
                    } catch (ExecutionException e3) {
                        Throwable cause = e3.getCause();
                        if (cause == null) {
                            futureCallback.onFailure(e3);
                            return;
                        } else {
                            futureCallback.onFailure(cause);
                            return;
                        }
                    }
                case 2:
                    BiometricViewModel biometricViewModel = ((BiometricFragment) this.val$token).mViewModel;
                    if (biometricViewModel.mClientCallback == null) {
                        biometricViewModel.mClientCallback = new BiometricViewModel.AnonymousClass1();
                    }
                    biometricViewModel.mClientCallback.onAuthenticationSucceeded((BiometricPrompt.AuthenticationResult) this.val$callbacks);
                    return;
                case 3:
                    try {
                        try {
                            ChainingListenableFuture chainingListenableFuture = (ChainingListenableFuture) this.val$token;
                            Object uninterruptibly = Futures.getUninterruptibly((ListenableFuture) this.val$callbacks);
                            CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = chainingListenableFuture.mCompleter;
                            if (callbackToFutureAdapter$Completer != null) {
                                callbackToFutureAdapter$Completer.set(uninterruptibly);
                            }
                        } finally {
                            ((ChainingListenableFuture) this.val$token).mOutputFuture = null;
                        }
                    } catch (CancellationException unused) {
                        ((ChainingListenableFuture) this.val$token).cancel(false);
                    } catch (ExecutionException e4) {
                        ChainingListenableFuture chainingListenableFuture2 = (ChainingListenableFuture) this.val$token;
                        Throwable cause2 = e4.getCause();
                        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer2 = chainingListenableFuture2.mCompleter;
                        if (callbackToFutureAdapter$Completer2 != null) {
                            callbackToFutureAdapter$Completer2.setException(cause2);
                        }
                    }
                    return;
                case 4:
                    ((Application) this.val$token).unregisterActivityLifecycleCallbacks((LifecycleCheckCallbacks) this.val$callbacks);
                    return;
                case 5:
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
                    } catch (RuntimeException e5) {
                        if (e5.getClass() == RuntimeException.class && e5.getMessage() != null && e5.getMessage().startsWith("Unable to stop")) {
                            throw e5;
                        }
                        return;
                    } catch (Throwable th) {
                        Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
                        return;
                    }
                case 6:
                    Fragment.AnonymousClass7 anonymousClass7 = (Fragment.AnonymousClass7) this.val$callbacks;
                    Typeface typeface = (Typeface) this.val$token;
                    CamUtils camUtils = (CamUtils) anonymousClass7.this$0;
                    if (camUtils != null) {
                        camUtils.onFontRetrieved(typeface);
                        return;
                    }
                    return;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    ((Edge) this.val$callbacks).accept(this.val$token);
                    return;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    Preference preference = (Preference) this.val$callbacks;
                    GeneralSettingsFragment generalSettingsFragment = (GeneralSettingsFragment) this.val$token;
                    RecyclerView.Adapter adapter = generalSettingsFragment.mList.getAdapter();
                    if (!(adapter instanceof PreferenceGroupAdapter)) {
                        if (adapter == null) {
                            return;
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Adapter must implement PreferencePositionCallback");
                        return;
                    } else {
                        int preferenceAdapterPosition = ((PreferenceGroupAdapter) adapter).getPreferenceAdapterPosition(preference);
                        RecyclerView recyclerView = generalSettingsFragment.mList;
                        if (preferenceAdapterPosition != -1) {
                            recyclerView.scrollToPosition(preferenceAdapterPosition);
                            return;
                        } else {
                            adapter.mObservable.registerObserver(new PreferenceFragmentCompat.ScrollToPreferenceObserver((PreferenceGroupAdapter) adapter, recyclerView, preference));
                            return;
                        }
                    }
                case 9:
                    Logger$LogcatLogger logger$LogcatLogger = Logger$LogcatLogger.get();
                    String str = DelayedWorkTracker.TAG;
                    StringBuilder sb = new StringBuilder("Scheduling work ");
                    WorkSpec workSpec = (WorkSpec) this.val$callbacks;
                    sb.append(workSpec.id);
                    logger$LogcatLogger.debug(str, sb.toString());
                    ((DelayedWorkTracker) this.val$token).mImmediateScheduler.schedule(workSpec);
                    return;
                case 10:
                    run$androidx$work$impl$foreground$SystemForegroundDispatcher$1();
                    return;
                case 11:
                    run$androidx$work$impl$utils$SerialExecutorImpl$Task();
                    return;
                case BasicTextKt.ShiftMeta /* 12 */:
                    GlideExecutor.DefaultThreadFactory defaultThreadFactory = (GlideExecutor.DefaultThreadFactory) this.val$token;
                    if (defaultThreadFactory.preventNetworkOperations) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        ((Runnable) this.val$callbacks).run();
                        return;
                    } catch (Throwable th2) {
                        defaultThreadFactory.uncaughtThrowableStrategy.getClass();
                        if (Log.isLoggable("GlideExecutor", 6)) {
                            Log.e("GlideExecutor", "Request threw uncaught throwable", th2);
                            return;
                        }
                        return;
                    }
                case 13:
                    HardwareConfigState hardwareConfigState = HardwareConfigState.getInstance();
                    hardwareConfigState.getClass();
                    Util.assertMainThread();
                    hardwareConfigState.isHardwareConfigAllowedByAppState.set(true);
                    FirstFrameWaiter.this.isFirstFrameSet = true;
                    ((FirstFrameWaiter.AnonymousClass1) this.val$token).val$view.getViewTreeObserver().removeOnDrawListener((FirstFrameWaiter.AnonymousClass1) this.val$callbacks);
                    FirstFrameWaiter.this.pendingActivities.clear();
                    return;
                case 14:
                    MessageLoaderHelper messageLoaderHelper = (MessageLoaderHelper) ((MessageCompose.AnonymousClass12) this.val$token).this$0;
                    Exception exc = (Exception) this.val$callbacks;
                    MessageLoaderHelper.MessageLoaderCallbacks messageLoaderCallbacks = messageLoaderHelper.callback;
                    if (messageLoaderCallbacks == null) {
                        return;
                    }
                    if (exc instanceof IllegalArgumentException) {
                        messageLoaderCallbacks.onDownloadErrorMessageNotFound();
                        return;
                    } else {
                        messageLoaderCallbacks.onDownloadErrorNetworkError();
                        return;
                    }
                case OffsetKt.Horizontal /* 15 */:
                    MessageListFragmentBridgeContract messageListFragmentBridgeContract = (MessageListFragmentBridgeContract) ((MessageListHandler) this.val$token).mFragment.get();
                    if (messageListFragmentBridgeContract != null) {
                        messageListFragmentBridgeContract.updateFooterText((String) this.val$callbacks);
                        return;
                    }
                    return;
                case 16:
                    LocalStore.AnonymousClass7 anonymousClass72 = (LocalStore.AnonymousClass7) this.val$token;
                    ((MessageViewFragment) anonymousClass72.val$folder).refreshAttachmentThumbnail((AttachmentViewInfo) anonymousClass72.val$messages);
                    new AttachmentController$SaveAttachmentAsyncTask(anonymousClass72, i).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Uri) this.val$callbacks);
                    return;
                case 17:
                    RecipientSelectView recipientSelectView = (RecipientSelectView) this.val$token;
                    List list = (List) this.val$callbacks;
                    if (recipientSelectView.loaderManager == null) {
                        return;
                    }
                    recipientSelectView.alternatesPopup.setAnchorView(recipientSelectView.getRootView().findViewById(recipientSelectView.getDropDownAnchor()));
                    recipientSelectView.alternatesPopup.setWidth(recipientSelectView.getDropDownWidth());
                    AlternateRecipientAdapter alternateRecipientAdapter = recipientSelectView.alternatesAdapter;
                    RecipientSelectView.Recipient recipient = recipientSelectView.alternatesPopupRecipient;
                    alternateRecipientAdapter.currentRecipient = recipient;
                    alternateRecipientAdapter.recipients = list;
                    int indexOf = list.indexOf(recipient);
                    if (indexOf >= 0) {
                        alternateRecipientAdapter.currentRecipient = (RecipientSelectView.Recipient) list.get(indexOf);
                    }
                    list.remove(alternateRecipientAdapter.currentRecipient);
                    alternateRecipientAdapter.notifyDataSetChanged();
                    recipientSelectView.alternatesPopup.show();
                    recipientSelectView.alternatesPopup.getListView().setChoiceMode(1);
                    return;
                case 18:
                    ((CancellableContinuationImpl) this.val$token).resumeUndispatched((ExecutorCoroutineDispatcherImpl) this.val$callbacks);
                    return;
            }
            while (true) {
                try {
                    ((Runnable) this.val$callbacks).run();
                } catch (Throwable th3) {
                    JobKt.handleCoroutineException(EmptyCoroutineContext.INSTANCE, th3);
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
                } catch (Throwable th4) {
                    LimitedDispatcher limitedDispatcher3 = (LimitedDispatcher) this.val$token;
                    synchronized (limitedDispatcher3.workerAllocationLock) {
                        LimitedDispatcher.runningWorkers$volatile$FU.decrementAndGet(limitedDispatcher3);
                        throw th4;
                    }
                }
            }
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 1:
                    return AnonymousClass1.class.getSimpleName() + "," + ((FutureCallback) this.val$token);
                default:
                    return super.toString();
            }
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2, boolean z) {
            this.$r8$classId = i;
            this.val$token = obj;
            this.val$callbacks = obj2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                    ActivityRecreator.mainHandler.postAtFrontOfQueue(new AnonymousClass1(5, ActivityRecreator.mainThreadField.get(activity), obj2, false));
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

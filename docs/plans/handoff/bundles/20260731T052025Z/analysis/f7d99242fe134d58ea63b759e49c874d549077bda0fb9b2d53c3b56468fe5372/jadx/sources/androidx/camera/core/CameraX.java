package androidx.camera.core;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.os.Trace;
import android.util.SparseArray;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.camera.camera2.adapter.CameraSurfaceAdapter;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.CameraProviderExecutionState;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.utils.futures.ImmediateFuture$ImmediateFailedFuture;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.node.NodeChain;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import androidx.tracing.TraceApi29Impl;
import com.fsck.k9.sasl.OAuthBearer;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import kotlin.SynchronizedLazyImpl;
import okhttp3.Dispatcher;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraX {
    public static final Object MIN_LOG_LEVEL_LOCK = new Object();
    public static final SparseArray sMinLogLevelReferenceCountMap = new SparseArray();
    public final Executor mCameraExecutor;
    public NodeChain mCameraFactory;
    public final CameraPresenceProvider mCameraPresenceProvider;
    public Dispatcher mCameraUseCaseAdapterProvider;
    public final CameraXConfig mCameraXConfig;
    public CameraUseCaseAdapter mDefaultConfigFactory;
    public final CallbackToFutureAdapter$SafeFuture mInitInternalFuture;
    public final Integer mMinLogLevel;
    public final RetryPolicy mRetryPolicy;
    public final SynchronizedLazyImpl mRotationProvider;
    public final Handler mSchedulerHandler;
    public final HandlerThread mSchedulerThread;
    public CardView.AnonymousClass1 mStreamSpecsCalculator;
    public CameraSurfaceAdapter mSurfaceManager;
    public final CameraRepository mCameraRepository = new CameraRepository();
    public final Object mInitializeLock = new Object();
    public int mInitState = 1;
    public ListenableFuture mShutdownInternalFuture = ImmediateFuture$ImmediateFailedFuture.NULL_FUTURE;

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0209, code lost:
    
        r5 = r8;
        r8 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0211  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CameraX(android.content.Context r8, androidx.camera.lifecycle.LifecycleCameraProviderImpl$configure$1$1$1 r9) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.CameraX.<init>(android.content.Context, androidx.camera.lifecycle.LifecycleCameraProviderImpl$configure$1$1$1):void");
    }

    public static void decreaseMinLogLevelReference(Integer num) {
        synchronized (MIN_LOG_LEVEL_LOCK) {
            try {
                if (num == null) {
                    return;
                }
                SparseArray sparseArray = sMinLogLevelReferenceCountMap;
                int intValue = ((Integer) sparseArray.get(num.intValue())).intValue() - 1;
                if (intValue == 0) {
                    sparseArray.remove(num.intValue());
                } else {
                    sparseArray.put(num.intValue(), Integer.valueOf(intValue));
                }
                updateOrResetMinLogLevel();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void increaseMinLogLevelReference(Integer num) {
        synchronized (MIN_LOG_LEVEL_LOCK) {
            try {
                if (num == null) {
                    return;
                }
                RelationUtil.checkArgumentInRange(num.intValue(), 3, 6, "minLogLevel");
                SparseArray sparseArray = sMinLogLevelReferenceCountMap;
                sparseArray.put(num.intValue(), Integer.valueOf(sparseArray.get(num.intValue()) != null ? 1 + ((Integer) sparseArray.get(num.intValue())).intValue() : 1));
                updateOrResetMinLogLevel();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void traceExecutionState(CameraProviderExecutionState cameraProviderExecutionState) {
        if (Util.isEnabled()) {
            int i = cameraProviderExecutionState != null ? cameraProviderExecutionState.mStatus : -1;
            if (Build.VERSION.SDK_INT >= 29) {
                TraceApi29Impl.setCounter(Util.truncatedTraceSectionLabel("CX:CameraProvider-RetryStatus"), i);
                return;
            }
            String truncatedTraceSectionLabel = Util.truncatedTraceSectionLabel("CX:CameraProvider-RetryStatus");
            try {
                if (Util.traceCounterMethod == null) {
                    Util.traceCounterMethod = Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
                }
                Method method = Util.traceCounterMethod;
                if (method == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                method.invoke(null, Long.valueOf(Util.traceTagApp), truncatedTraceSectionLabel, Integer.valueOf(i));
            } catch (Exception e) {
                Util.handleException(e, "traceCounter");
            }
        }
    }

    public static void updateOrResetMinLogLevel() {
        SparseArray sparseArray = sMinLogLevelReferenceCountMap;
        if (sparseArray.size() == 0) {
            Utf8.SafeProcessor.sMinLogLevel = 3;
            return;
        }
        if (sparseArray.get(3) != null) {
            Utf8.SafeProcessor.sMinLogLevel = 3;
            return;
        }
        if (sparseArray.get(4) != null) {
            Utf8.SafeProcessor.sMinLogLevel = 4;
        } else if (sparseArray.get(5) != null) {
            Utf8.SafeProcessor.sMinLogLevel = 5;
        } else if (sparseArray.get(6) != null) {
            Utf8.SafeProcessor.sMinLogLevel = 6;
        }
    }

    public final CallbackToFutureAdapter$SafeFuture initInternal(Context context) {
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture;
        synchronized (this.mInitializeLock) {
            boolean z = true;
            if (this.mInitState != 1) {
                z = false;
            }
            RelationUtil.checkState("CameraX.initInternal() should only be called once per instance", z);
            this.mInitState = 2;
            CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
            callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
            callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
            callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
            callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
            try {
                Executor executor = this.mCameraExecutor;
                executor.execute(new CameraX$$ExternalSyntheticLambda3(this, context, executor, 1, callbackToFutureAdapter$Completer, SystemClock.elapsedRealtime()));
                callbackToFutureAdapter$Completer.tag = "CameraX initInternal";
            } catch (Exception e) {
                callbackToFutureAdapter$SafeFuture.setException(e);
            }
        }
        return callbackToFutureAdapter$SafeFuture;
    }

    public final void setStateToInitialized() {
        synchronized (this.mInitializeLock) {
            this.mInitState = 4;
        }
    }

    public final ListenableFuture shutdown() {
        synchronized (this.mInitializeLock) {
            try {
                this.mSchedulerHandler.removeCallbacksAndMessages("retry_token");
                int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.mInitState);
                if (ordinal == 0) {
                    this.mInitState = 5;
                    return ImmediateFuture$ImmediateFailedFuture.NULL_FUTURE;
                }
                if (ordinal == 1) {
                    throw new IllegalStateException("CameraX could not be shutdown when it is initializing.");
                }
                int i = 3;
                if (ordinal == 2 || ordinal == 3) {
                    this.mInitState = 5;
                    decreaseMinLogLevelReference(this.mMinLogLevel);
                    this.mShutdownInternalFuture = OAuthBearer.getFuture(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(i, this));
                }
                return this.mShutdownInternalFuture;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

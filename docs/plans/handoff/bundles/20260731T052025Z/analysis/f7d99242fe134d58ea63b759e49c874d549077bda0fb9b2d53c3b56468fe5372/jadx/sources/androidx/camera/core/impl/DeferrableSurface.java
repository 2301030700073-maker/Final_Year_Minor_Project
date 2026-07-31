package androidx.camera.core.impl;

import android.util.Log;
import android.util.Size;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.impl.utils.futures.ImmediateFuture$ImmediateFailedFuture;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.datastore.preferences.protobuf.Utf8;
import com.fsck.k9.sasl.OAuthBearer;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.atomic.AtomicInteger;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DeferrableSurface {
    public static final boolean DEBUG;
    public static final AtomicInteger TOTAL_COUNT;
    public static final AtomicInteger USED_COUNT;
    public CallbackToFutureAdapter$Completer mCloseCompleter;
    public final CallbackToFutureAdapter$SafeFuture mCloseFuture;
    public Class mContainerClass;
    public final Size mPrescribedSize;
    public final int mPrescribedStreamFormat;
    public CallbackToFutureAdapter$Completer mTerminationCompleter;
    public final CallbackToFutureAdapter$SafeFuture mTerminationFuture;
    public final Object mLock = new Object();
    public int mUseCount = 0;
    public boolean mClosed = false;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SurfaceClosedException extends Exception {
        public final DeferrableSurface mDeferrableSurface;

        public SurfaceClosedException(String str, DeferrableSurface deferrableSurface) {
            super(str);
            this.mDeferrableSurface = deferrableSurface;
        }
    }

    static {
        new Size(0, 0);
        DEBUG = Utf8.SafeProcessor.isDebugEnabled("DeferrableSurface");
        USED_COUNT = new AtomicInteger(0);
        TOTAL_COUNT = new AtomicInteger(0);
    }

    public DeferrableSurface(int i, Size size) {
        final int i2 = 0;
        this.mPrescribedSize = size;
        this.mPrescribedStreamFormat = i;
        CallbackToFutureAdapter$SafeFuture future = OAuthBearer.getFuture(new CallbackToFutureAdapter$Resolver(this) { // from class: androidx.camera.core.impl.DeferrableSurface$$ExternalSyntheticLambda0
            public final /* synthetic */ DeferrableSurface f$0;

            {
                this.f$0 = this;
            }

            private final Object attachCompleter$androidx$camera$core$impl$DeferrableSurface$$ExternalSyntheticLambda0(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
                DeferrableSurface deferrableSurface = this.f$0;
                synchronized (deferrableSurface.mLock) {
                    deferrableSurface.mTerminationCompleter = callbackToFutureAdapter$Completer;
                }
                return "DeferrableSurface-termination(" + deferrableSurface + ")";
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
            public final Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
                switch (i2) {
                    case 0:
                        return attachCompleter$androidx$camera$core$impl$DeferrableSurface$$ExternalSyntheticLambda0(callbackToFutureAdapter$Completer);
                    default:
                        DeferrableSurface deferrableSurface = this.f$0;
                        synchronized (deferrableSurface.mLock) {
                            deferrableSurface.mCloseCompleter = callbackToFutureAdapter$Completer;
                        }
                        return "DeferrableSurface-close(" + deferrableSurface + ")";
                }
            }
        });
        this.mTerminationFuture = future;
        final int i3 = 1;
        this.mCloseFuture = OAuthBearer.getFuture(new CallbackToFutureAdapter$Resolver(this) { // from class: androidx.camera.core.impl.DeferrableSurface$$ExternalSyntheticLambda0
            public final /* synthetic */ DeferrableSurface f$0;

            {
                this.f$0 = this;
            }

            private final Object attachCompleter$androidx$camera$core$impl$DeferrableSurface$$ExternalSyntheticLambda0(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
                DeferrableSurface deferrableSurface = this.f$0;
                synchronized (deferrableSurface.mLock) {
                    deferrableSurface.mTerminationCompleter = callbackToFutureAdapter$Completer;
                }
                return "DeferrableSurface-termination(" + deferrableSurface + ")";
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
            public final Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
                switch (i3) {
                    case 0:
                        return attachCompleter$androidx$camera$core$impl$DeferrableSurface$$ExternalSyntheticLambda0(callbackToFutureAdapter$Completer);
                    default:
                        DeferrableSurface deferrableSurface = this.f$0;
                        synchronized (deferrableSurface.mLock) {
                            deferrableSurface.mCloseCompleter = callbackToFutureAdapter$Completer;
                        }
                        return "DeferrableSurface-close(" + deferrableSurface + ")";
                }
            }
        });
        if (Utf8.SafeProcessor.isDebugEnabled("DeferrableSurface")) {
            printGlobalDebugCounts(TOTAL_COUNT.incrementAndGet(), "Surface created", USED_COUNT.get());
            future.delegate.addListener(new CameraX$$ExternalSyntheticLambda2(17, this, Log.getStackTraceString(new Exception())), Util.directExecutor());
        }
    }

    public void close() {
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer;
        synchronized (this.mLock) {
            try {
                if (this.mClosed) {
                    callbackToFutureAdapter$Completer = null;
                } else {
                    this.mClosed = true;
                    this.mCloseCompleter.set(null);
                    if (this.mUseCount == 0) {
                        callbackToFutureAdapter$Completer = this.mTerminationCompleter;
                        this.mTerminationCompleter = null;
                    } else {
                        callbackToFutureAdapter$Completer = null;
                    }
                    if (Utf8.SafeProcessor.isDebugEnabled("DeferrableSurface")) {
                        Utf8.SafeProcessor.d("DeferrableSurface", "surface closed,  useCount=" + this.mUseCount + " closed=true " + this);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (callbackToFutureAdapter$Completer != null) {
            callbackToFutureAdapter$Completer.set(null);
        }
    }

    public final void decrementUseCount() {
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer;
        synchronized (this.mLock) {
            try {
                int i = this.mUseCount;
                if (i == 0) {
                    throw new IllegalStateException("Decrementing use count occurs more times than incrementing");
                }
                int i2 = i - 1;
                this.mUseCount = i2;
                if (i2 == 0 && this.mClosed) {
                    callbackToFutureAdapter$Completer = this.mTerminationCompleter;
                    this.mTerminationCompleter = null;
                } else {
                    callbackToFutureAdapter$Completer = null;
                }
                if (Utf8.SafeProcessor.isDebugEnabled("DeferrableSurface")) {
                    Utf8.SafeProcessor.d("DeferrableSurface", "use count-1,  useCount=" + this.mUseCount + " closed=" + this.mClosed + " " + this);
                    if (this.mUseCount == 0) {
                        printGlobalDebugCounts(TOTAL_COUNT.get(), "Surface no longer in use", USED_COUNT.decrementAndGet());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (callbackToFutureAdapter$Completer != null) {
            callbackToFutureAdapter$Completer.set(null);
        }
    }

    public final ListenableFuture getSurface() {
        synchronized (this.mLock) {
            try {
                if (this.mClosed) {
                    return new ImmediateFuture$ImmediateFailedFuture(0, new SurfaceClosedException("DeferrableSurface already closed.", this));
                }
                return provideSurface();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void incrementUseCount() {
        synchronized (this.mLock) {
            try {
                int i = this.mUseCount;
                if (i == 0 && this.mClosed) {
                    throw new SurfaceClosedException("Cannot begin use on a closed surface.", this);
                }
                this.mUseCount = i + 1;
                if (Utf8.SafeProcessor.isDebugEnabled("DeferrableSurface")) {
                    if (this.mUseCount == 1) {
                        printGlobalDebugCounts(TOTAL_COUNT.get(), "New surface in use", USED_COUNT.incrementAndGet());
                    }
                    Utf8.SafeProcessor.d("DeferrableSurface", "use count+1, useCount=" + this.mUseCount + " " + this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void printGlobalDebugCounts(int i, String str, int i2) {
        if (!DEBUG && Utf8.SafeProcessor.isDebugEnabled("DeferrableSurface")) {
            Utf8.SafeProcessor.d("DeferrableSurface", "DeferrableSurface usage statistics may be inaccurate since debug logging was not enabled at static initialization time. App restart may be required to enable accurate usage statistics.");
        }
        Utf8.SafeProcessor.d("DeferrableSurface", str + "[total_surfaces=" + i + ", used_surfaces=" + i2 + "](" + this + "}");
    }

    public abstract ListenableFuture provideSurface();
}

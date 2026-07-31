package androidx.camera.lifecycle;

import android.os.Build;
import android.util.Range;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.RotationProvider;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.OnLifecycleEvent;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LifecycleCamera implements LifecycleObserver, Camera {
    public final CameraUseCaseAdapter mCameraUseCaseAdapter;
    public final LifecycleOwner mLifecycleOwner;
    public final Object mLock = new Object();
    public boolean mSuspended = false;
    public LegacySessionConfig mBoundSessionConfig = null;

    public LifecycleCamera(LifecycleOwner lifecycleOwner, CameraUseCaseAdapter cameraUseCaseAdapter, RotationProvider rotationProvider) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mCameraUseCaseAdapter = cameraUseCaseAdapter;
        if (((LifecycleRegistry) lifecycleOwner.getLifecycle()).state.compareTo(Lifecycle.State.STARTED) >= 0) {
            cameraUseCaseAdapter.attachUseCases();
        } else {
            cameraUseCaseAdapter.detachUseCases();
        }
        lifecycleOwner.getLifecycle().addObserver(this);
    }

    public static void updateUseCasesRotationProvider(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase.isAutoRotationSupported()) {
                synchronized (useCase.mRotationProviderLock) {
                }
            }
        }
    }

    public final void bind(LegacySessionConfig legacySessionConfig) {
        synchronized (this.mLock) {
            try {
                LegacySessionConfig legacySessionConfig2 = this.mBoundSessionConfig;
                if (legacySessionConfig2 == null) {
                    this.mBoundSessionConfig = legacySessionConfig;
                } else {
                    boolean z = legacySessionConfig.isLegacy;
                    boolean z2 = legacySessionConfig2.isLegacy;
                    if (z) {
                        if (!z2) {
                            throw new IllegalStateException("Cannot bind use cases when a SessionConfig is already bound to this LifecycleOwner. Please unbind first");
                        }
                        ArrayList arrayList = new ArrayList((List) this.mBoundSessionConfig.useCases);
                        arrayList.addAll((List) legacySessionConfig.useCases);
                        this.mBoundSessionConfig = new LegacySessionConfig(arrayList, (List) legacySessionConfig.effects);
                    } else {
                        if (z2) {
                            throw new IllegalStateException("Cannot bind the SessionConfig when use cases are bound to this LifecycleOwner already. Please unbind first");
                        }
                        this.mBoundSessionConfig = legacySessionConfig;
                        CameraUseCaseAdapter cameraUseCaseAdapter = this.mCameraUseCaseAdapter;
                        cameraUseCaseAdapter.removeUseCases((ArrayList) cameraUseCaseAdapter.getUseCases());
                    }
                }
                this.mCameraUseCaseAdapter.setViewPort();
                this.mCameraUseCaseAdapter.setEffects((List) legacySessionConfig.effects);
                this.mCameraUseCaseAdapter.setSessionType();
                this.mCameraUseCaseAdapter.setFrameRate((Range) legacySessionConfig.frameRateRange);
                CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) getCameraInfo();
                cameraInfoInternal.getClass();
                ResolvedFeatureGroup resolveFeatureGroup$default = AsyncTimeout.Companion.resolveFeatureGroup$default(legacySessionConfig, cameraInfoInternal);
                ((HandlerScheduledExecutorService) legacySessionConfig.featureSelectionListenerExecutor).execute(new CameraX$$ExternalSyntheticLambda2(26, resolveFeatureGroup$default, legacySessionConfig));
                this.mCameraUseCaseAdapter.addUseCases((List) legacySessionConfig.useCases, resolveFeatureGroup$default);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.Camera
    public final CameraInfo getCameraInfo() {
        return this.mCameraUseCaseAdapter.mCameraInternal.mAdapterCameraInfo;
    }

    public final LifecycleOwner getLifecycleOwner() {
        LifecycleOwner lifecycleOwner;
        synchronized (this.mLock) {
            lifecycleOwner = this.mLifecycleOwner;
        }
        return lifecycleOwner;
    }

    public final List getUseCases() {
        List unmodifiableList;
        synchronized (this.mLock) {
            unmodifiableList = DesugarCollections.unmodifiableList(this.mCameraUseCaseAdapter.getUseCases());
        }
        return unmodifiableList;
    }

    public final boolean isBound(UseCase useCase) {
        boolean contains;
        synchronized (this.mLock) {
            contains = ((ArrayList) this.mCameraUseCaseAdapter.getUseCases()).contains(useCase);
        }
        return contains;
    }

    public final boolean isLegacySessionConfigBound() {
        boolean z;
        synchronized (this.mLock) {
            LegacySessionConfig legacySessionConfig = this.mBoundSessionConfig;
            z = legacySessionConfig == null ? false : legacySessionConfig.isLegacy;
        }
        return z;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            CameraUseCaseAdapter cameraUseCaseAdapter = this.mCameraUseCaseAdapter;
            cameraUseCaseAdapter.removeUseCases((ArrayList) cameraUseCaseAdapter.getUseCases());
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause(LifecycleOwner lifecycleOwner) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.mCameraUseCaseAdapter.mCameraInternal.setActiveResumingMode(false);
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume(LifecycleOwner lifecycleOwner) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.mCameraUseCaseAdapter.mCameraInternal.setActiveResumingMode(true);
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                if (!this.mSuspended) {
                    this.mCameraUseCaseAdapter.attachUseCases();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                if (!this.mSuspended) {
                    this.mCameraUseCaseAdapter.detachUseCases();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void suspend() {
        synchronized (this.mLock) {
            try {
                if (this.mSuspended) {
                    return;
                }
                onStop(this.mLifecycleOwner);
                this.mSuspended = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void unbindAll() {
        synchronized (this.mLock) {
            List useCases = this.mCameraUseCaseAdapter.getUseCases();
            this.mCameraUseCaseAdapter.removeUseCases((ArrayList) useCases);
            updateUseCasesRotationProvider((ArrayList) useCases);
            this.mBoundSessionConfig = null;
        }
    }

    public final void unsuspend() {
        synchronized (this.mLock) {
            try {
                if (this.mSuspended) {
                    this.mSuspended = false;
                    if (((LifecycleRegistry) this.mLifecycleOwner.getLifecycle()).state.compareTo(Lifecycle.State.STARTED) >= 0) {
                        onStart(this.mLifecycleOwner);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

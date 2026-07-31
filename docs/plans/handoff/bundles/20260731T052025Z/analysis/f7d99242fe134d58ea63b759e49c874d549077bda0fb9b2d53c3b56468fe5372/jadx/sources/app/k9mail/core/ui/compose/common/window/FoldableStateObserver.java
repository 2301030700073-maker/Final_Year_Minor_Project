package app.k9mail.core.ui.compose.common.window;

import android.app.Activity;
import androidx.collection.internal.Lock;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.window.core.ExtensionsUtil;
import androidx.window.core.Version;
import androidx.window.layout.FoldingFeature$State;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowMetricsCalculatorCompat;
import androidx.window.layout.adapter.WindowBackend;
import androidx.window.layout.adapter.sidecar.SidecarCompat;
import androidx.window.layout.adapter.sidecar.SidecarWindowBackend;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import java.math.BigInteger;
import java.util.concurrent.locks.ReentrantLock;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FoldableStateObserver implements DefaultLifecycleObserver {
    public static FoldableState lastKnownState = FoldableState.UNKNOWN;
    public final StateFlowImpl _foldableState;
    public final Activity activity;
    public StandaloneCoroutine collectJob;
    public StandaloneCoroutine debounceJob;
    public final ReadonlyStateFlow foldableState;
    public final Logger logger;
    public final ContextScope scope;
    public final FoldingFeature$State windowInfoTracker;

    public FoldableStateObserver(Activity activity, Logger logger) {
        activity.getClass();
        this.activity = activity;
        this.logger = logger;
        WindowInfoTracker.Companion.getClass();
        WindowBackend windowBackend = (WindowBackend) WindowInfoTracker.Companion.extensionBackend$delegate.getValue();
        if (windowBackend == null) {
            SidecarWindowBackend sidecarWindowBackend = SidecarWindowBackend.globalInstance;
            if (SidecarWindowBackend.globalInstance == null) {
                ReentrantLock reentrantLock = SidecarWindowBackend.globalLock;
                reentrantLock.lock();
                try {
                    if (SidecarWindowBackend.globalInstance == null) {
                        SidecarCompat sidecarCompat = null;
                        try {
                            Version sidecarVersion = SidecarCompat.Companion.getSidecarVersion();
                            if (sidecarVersion != null) {
                                Version version = Version.VERSION_0_1;
                                version.getClass();
                                Object value = sidecarVersion.bigInteger$delegate.getValue();
                                value.getClass();
                                Object value2 = version.bigInteger$delegate.getValue();
                                value2.getClass();
                                if (((BigInteger) value).compareTo((BigInteger) value2) >= 0) {
                                    SidecarCompat sidecarCompat2 = new SidecarCompat(activity);
                                    if (sidecarCompat2.validateExtensionInterface()) {
                                        sidecarCompat = sidecarCompat2;
                                    }
                                }
                            }
                        } catch (Throwable unused) {
                        }
                        SidecarWindowBackend.globalInstance = new SidecarWindowBackend(sidecarCompat);
                    }
                } finally {
                    reentrantLock.unlock();
                }
            }
            windowBackend = SidecarWindowBackend.globalInstance;
            windowBackend.getClass();
        }
        WindowMetricsCalculatorCompat windowMetricsCalculatorCompat = new WindowMetricsCalculatorCompat();
        Lock lock = new Lock();
        ExtensionsUtil.getSafeVendorApiLevel();
        FoldingFeature$State foldingFeature$State = new FoldingFeature$State(windowMetricsCalculatorCompat, windowBackend, lock);
        WindowInfoTracker.Companion.decorator.getClass();
        this.windowInfoTracker = foldingFeature$State;
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        this.scope = JobKt.CoroutineScope(MainDispatcherLoader.dispatcher);
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(lastKnownState);
        this._foldableState = MutableStateFlow;
        this.foldableState = FlowKt.asStateFlow(MutableStateFlow);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        Sink$CC.debug$default(this.logger, "FoldableStateObserver", null, new UtilsKt$$ExternalSyntheticLambda0(6), 2);
        stopObserving();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        Sink$CC.debug$default(this.logger, "FoldableStateObserver", null, new UtilsKt$$ExternalSyntheticLambda0(7), 2);
        this.collectJob = JobKt.launch$default(this.scope, null, null, new BlockRunner$cancel$1(this, null, 4), 3);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        stopObserving();
    }

    public final void stopObserving() {
        Sink$CC.debug$default(this.logger, "FoldableStateObserver", null, new UtilsKt$$ExternalSyntheticLambda0(5), 2);
        StandaloneCoroutine standaloneCoroutine = this.collectJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        this.collectJob = null;
        StandaloneCoroutine standaloneCoroutine2 = this.debounceJob;
        if (standaloneCoroutine2 != null) {
            standaloneCoroutine2.cancel(null);
        }
        this.debounceJob = null;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
    }
}

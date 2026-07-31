package androidx.compose.ui.platform;

import android.os.Looper;
import android.view.View;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.core.view.insets.SystemBarStateMonitor;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import com.fsck.k9.R;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class WindowRecomposer_androidKt {
    public static final MutableScatterMap animationScale;

    static {
        long[] jArr = ScatterMapKt.EmptyGroup;
        animationScale = new MutableScatterMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Recomposer createLifecycleAwareWindowRecomposer$default(View view, Lifecycle lifecycle, int i) {
        CoroutineContext coroutineContext;
        BroadcastFrameClock broadcastFrameClock;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        int i2 = 2;
        if ((i & 2) != 0) {
            lifecycle = null;
        }
        SynchronizedLazyImpl synchronizedLazyImpl = AndroidUiDispatcher.Main$delegate;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            coroutineContext = (CoroutineContext) AndroidUiDispatcher.Main$delegate.getValue();
        } else {
            coroutineContext = (CoroutineContext) AndroidUiDispatcher.currentThread.get();
            if (coroutineContext == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("no AndroidUiDispatcher for this thread");
                return null;
            }
        }
        CoroutineContext plus = coroutineContext.plus(emptyCoroutineContext);
        BroadcastFrameClock broadcastFrameClock2 = (BroadcastFrameClock) plus.get(NeverEqualPolicy.$$INSTANCE);
        if (broadcastFrameClock2 != null) {
            BroadcastFrameClock broadcastFrameClock3 = new BroadcastFrameClock(broadcastFrameClock2);
            Latch latch = (Latch) broadcastFrameClock3.queue;
            synchronized (latch.lock) {
                latch._isOpen = false;
                broadcastFrameClock = broadcastFrameClock3;
            }
        } else {
            broadcastFrameClock = 0;
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        CoroutineContext coroutineContext2 = (MotionDurationScale) plus.get(Alignment.Companion.$$INSTANCE);
        if (coroutineContext2 == null) {
            coroutineContext2 = new MotionDurationScaleImpl(view.getContext().getApplicationContext());
            ref$ObjectRef.element = coroutineContext2;
        }
        if (broadcastFrameClock != 0) {
            emptyCoroutineContext = broadcastFrameClock;
        }
        CoroutineContext plus2 = plus.plus(emptyCoroutineContext).plus(coroutineContext2);
        Recomposer recomposer = new Recomposer(plus2);
        recomposer.pauseCompositionFrameClock();
        ContextScope CoroutineScope = JobKt.CoroutineScope(plus2);
        if (lifecycle == null) {
            LifecycleOwner lifecycleOwner = ViewModelKt.get(view);
            lifecycle = lifecycleOwner != null ? lifecycleOwner.getLifecycle() : null;
        }
        if (lifecycle != null) {
            view.addOnAttachStateChangeListener(new SystemBarStateMonitor.AnonymousClass3(view, recomposer, i2));
            lifecycle.addObserver(new FragmentManager.AnonymousClass6(CoroutineScope, broadcastFrameClock, recomposer, ref$ObjectRef));
            return recomposer;
        }
        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("ViewTreeLifecycleOwner not found from " + view);
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return null;
    }

    public static final CompositionContext getCompositionContext(View view) {
        Object tag = view.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof CompositionContext) {
            return (CompositionContext) tag;
        }
        return null;
    }
}

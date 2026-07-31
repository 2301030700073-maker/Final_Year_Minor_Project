package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import android.provider.Settings;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.unit.DpKt;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import coil3.intercept.EngineInterceptor$intercept$2;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MotionDurationScaleImpl implements MotionDurationScale {
    public final ParcelableSnapshotMutableFloatState _scaleFactor$delegate = new ParcelableSnapshotMutableFloatState(1.0f);
    public final Context applicationContext;
    public ContextScope coroutineScope;
    public StandaloneCoroutine job;

    public MotionDurationScaleImpl(Context context) {
        this.applicationContext = context;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return OperationKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return Alignment.Companion.$$INSTANCE;
    }

    @Override // androidx.compose.ui.MotionDurationScale
    public final float getScaleFactor() {
        Continuation continuation;
        StateFlow stateFlow;
        if (this.job == null) {
            Context context = this.applicationContext;
            MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.animationScale;
            synchronized (mutableScatterMap) {
                try {
                    Object obj = mutableScatterMap.get(context);
                    continuation = null;
                    if (obj == null) {
                        ContentResolver contentResolver = context.getContentResolver();
                        Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                        BufferedChannel Channel$default = DpKt.Channel$default(-1, 6, null);
                        obj = StateFlowKt.stateIn(new SafeFlow(0, new EngineInterceptor$intercept$2(contentResolver, uriFor, new CursorAdapter.ChangeObserver(Channel$default, DpKt.createAsync(Looper.getMainLooper())), Channel$default, context, null)), AwaitKt.MainScope(), new StartedWhileSubscribed(0L, Long.MAX_VALUE), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
                        mutableScatterMap.set(context, obj);
                    }
                    stateFlow = (StateFlow) obj;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this._scaleFactor$delegate.setFloatValue(((Number) stateFlow.getValue()).floatValue());
            ContextScope contextScope = this.coroutineScope;
            if (contextScope == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("MotionDurationScale scale factor requested before recomposer loop start");
                return RecyclerView.DECELERATION_RATE;
            }
            this.job = AwaitKt.launch$default(contextScope, null, null, new SimpleActor$offer$2(stateFlow, this, continuation, 24), 3);
        }
        return this._scaleFactor$delegate.getFloatValue();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return OperationKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return OperationKt.plus(this, coroutineContext);
    }
}

package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.MotionDurationScale;
import androidx.work.OperationKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        return AppKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return Alignment.Companion.$$INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1] */
    @Override // androidx.compose.ui.MotionDurationScale
    public final float getScaleFactor() {
        StateFlow stateFlow;
        if (this.job == null) {
            Context context = this.applicationContext;
            MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.animationScale;
            synchronized (mutableScatterMap) {
                try {
                    Object obj = mutableScatterMap.get(context);
                    if (obj == null) {
                        ContentResolver contentResolver = context.getContentResolver();
                        Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                        final BufferedChannel Channel$default = ProduceKt.Channel$default(-1, 6, null);
                        final Handler createAsync = OperationKt.createAsync(Looper.getMainLooper());
                        SafeFlow safeFlow = new SafeFlow(new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(contentResolver, uriFor, new ContentObserver(createAsync) { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1
                            @Override // android.database.ContentObserver
                            public final void onChange(boolean z, Uri uri) {
                                BufferedChannel.this.mo691trySendJP2dKIU(Unit.INSTANCE);
                            }
                        }, Channel$default, context, null));
                        SupervisorJobImpl SupervisorJob$default = JobKt.SupervisorJob$default();
                        DefaultScheduler defaultScheduler = Dispatchers.Default;
                        obj = FlowKt.stateIn(safeFlow, new ContextScope(AppKt.plus(SupervisorJob$default, MainDispatcherLoader.dispatcher)), new StartedWhileSubscribed(), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
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
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("MotionDurationScale scale factor requested before recomposer loop start");
                return 0.0f;
            }
            this.job = JobKt.launch$default(contextScope, null, null, new MotionDurationScaleImpl$startObservingSystemScaleFactor$1(stateFlow, this, null), 3);
        }
        return this._scaleFactor$delegate.getFloatValue();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return AppKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return AppKt.plus(this, coroutineContext);
    }
}

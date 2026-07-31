package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import android.provider.Settings;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.MutatorMutex$mutate$2;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.MotionDurationScale;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.loader.content.Loader$ForceLoadContentObserver;
import androidx.room.util.DBUtil;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return UuidKt.get(this, key);
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
                        BufferedChannel Channel$default = Cookie.Companion.Channel$default(-1, null, null, 6);
                        obj = FlowKt.stateIn(new SafeFlow(0, new MutatorMutex$mutate$2(contentResolver, uriFor, new Loader$ForceLoadContentObserver(Channel$default, DBUtil.createAsync(Looper.getMainLooper())), Channel$default, context, null)), JobKt.MainScope(), new StartedWhileSubscribed(Long.MAX_VALUE), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("MotionDurationScale scale factor requested before recomposer loop start");
                return 0.0f;
            }
            this.job = JobKt.launch$default(contextScope, null, null, new BlockRunner$maybeRun$1(stateFlow, this, continuation, 1), 3);
        }
        return this._scaleFactor$delegate.getFloatValue();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return UuidKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return UuidKt.plus(this, coroutineContext);
    }
}

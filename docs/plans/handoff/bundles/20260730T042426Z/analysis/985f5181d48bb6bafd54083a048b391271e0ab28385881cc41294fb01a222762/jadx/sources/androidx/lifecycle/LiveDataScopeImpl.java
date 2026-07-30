package androidx.lifecycle;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* compiled from: CoroutineLiveData.kt */
/* loaded from: classes.dex */
public final class LiveDataScopeImpl implements LiveDataScope {
    private final CoroutineContext coroutineContext;
    private CoroutineLiveData target;

    public LiveDataScopeImpl(CoroutineLiveData target, CoroutineContext context) {
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(context, "context");
        this.target = target;
        this.coroutineContext = context.plus(Dispatchers.getMain().getImmediate());
    }

    public final CoroutineLiveData getTarget$lifecycle_livedata_release() {
        return this.target;
    }

    @Override // androidx.lifecycle.LiveDataScope
    public Object emit(Object obj, Continuation continuation) {
        Object withContext = BuildersKt.withContext(this.coroutineContext, new LiveDataScopeImpl$emit$2(this, obj, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }
}

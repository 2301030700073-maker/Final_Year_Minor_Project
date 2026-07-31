package androidx.compose.runtime.tooling;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import java.util.List;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CompositionErrorContextImpl implements OperationErrorContext, CoroutineContext.Element {
    public static final AsyncTimeout.Companion Key = new AsyncTimeout.Companion(4);
    public final GapComposer composer;

    public CompositionErrorContextImpl(GapComposer gapComposer) {
        this.composer = gapComposer;
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public final List buildStackTrace(Integer num) {
        return this.composer.parentStackTrace$runtime();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final /* bridge */ CoroutineContext.Element get(CoroutineContext.Key key) {
        return UuidKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return Key;
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public final boolean getSourceInformationEnabled() {
        return this.composer.sourceMarkersEnabled;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final /* bridge */ CoroutineContext minusKey(CoroutineContext.Key key) {
        return UuidKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final /* bridge */ CoroutineContext plus(CoroutineContext coroutineContext) {
        return UuidKt.plus(this, coroutineContext);
    }
}

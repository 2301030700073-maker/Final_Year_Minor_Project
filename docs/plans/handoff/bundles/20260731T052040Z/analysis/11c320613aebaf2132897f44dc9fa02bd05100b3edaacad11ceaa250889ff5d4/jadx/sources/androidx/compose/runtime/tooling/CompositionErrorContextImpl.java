package androidx.compose.runtime.tooling;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.transition.Transition;
import java.util.List;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CompositionErrorContextImpl implements OperationErrorContext, CoroutineContext.Element {
    public static final Transition.AnonymousClass1 Key = new Transition.AnonymousClass1(4);
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
        return AppKt.get(this, key);
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
        return AppKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final /* bridge */ CoroutineContext plus(CoroutineContext coroutineContext) {
        return AppKt.plus(this, coroutineContext);
    }
}

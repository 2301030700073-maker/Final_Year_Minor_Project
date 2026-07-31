package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyValueHolder implements ValueHolder {
    public final SynchronizedLazyImpl current$delegate;

    public LazyValueHolder(Function0 function0) {
        this.current$delegate = ResultKt.lazy(function0);
    }

    @Override // androidx.compose.runtime.ValueHolder
    public final Object readValue(PersistentCompositionLocalHashMap persistentCompositionLocalHashMap) {
        return this.current$delegate.getValue();
    }
}

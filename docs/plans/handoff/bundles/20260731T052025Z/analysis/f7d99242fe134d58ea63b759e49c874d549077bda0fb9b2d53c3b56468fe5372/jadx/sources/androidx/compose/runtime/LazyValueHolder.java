package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

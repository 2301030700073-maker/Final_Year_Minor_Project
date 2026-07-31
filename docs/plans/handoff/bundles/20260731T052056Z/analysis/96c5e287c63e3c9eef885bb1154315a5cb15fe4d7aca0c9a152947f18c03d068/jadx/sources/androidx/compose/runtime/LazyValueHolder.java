package androidx.compose.runtime;

import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import coil3.util.ContextsKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyValueHolder implements ValueHolder {
    public final SynchronizedLazyImpl current$delegate;

    public LazyValueHolder(Function0 function0) {
        this.current$delegate = ContextsKt.lazy(function0);
    }

    @Override // androidx.compose.runtime.ValueHolder
    public final Object readValue(PersistentCompositionLocalHashMap persistentCompositionLocalHashMap) {
        return this.current$delegate.getValue();
    }
}

package androidx.compose.runtime;

import androidx.work.Worker$$ExternalSyntheticLambda1;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComputedProvidableCompositionLocal extends ProvidableCompositionLocal {
    public final ComputedValueHolder defaultValueHolder;

    public ComputedProvidableCompositionLocal(Function1 function1) {
        super(new Worker$$ExternalSyntheticLambda1(9));
        this.defaultValueHolder = new ComputedValueHolder(function1);
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public final ProvidedValue defaultProvidedValue$runtime(Object obj) {
        return new ProvidedValue(this, obj, obj == null, null, true);
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public final ValueHolder getDefaultValueHolder$runtime() {
        return this.defaultValueHolder;
    }
}

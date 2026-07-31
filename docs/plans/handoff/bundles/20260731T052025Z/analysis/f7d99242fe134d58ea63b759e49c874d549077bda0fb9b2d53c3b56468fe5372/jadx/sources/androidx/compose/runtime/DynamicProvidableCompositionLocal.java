package androidx.compose.runtime;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DynamicProvidableCompositionLocal extends ProvidableCompositionLocal {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object policy;

    public DynamicProvidableCompositionLocal(Function1 function1) {
        super(new TextKt$$ExternalSyntheticLambda4(12));
        this.policy = new ComputedValueHolder(function1);
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public final ProvidedValue defaultProvidedValue$runtime(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return new ProvidedValue(this, obj, obj == null, (NeverEqualPolicy) this.policy, true);
            default:
                return new ProvidedValue(this, obj, obj == null, null, true);
        }
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public ValueHolder getDefaultValueHolder$runtime() {
        switch (this.$r8$classId) {
            case 1:
                return (ComputedValueHolder) this.policy;
            default:
                return super.getDefaultValueHolder$runtime();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicProvidableCompositionLocal(Function0 function0) {
        super(function0);
        NeverEqualPolicy neverEqualPolicy = NeverEqualPolicy.INSTANCE$3;
        this.policy = neverEqualPolicy;
    }
}

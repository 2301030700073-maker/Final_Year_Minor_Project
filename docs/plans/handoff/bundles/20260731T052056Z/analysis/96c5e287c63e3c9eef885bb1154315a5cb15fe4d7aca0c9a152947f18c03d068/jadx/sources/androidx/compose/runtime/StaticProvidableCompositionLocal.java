package androidx.compose.runtime;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StaticProvidableCompositionLocal extends ProvidableCompositionLocal {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ StaticProvidableCompositionLocal(int i, Function0 function0) {
        super(function0);
        this.$r8$classId = i;
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public final ProvidedValue defaultProvidedValue$runtime(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return new ProvidedValue(this, obj, obj == null, null, false);
            default:
                return new ProvidedValue(this, obj, obj == null, NeverEqualPolicy.INSTANCE$3, true);
        }
    }
}

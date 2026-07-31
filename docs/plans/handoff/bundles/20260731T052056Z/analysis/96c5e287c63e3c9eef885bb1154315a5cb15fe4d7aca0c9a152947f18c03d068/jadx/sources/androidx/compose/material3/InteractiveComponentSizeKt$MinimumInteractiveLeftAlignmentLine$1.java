package androidx.compose.material3;

import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class InteractiveComponentSizeKt$MinimumInteractiveLeftAlignmentLine$1 extends FunctionReferenceImpl implements Function2 {
    public static final InteractiveComponentSizeKt$MinimumInteractiveLeftAlignmentLine$1 INSTANCE = new InteractiveComponentSizeKt$MinimumInteractiveLeftAlignmentLine$1(2, UnsignedKt.class, "min", "min(II)I", 1);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return Integer.valueOf(Math.min(((Number) obj).intValue(), ((Number) obj2).intValue()));
    }
}

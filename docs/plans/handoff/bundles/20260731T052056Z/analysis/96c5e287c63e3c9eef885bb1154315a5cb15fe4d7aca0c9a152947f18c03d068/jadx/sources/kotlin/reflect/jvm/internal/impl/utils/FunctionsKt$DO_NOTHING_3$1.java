package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FunctionsKt$DO_NOTHING_3$1 extends Lambda implements Function3 {
    public static final FunctionsKt$DO_NOTHING_3$1 INSTANCE = new FunctionsKt$DO_NOTHING_3$1(3);

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        return Unit.INSTANCE;
    }
}

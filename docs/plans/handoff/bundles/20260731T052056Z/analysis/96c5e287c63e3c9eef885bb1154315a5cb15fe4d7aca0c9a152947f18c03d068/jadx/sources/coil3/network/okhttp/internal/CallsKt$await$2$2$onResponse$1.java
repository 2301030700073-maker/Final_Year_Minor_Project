package coil3.network.okhttp.internal;

import coil3.size.ViewSizeResolver$CC;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CallsKt$await$2$2$onResponse$1 implements Function3 {
    public static final CallsKt$await$2$2$onResponse$1 INSTANCE = new CallsKt$await$2$2$onResponse$1();

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        try {
            ViewSizeResolver$CC.m(obj2);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }
}

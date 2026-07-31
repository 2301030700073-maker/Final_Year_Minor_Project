package kotlin.reflect.jvm.internal;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectProperties$LazySoftVal extends KPropertyImplKt implements Function0 {
    public final Function0 initializer;
    public volatile SoftReference value;

    public ReflectProperties$LazySoftVal(Object obj, Function0 function0) {
        if (function0 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'initializer' of kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal.<init> must not be null");
            throw null;
        }
        this.value = null;
        this.initializer = function0;
        if (obj != null) {
            this.value = new SoftReference(obj);
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Object obj;
        Object obj2 = KPropertyImplKt.NULL_VALUE;
        SoftReference softReference = this.value;
        if (softReference != null && (obj = softReference.get()) != null) {
            if (obj == obj2) {
                return null;
            }
            return obj;
        }
        Object invoke = this.initializer.invoke();
        if (invoke != null) {
            obj2 = invoke;
        }
        this.value = new SoftReference(obj2);
        return invoke;
    }
}

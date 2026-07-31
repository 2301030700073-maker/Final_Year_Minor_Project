package kotlin.reflect.jvm.internal;

import java.lang.reflect.Type;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KTypeImpl$classifier$2 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KTypeImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ KTypeImpl$classifier$2(KTypeImpl kTypeImpl, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = kTypeImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        KTypeImpl kTypeImpl = this.this$0;
        switch (i) {
            case 0:
                return kTypeImpl.convert(kTypeImpl.type);
            default:
                ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = kTypeImpl.computeJavaType;
                Type type = reflectProperties$LazySoftVal != null ? (Type) reflectProperties$LazySoftVal.invoke() : null;
                type.getClass();
                return ReflectClassUtilKt.getParameterizedTypeArguments(type);
        }
    }
}

package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaClass$innerClassNames$1 extends Lambda implements Function1 {
    public static final ReflectJavaClass$innerClassNames$1 INSTANCE;
    public static final ReflectJavaClass$innerClassNames$1 INSTANCE$1;
    public static final ReflectJavaClass$innerClassNames$1 INSTANCE$2;
    public static final ReflectJavaClass$innerClassNames$1 INSTANCE$3;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new ReflectJavaClass$innerClassNames$1(i, 1);
        INSTANCE$2 = new ReflectJavaClass$innerClassNames$1(i, 2);
        INSTANCE = new ReflectJavaClass$innerClassNames$1(i, 0);
        INSTANCE$3 = new ReflectJavaClass$innerClassNames$1(i, 3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ReflectJavaClass$innerClassNames$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return Boolean.valueOf(((Class) obj).getSimpleName().length() == 0);
            case 1:
                ParameterizedType parameterizedType = (ParameterizedType) obj;
                parameterizedType.getClass();
                Type ownerType = parameterizedType.getOwnerType();
                if (ownerType instanceof ParameterizedType) {
                    return (ParameterizedType) ownerType;
                }
                return null;
            case 2:
                ParameterizedType parameterizedType2 = (ParameterizedType) obj;
                parameterizedType2.getClass();
                Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                actualTypeArguments.getClass();
                return ArraysKt___ArraysKt.asSequence(actualTypeArguments);
            default:
                String simpleName = ((Class) obj).getSimpleName();
                if (!Name.isValidIdentifier(simpleName)) {
                    simpleName = null;
                }
                if (simpleName != null) {
                    return Name.identifier(simpleName);
                }
                return null;
        }
    }
}

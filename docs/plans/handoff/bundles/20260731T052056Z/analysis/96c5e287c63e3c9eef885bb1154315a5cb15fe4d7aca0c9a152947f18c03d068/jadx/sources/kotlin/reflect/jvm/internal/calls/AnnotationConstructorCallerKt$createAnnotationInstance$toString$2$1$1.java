package kotlin.reflect.jvm.internal.calls;

import java.util.Arrays;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotationConstructorCallerKt$createAnnotationInstance$toString$2$1$1 extends Lambda implements Function1 {
    public static final AnnotationConstructorCallerKt$createAnnotationInstance$toString$2$1$1 INSTANCE = new AnnotationConstructorCallerKt$createAnnotationInstance$toString$2$1$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String obj2;
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        String str = (String) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof boolean[]) {
            obj2 = Arrays.toString((boolean[]) value);
            obj2.getClass();
        } else if (value instanceof char[]) {
            obj2 = Arrays.toString((char[]) value);
            obj2.getClass();
        } else if (value instanceof byte[]) {
            obj2 = Arrays.toString((byte[]) value);
            obj2.getClass();
        } else if (value instanceof short[]) {
            obj2 = Arrays.toString((short[]) value);
            obj2.getClass();
        } else if (value instanceof int[]) {
            obj2 = Arrays.toString((int[]) value);
            obj2.getClass();
        } else if (value instanceof float[]) {
            obj2 = Arrays.toString((float[]) value);
            obj2.getClass();
        } else if (value instanceof long[]) {
            obj2 = Arrays.toString((long[]) value);
            obj2.getClass();
        } else if (value instanceof double[]) {
            obj2 = Arrays.toString((double[]) value);
            obj2.getClass();
        } else if (value instanceof Object[]) {
            obj2 = Arrays.toString((Object[]) value);
            obj2.getClass();
        } else {
            obj2 = value.toString();
        }
        return str + '=' + obj2;
    }
}

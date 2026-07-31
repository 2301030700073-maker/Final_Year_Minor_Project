package _COROUTINE;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract /* synthetic */ class ArtificialStackFramesUnsafe {
    public static final /* synthetic */ Unsafe unsafe;

    static {
        Field field;
        try {
            field = Unsafe.class.getDeclaredField("theUnsafe");
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = Unsafe.class.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    field = null;
                    break;
                }
                Field field2 = declaredFields[i];
                if (Modifier.isStatic(field2.getModifiers()) && Unsafe.class.isAssignableFrom(field2.getType())) {
                    field = field2;
                    break;
                }
                i++;
            }
            if (field != null) {
                throw new UnsupportedOperationException("Couldn't find the Unsafe", e);
            }
        }
        field.setAccessible(true);
        try {
            unsafe = (Unsafe) field.get(null);
        } catch (IllegalAccessException e2) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
        }
    }

    public static /* synthetic */ Object getAndSet(Object obj, long j, Object obj2) {
        while (true) {
            Unsafe unsafe2 = unsafe;
            Object objectVolatile = unsafe2.getObjectVolatile(obj, j);
            Object obj3 = obj;
            long j2 = j;
            Object obj4 = obj2;
            if (unsafe2.compareAndSwapObject(obj3, j2, objectVolatile, obj4)) {
                return objectVolatile;
            }
            obj = obj3;
            j = j2;
            obj2 = obj4;
        }
    }
}

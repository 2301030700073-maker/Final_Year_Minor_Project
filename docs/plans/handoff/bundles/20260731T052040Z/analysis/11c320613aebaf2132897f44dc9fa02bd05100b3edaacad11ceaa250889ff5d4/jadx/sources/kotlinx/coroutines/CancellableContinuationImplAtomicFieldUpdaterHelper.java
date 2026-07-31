package kotlinx.coroutines;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import kotlinx.coroutines.scheduling.Task;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class CancellableContinuationImplAtomicFieldUpdaterHelper {
    public static final /* synthetic */ Unsafe unsafe = getUnsafe();

    public static /* synthetic */ Object getAndSet(Unsafe unsafe2, Object obj, long j, Task task) {
        while (true) {
            Object objectVolatile = unsafe2.getObjectVolatile(obj, j);
            Unsafe unsafe3 = unsafe2;
            Object obj2 = obj;
            long j2 = j;
            Task task2 = task;
            if (unsafe3.compareAndSwapObject(obj2, j2, objectVolatile, task2)) {
                return objectVolatile;
            }
            unsafe2 = unsafe3;
            obj = obj2;
            j = j2;
            task = task2;
        }
    }

    public static /* synthetic */ Unsafe getUnsafe() {
        Field field;
        Field field2;
        try {
            field2 = Unsafe.class.getDeclaredField("theUnsafe");
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = Unsafe.class.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    field = null;
                    break;
                }
                field = declaredFields[i];
                if (Modifier.isStatic(field.getModifiers()) && Unsafe.class.isAssignableFrom(field.getType())) {
                    break;
                }
                i++;
            }
            if (field != null) {
                throw new UnsupportedOperationException("Couldn't find the Unsafe", e);
            }
            field2 = field;
        }
        field2.setAccessible(true);
        try {
            return (Unsafe) field2.get(null);
        } catch (Exception e2) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m((Throwable) e2);
            return null;
        }
    }
}

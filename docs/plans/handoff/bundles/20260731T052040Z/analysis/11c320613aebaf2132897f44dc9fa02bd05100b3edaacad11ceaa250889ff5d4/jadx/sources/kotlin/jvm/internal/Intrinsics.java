package kotlin.jvm.internal;

import androidx.compose.ui.Modifier;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.UIntArray;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Intrinsics {
    public static boolean areEqual(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static int compare(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static final UIntArray.Iterator iterator(Object[] objArr) {
        objArr.getClass();
        return new UIntArray.Iterator(objArr);
    }

    public static void sanitizeStackTrace(RuntimeException runtimeException, String str) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
    }

    public static void throwUninitializedPropertyAccessException(String str) {
        SerializationException serializationException = new SerializationException(Modifier.CC.m("lateinit property ", str, " has not been initialized"));
        sanitizeStackTrace(serializationException, Intrinsics.class.getName());
        throw serializationException;
    }

    public static int compare(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Kotlin {
        public static final Object[] EMPTY = new Object[0];

        public static final Object[] toArray(Collection collection, Object[] objArr) {
            Object[] objArr2;
            collection.getClass();
            objArr.getClass();
            int size = collection.size();
            int i = 0;
            if (size != 0) {
                Iterator it = collection.iterator();
                if (it.hasNext()) {
                    if (size <= objArr.length) {
                        objArr2 = objArr;
                    } else {
                        Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                        newInstance.getClass();
                        objArr2 = (Object[]) newInstance;
                    }
                    while (true) {
                        int i2 = i + 1;
                        objArr2[i] = it.next();
                        if (i2 >= objArr2.length) {
                            if (!it.hasNext()) {
                                return objArr2;
                            }
                            int i3 = ((i2 * 3) + 1) >>> 1;
                            if (i3 <= i2) {
                                i3 = 2147483645;
                                if (i2 >= 2147483645) {
                                    throw new OutOfMemoryError();
                                }
                            }
                            objArr2 = Arrays.copyOf(objArr2, i3);
                        } else if (!it.hasNext()) {
                            if (objArr2 != objArr) {
                                return Arrays.copyOf(objArr2, i2);
                            }
                            objArr[i2] = null;
                            return objArr;
                        }
                        i = i2;
                    }
                } else if (objArr.length > 0) {
                    objArr[0] = null;
                }
            } else if (objArr.length > 0) {
                objArr[0] = null;
                return objArr;
            }
            return objArr;
        }

        public static final Object[] toArray(Collection collection) {
            collection.getClass();
            int size = collection.size();
            Object[] objArr = EMPTY;
            if (size == 0) {
                return objArr;
            }
            Iterator it = collection.iterator();
            if (!it.hasNext()) {
                return objArr;
            }
            Object[] objArr2 = new Object[size];
            int i = 0;
            while (true) {
                int i2 = i + 1;
                objArr2[i] = it.next();
                if (i2 >= objArr2.length) {
                    if (!it.hasNext()) {
                        return objArr2;
                    }
                    int i3 = ((i2 * 3) + 1) >>> 1;
                    if (i3 <= i2) {
                        i3 = 2147483645;
                        if (i2 >= 2147483645) {
                            throw new OutOfMemoryError();
                        }
                    }
                    objArr2 = Arrays.copyOf(objArr2, i3);
                } else if (!it.hasNext()) {
                    return Arrays.copyOf(objArr2, i2);
                }
                i = i2;
            }
        }
    }
}

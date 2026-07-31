package org.mozilla.javascript;

import androidx.compose.ui.node.Owner;
import java.io.BufferedReader;
import java.io.Reader;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Kit {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class ComplexKey {
        private int hash;
        private Object key1;
        private Object key2;

        public ComplexKey(Object obj, Object obj2) {
            this.key1 = obj;
            this.key2 = obj2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ComplexKey)) {
                return false;
            }
            ComplexKey complexKey = (ComplexKey) obj;
            return this.key1.equals(complexKey.key1) && this.key2.equals(complexKey.key2);
        }

        public int hashCode() {
            if (this.hash == 0) {
                this.hash = this.key1.hashCode() ^ this.key2.hashCode();
            }
            return this.hash;
        }
    }

    public static Object addListener(Object obj, Object obj2) {
        if (obj2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        if (obj2 instanceof Object[]) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        if (obj == null) {
            return obj2;
        }
        if (!(obj instanceof Object[])) {
            return new Object[]{obj, obj2};
        }
        Object[] objArr = (Object[]) obj;
        int length = objArr.length;
        if (length < 2) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        Object[] objArr2 = new Object[length + 1];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        objArr2[length] = obj2;
        return objArr2;
    }

    public static Class<?> classOrNull(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException | IllegalArgumentException | LinkageError | SecurityException unused) {
            return null;
        }
    }

    public static RuntimeException codeBug(String str) {
        IllegalStateException illegalStateException = new IllegalStateException(Owner.CC.m("FAILED ASSERTION: ", str));
        illegalStateException.printStackTrace(System.err);
        throw illegalStateException;
    }

    public static Object getListener(Object obj, int i) {
        if (i == 0) {
            if (obj == null) {
                return null;
            }
            if (!(obj instanceof Object[])) {
                return obj;
            }
            Object[] objArr = (Object[]) obj;
            if (objArr.length >= 2) {
                return objArr[0];
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        if (i == 1) {
            if (obj instanceof Object[]) {
                return ((Object[]) obj)[1];
            }
            if (obj != null) {
                return null;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        Object[] objArr2 = (Object[]) obj;
        int length = objArr2.length;
        if (length < 2) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        if (i == length) {
            return null;
        }
        return objArr2[i];
    }

    public static Object initHash(Map<Object, Object> map, Object obj, Object obj2) {
        synchronized (map) {
            try {
                Object obj3 = map.get(obj);
                if (obj3 == null) {
                    map.put(obj, obj2);
                } else {
                    obj2 = obj3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj2;
    }

    public static Object makeHashKeyFromPair(Object obj, Object obj2) {
        if (obj == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        if (obj2 != null) {
            return new ComplexKey(obj, obj2);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        return null;
    }

    public static Object newInstanceOrNull(Class<?> cls) {
        try {
            return cls.getDeclaredConstructor(null).newInstance(null);
        } catch (IllegalAccessException | InstantiationException | LinkageError | NoSuchMethodException | SecurityException | InvocationTargetException unused) {
            return null;
        }
    }

    public static String readReader(Reader reader) {
        BufferedReader bufferedReader = new BufferedReader(reader);
        try {
            char[] cArr = new char[1024];
            StringBuilder sb = new StringBuilder(1024);
            while (true) {
                int read = bufferedReader.read(cArr, 0, 1024);
                if (read == -1) {
                    String sb2 = sb.toString();
                    bufferedReader.close();
                    return sb2;
                }
                sb.append(cArr, 0, read);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0024, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] readStream(java.io.InputStream r6, int r7) {
        /*
            if (r7 <= 0) goto L38
            byte[] r0 = new byte[r7]
            r1 = 0
            r2 = r1
        L6:
            int r3 = r0.length
            int r3 = r3 - r2
            int r3 = r6.read(r0, r2, r3)
            if (r3 >= 0) goto L17
            int r6 = r0.length
            if (r2 == r6) goto L24
            byte[] r6 = new byte[r2]
            java.lang.System.arraycopy(r0, r1, r6, r1, r2)
            return r6
        L17:
            int r2 = r2 + r3
            int r3 = r0.length
            if (r2 != r3) goto L6
            r3 = -1
            if (r2 != r7) goto L25
            int r4 = r6.read()
            if (r4 >= 0) goto L26
        L24:
            return r0
        L25:
            r4 = r3
        L26:
            int r5 = r0.length
            int r5 = r5 * 2
            byte[] r5 = new byte[r5]
            java.lang.System.arraycopy(r0, r1, r5, r1, r2)
            if (r4 == r3) goto L36
            int r0 = r2 + 1
            byte r3 = (byte) r4
            r5[r2] = r3
            r2 = r0
        L36:
            r0 = r5
            goto L6
        L38:
            java.lang.String r6 = "Bad initialBufferCapacity: "
            java.lang.String r6 = androidx.compose.ui.Modifier.CC.m(r7, r6)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r6)
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Kit.readStream(java.io.InputStream, int):byte[]");
    }

    public static Object removeListener(Object obj, Object obj2) {
        if (obj2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        if (obj2 instanceof Object[]) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
            return null;
        }
        if (obj == obj2) {
            return null;
        }
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            if (length < 2) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return null;
            }
            if (length == 2) {
                Object obj3 = objArr[1];
                if (obj3 == obj2) {
                    return objArr[0];
                }
                if (objArr[0] == obj2) {
                    return obj3;
                }
            } else {
                int i = length;
                while (true) {
                    int i2 = i - 1;
                    if (objArr[i2] == obj2) {
                        Object[] objArr2 = new Object[length - 1];
                        System.arraycopy(objArr, 0, objArr2, 0, i2);
                        System.arraycopy(objArr, i, objArr2, i2, length - i);
                        return objArr2;
                    }
                    if (i2 == 0) {
                        break;
                    }
                    i = i2;
                }
            }
        }
        return obj;
    }

    public static boolean testIfCanLoadRhinoClasses(ClassLoader classLoader) {
        Class<?> cls = ScriptRuntime.ContextFactoryClass;
        return classOrNull(classLoader, cls.getName()) == cls;
    }

    public static int xDigitToInt(int i, int i2) {
        int i3;
        if (i <= 57) {
            i3 = i - 48;
            if (i3 < 0) {
                return -1;
            }
        } else if (i <= 70) {
            if (65 > i) {
                return -1;
            }
            i3 = i - 55;
        } else {
            if (i > 102 || 97 > i) {
                return -1;
            }
            i3 = i - 87;
        }
        return i3 | (i2 << 4);
    }

    public static Class<?> classOrNull(ClassLoader classLoader, String str) {
        try {
            return classLoader.loadClass(str);
        } catch (ClassNotFoundException | IllegalArgumentException | LinkageError | SecurityException unused) {
            return null;
        }
    }

    public static RuntimeException codeBug() {
        IllegalStateException illegalStateException = new IllegalStateException("FAILED ASSERTION");
        illegalStateException.printStackTrace(System.err);
        throw illegalStateException;
    }
}

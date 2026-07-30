package c.b.b;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class K extends AbstractC0443b {
    public static Map defaultInstanceMap = new ConcurrentHashMap();
    public N0 unknownFields = N0.f;
    public int memoizedSerializedSize = -1;

    public static K getDefaultInstance(Class cls) {
        K k = (K) defaultInstanceMap.get(cls);
        if (k == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                k = (K) defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (k == null) {
            k = ((K) U0.a(cls)).getDefaultInstanceForType();
            if (k == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, k);
        }
        return k;
    }

    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public final F createBuilder() {
        return (F) dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_BUILDER, null, null);
    }

    public Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        return dynamicMethod(generatedMessageLite$MethodToInvoke, null, null);
    }

    public abstract Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (getDefaultInstanceForType().getClass().isInstance(obj)) {
            return C0487x0.f3224c.b(this).d(this, (K) obj);
        }
        return false;
    }

    @Override // c.b.b.InterfaceC0470o0
    public int getSerializedSize() {
        if (this.memoizedSerializedSize == -1) {
            this.memoizedSerializedSize = C0487x0.f3224c.b(this).f(this);
        }
        return this.memoizedSerializedSize;
    }

    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int i2 = C0487x0.f3224c.b(this).i(this);
        this.memoizedHashCode = i2;
        return i2;
    }

    @Override // c.b.b.InterfaceC0472p0
    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    @Override // c.b.b.InterfaceC0470o0
    public InterfaceC0468n0 newBuilderForType() {
        return (F) dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_BUILDER, null, null);
    }

    public String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        c.b.a.c.b.a.I(this, sb, 0);
        return sb.toString();
    }

    @Override // c.b.b.InterfaceC0470o0
    public void writeTo(AbstractC0476s abstractC0476s) {
        A0 b2 = C0487x0.f3224c.b(this);
        C0478t c0478t = abstractC0476s.f3211a;
        if (c0478t == null) {
            c0478t = new C0478t(abstractC0476s);
        }
        b2.c(this, c0478t);
    }

    public static final boolean isInitialized(K k, boolean z) {
        byte byteValue = ((Byte) k.dynamicMethod(GeneratedMessageLite$MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean b2 = C0487x0.f3224c.b(k).b(k);
        if (z) {
            k.dynamicMethod(GeneratedMessageLite$MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, b2 ? k : null, null);
        }
        return b2;
    }

    @Override // c.b.b.InterfaceC0472p0
    public final K getDefaultInstanceForType() {
        return (K) dynamicMethod(GeneratedMessageLite$MethodToInvoke.GET_DEFAULT_INSTANCE, null, null);
    }

    @Override // c.b.b.InterfaceC0470o0
    public final F toBuilder() {
        F f = (F) dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_BUILDER, null, null);
        f.copyOnWrite();
        f.mergeFromInstance(f.instance, this);
        return f;
    }
}

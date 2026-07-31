package kotlin.reflect.jvm.internal.calls;

import androidx.work.Operation$State;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class InternalUnderlyingValOfInlineClass implements Caller {
    public final List parameterTypes;
    public final Class returnType;
    public final Method unboxMethod;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Bound extends InternalUnderlyingValOfInlineClass implements BoundCaller {
        public final Object boundReceiver;

        public Bound(Method method, Object obj) {
            super(method, EmptyList.INSTANCE);
            this.boundReceiver = obj;
        }

        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public final Object call(Object[] objArr) {
            Operation$State.checkArguments(this, objArr);
            return this.unboxMethod.invoke(this.boundReceiver, Arrays.copyOf(objArr, objArr.length));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Unbound extends InternalUnderlyingValOfInlineClass {
        @Override // kotlin.reflect.jvm.internal.calls.Caller
        public final Object call(Object[] objArr) {
            Operation$State.checkArguments(this, objArr);
            Object obj = objArr[0];
            Object[] copyOfRange = objArr.length <= 1 ? new Object[0] : ArraysKt___ArraysKt.copyOfRange(objArr, 1, objArr.length);
            return this.unboxMethod.invoke(obj, Arrays.copyOf(copyOfRange, copyOfRange.length));
        }
    }

    public InternalUnderlyingValOfInlineClass(Method method, List list) {
        this.unboxMethod = method;
        this.parameterTypes = list;
        Class<?> returnType = method.getReturnType();
        returnType.getClass();
        this.returnType = returnType;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Member getMember() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final List getParameterTypes() {
        return this.parameterTypes;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Type getReturnType() {
        return this.returnType;
    }
}

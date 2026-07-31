package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.UtilKt;
import okhttp3.MultipartBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InlineClassAwareCaller implements Caller {
    public final Caller caller;
    public final MultipartBody.Builder data;
    public final boolean isDefault;

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
    
        if ((r9 instanceof kotlin.reflect.jvm.internal.calls.BoundCaller) != false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InlineClassAwareCaller(kotlin.reflect.jvm.internal.calls.Caller r9, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.calls.InlineClassAwareCaller.<init>(kotlin.reflect.jvm.internal.calls.Caller, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, boolean):void");
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Object call(Object[] objArr) {
        Object invoke;
        MultipartBody.Builder builder = this.data;
        IntRange intRange = (IntRange) builder.boundary;
        Method[] methodArr = (Method[]) builder.type;
        Method method = (Method) builder.parts;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        int i = intRange.first;
        int i2 = intRange.last;
        if (i <= i2) {
            while (true) {
                Method method2 = methodArr[i];
                Object obj = objArr[i];
                if (method2 != null) {
                    if (obj != null) {
                        obj = method2.invoke(obj, null);
                    } else {
                        Class<?> returnType = method2.getReturnType();
                        returnType.getClass();
                        obj = UtilKt.defaultPrimitiveValue(returnType);
                    }
                }
                copyOf[i] = obj;
                if (i == i2) {
                    break;
                }
                i++;
            }
        }
        Object call = this.caller.call(copyOf);
        return (method == null || (invoke = method.invoke(null, call)) == null) ? call : invoke;
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Member getMember() {
        return this.caller.getMember();
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final List getParameterTypes() {
        return this.caller.getParameterTypes();
    }

    @Override // kotlin.reflect.jvm.internal.calls.Caller
    public final Type getReturnType() {
        return this.caller.getReturnType();
    }
}

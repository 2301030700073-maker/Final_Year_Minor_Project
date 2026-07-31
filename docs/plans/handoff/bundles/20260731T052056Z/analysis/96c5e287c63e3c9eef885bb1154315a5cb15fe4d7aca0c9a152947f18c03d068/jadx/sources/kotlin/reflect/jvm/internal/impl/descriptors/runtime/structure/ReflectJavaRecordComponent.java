package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import androidx.room.Room;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.Java8ParameterNamesLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaRecordComponent extends ReflectJavaMember {
    public final Object recordComponent;

    public ReflectJavaRecordComponent(Object obj) {
        obj.getClass();
        this.recordComponent = obj;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMember
    public final Member getMember() {
        Object obj = this.recordComponent;
        obj.getClass();
        Java8ParameterNamesLoader.Cache cache = Room._cache;
        Method method = null;
        if (cache == null) {
            Class<?> cls = obj.getClass();
            try {
                cache = new Java8ParameterNamesLoader.Cache(cls.getMethod("getType", null), cls.getMethod("getAccessor", null));
            } catch (NoSuchMethodException unused) {
                cache = new Java8ParameterNamesLoader.Cache(null, null);
            }
            Room._cache = cache;
        }
        Method method2 = cache.getName;
        if (method2 != null) {
            Object invoke = method2.invoke(obj, null);
            invoke.getClass();
            method = (Method) invoke;
        }
        if (method != null) {
            return method;
        }
        throw new NoSuchMethodError("Can't find `getAccessor` method");
    }

    public final ReflectJavaType getType() {
        Object obj = this.recordComponent;
        obj.getClass();
        Java8ParameterNamesLoader.Cache cache = Room._cache;
        Class cls = null;
        if (cache == null) {
            Class<?> cls2 = obj.getClass();
            try {
                cache = new Java8ParameterNamesLoader.Cache(cls2.getMethod("getType", null), cls2.getMethod("getAccessor", null));
            } catch (NoSuchMethodException unused) {
                cache = new Java8ParameterNamesLoader.Cache(null, null);
            }
            Room._cache = cache;
        }
        Method method = cache.getParameters;
        if (method != null) {
            Object invoke = method.invoke(obj, null);
            invoke.getClass();
            cls = (Class) invoke;
        }
        if (cls != null) {
            return new ReflectJavaClassifierType(cls);
        }
        throw new NoSuchMethodError("Can't find `getType` method");
    }
}

package androidx.window.core;

import android.app.Activity;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import kotlin.Unit;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConsumerAdapter {
    public final ClassLoader loader;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ConsumerHandler implements InvocationHandler {
        public final ClassReference clazz;
        public final ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1 consumer;

        public ConsumerHandler(ClassReference classReference, ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1 extensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1) {
            this.clazz = classReference;
            this.consumer = extensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            obj.getClass();
            method.getClass();
            boolean areEqual = Intrinsics.areEqual(method.getName(), "accept");
            ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1 extensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1 = this.consumer;
            if (areEqual && objArr != null && objArr.length == 1) {
                Object obj2 = objArr[0];
                ClassReference classReference = this.clazz;
                if (classReference.isInstance(obj2)) {
                    obj2.getClass();
                    extensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1.invoke(obj2);
                    return Unit.INSTANCE;
                }
                throw new ClassCastException("Value cannot be cast to " + classReference.getQualifiedName());
            }
            if (Intrinsics.areEqual(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1) {
                return Boolean.valueOf(obj == objArr[0]);
            }
            if (Intrinsics.areEqual(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null) {
                return Integer.valueOf(extensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1.hashCode());
            }
            if (Intrinsics.areEqual(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null) {
                return extensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1.toString();
            }
            throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + objArr);
        }
    }

    public ConsumerAdapter(ClassLoader classLoader, int i) {
        switch (i) {
            case 1:
                this.loader = classLoader;
                break;
            default:
                classLoader.getClass();
                this.loader = classLoader;
                break;
        }
    }

    public ConsumerAdapter$createSubscription$1 createSubscription(Object obj, ClassReference classReference, Activity activity, ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1 extensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1) {
        activity.getClass();
        ConsumerHandler consumerHandler = new ConsumerHandler(classReference, extensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1);
        ClassLoader classLoader = this.loader;
        Class<?> loadClass = classLoader.loadClass("java.util.function.Consumer");
        loadClass.getClass();
        Object newProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{loadClass}, consumerHandler);
        newProxyInstance.getClass();
        Class<?> cls = obj.getClass();
        Class<?> loadClass2 = classLoader.loadClass("java.util.function.Consumer");
        loadClass2.getClass();
        cls.getMethod("addWindowLayoutInfoListener", Activity.class, loadClass2).invoke(obj, activity, newProxyInstance);
        Class<?> cls2 = obj.getClass();
        Class<?> loadClass3 = classLoader.loadClass("java.util.function.Consumer");
        loadClass3.getClass();
        return new ConsumerAdapter$createSubscription$1(cls2.getMethod("removeWindowLayoutInfoListener", loadClass3), obj, newProxyInstance);
    }
}

package androidx.lifecycle;

import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassesInfoCache {
    public static final ClassesInfoCache sInstance = new ClassesInfoCache();
    public final HashMap mCallbackMap = new HashMap();
    public final HashMap mHasLifecycleMethods = new HashMap();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CallbackInfo {
        public final HashMap mEventToHandlers = new HashMap();
        public final HashMap mHandlerToEvent;

        public CallbackInfo(HashMap hashMap) {
            this.mHandlerToEvent = hashMap;
            for (Map.Entry entry : hashMap.entrySet()) {
                Lifecycle$Event lifecycle$Event = (Lifecycle$Event) entry.getValue();
                List list = (List) this.mEventToHandlers.get(lifecycle$Event);
                if (list == null) {
                    list = new ArrayList();
                    this.mEventToHandlers.put(lifecycle$Event, list);
                }
                list.add((MethodReference) entry.getKey());
            }
        }

        public static void invokeMethodsForEvent(List list, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event, LifecycleObserver lifecycleObserver) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    MethodReference methodReference = (MethodReference) list.get(size);
                    Method method = methodReference.mMethod;
                    try {
                        int i = methodReference.mCallType;
                        if (i == 0) {
                            method.invoke(lifecycleObserver, null);
                        } else if (i == 1) {
                            method.invoke(lifecycleObserver, lifecycleOwner);
                        } else if (i == 2) {
                            method.invoke(lifecycleObserver, lifecycleOwner, lifecycle$Event);
                        }
                    } catch (IllegalAccessException e) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                        return;
                    } catch (InvocationTargetException e2) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m("Failed to call observer method", e2.getCause());
                        return;
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MethodReference {
        public final int mCallType;
        public final Method mMethod;

        public MethodReference(int i, Method method) {
            this.mCallType = i;
            this.mMethod = method;
            method.setAccessible(true);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodReference)) {
                return false;
            }
            MethodReference methodReference = (MethodReference) obj;
            return this.mCallType == methodReference.mCallType && this.mMethod.getName().equals(methodReference.mMethod.getName());
        }

        public final int hashCode() {
            return this.mMethod.getName().hashCode() + (this.mCallType * 31);
        }
    }

    public static void verifyAndPutHandler(HashMap hashMap, MethodReference methodReference, Lifecycle$Event lifecycle$Event, Class cls) {
        Lifecycle$Event lifecycle$Event2 = (Lifecycle$Event) hashMap.get(methodReference);
        if (lifecycle$Event2 == null || lifecycle$Event == lifecycle$Event2) {
            if (lifecycle$Event2 == null) {
                hashMap.put(methodReference, lifecycle$Event);
                return;
            }
            return;
        }
        String name = methodReference.mMethod.getName();
        String name2 = cls.getName();
        String valueOf = String.valueOf(lifecycle$Event2);
        String valueOf2 = String.valueOf(lifecycle$Event);
        StringBuilder m352m = Modifier.CC.m352m("Method ", name, " in ", name2, " already declared with different @OnLifecycleEvent value: previous value ");
        m352m.append(valueOf);
        m352m.append(", new value ");
        m352m.append(valueOf2);
        throw new IllegalArgumentException(m352m.toString());
    }

    public final CallbackInfo createInfo(Class cls, Method[] methodArr) {
        int i;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = this.mCallbackMap;
        if (superclass != null) {
            CallbackInfo callbackInfo = (CallbackInfo) hashMap2.get(superclass);
            if (callbackInfo == null) {
                callbackInfo = createInfo(superclass, null);
            }
            hashMap.putAll(callbackInfo.mHandlerToEvent);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            CallbackInfo callbackInfo2 = (CallbackInfo) hashMap2.get(cls2);
            if (callbackInfo2 == null) {
                callbackInfo2 = createInfo(cls2, null);
            }
            for (Map.Entry entry : callbackInfo2.mHandlerToEvent.entrySet()) {
                verifyAndPutHandler(hashMap, (MethodReference) entry.getKey(), (Lifecycle$Event) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!LifecycleOwner.class.isAssignableFrom(parameterTypes[0])) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("invalid parameter type. Must be one and instanceof LifecycleOwner");
                        return null;
                    }
                    i = 1;
                }
                Lifecycle$Event value = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (!Lifecycle$Event.class.isAssignableFrom(parameterTypes[1])) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("invalid parameter type. second arg must be an event");
                        return null;
                    }
                    if (value != Lifecycle$Event.ON_ANY) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Second arg is supported only for ON_ANY value");
                        return null;
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("cannot have more than 2 params");
                    return null;
                }
                verifyAndPutHandler(hashMap, new MethodReference(i, method), value, cls);
                z = true;
            }
        }
        CallbackInfo callbackInfo3 = new CallbackInfo(hashMap);
        hashMap2.put(cls, callbackInfo3);
        this.mHasLifecycleMethods.put(cls, Boolean.valueOf(z));
        return callbackInfo3;
    }
}

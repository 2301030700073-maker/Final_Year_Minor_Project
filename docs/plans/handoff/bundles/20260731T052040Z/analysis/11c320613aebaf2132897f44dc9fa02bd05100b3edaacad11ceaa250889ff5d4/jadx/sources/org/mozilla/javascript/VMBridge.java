package org.mozilla.javascript;

import java.lang.reflect.AccessibleObject;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class VMBridge {
    static final VMBridge instance = makeInstance();

    private static VMBridge makeInstance() {
        VMBridge vMBridge;
        String[] strArr = {"org.mozilla.javascript.VMBridge_custom", "org.mozilla.javascript.jdk18.VMBridge_jdk18"};
        for (int i = 0; i != 2; i++) {
            Class<?> classOrNull = Kit.classOrNull(strArr[i]);
            if (classOrNull != null && (vMBridge = (VMBridge) Kit.newInstanceOrNull(classOrNull)) != null) {
                return vMBridge;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Failed to create VMBridge instance");
        return null;
    }

    public abstract Context getContext(Object obj);

    public abstract Object getInterfaceProxyHelper(ContextFactory contextFactory, Class<?>[] clsArr);

    public abstract Object getThreadContextHelper();

    public abstract Object newInterfaceProxy(Object obj, ContextFactory contextFactory, InterfaceAdapter interfaceAdapter, Object obj2, Scriptable scriptable);

    public abstract void setContext(Object obj, Context context);

    public abstract boolean tryToMakeAccessible(AccessibleObject accessibleObject);
}

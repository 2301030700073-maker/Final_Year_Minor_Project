package org.mozilla.javascript;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import org.mozilla.javascript.JavaMembers;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
class JavaMembers_jdk11 extends JavaMembers {
    public JavaMembers_jdk11(Scriptable scriptable, Class<?> cls, boolean z) {
        super(scriptable, cls, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
    
        r0 = r0.getSuperclass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
    
        if (r0 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0029, code lost:
    
        if (isExportedClass(r0) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002b, code lost:
    
        r7 = r0.getMethod(r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x000c, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Method findAccessibleMethod(java.lang.reflect.Method r7) {
        /*
            java.lang.Class r0 = r7.getDeclaringClass()
            java.lang.String r1 = r7.getName()
            java.lang.Class[] r2 = r7.getParameterTypes()
        Lc:
            java.lang.Class[] r3 = r0.getInterfaces()
            int r4 = r3.length
            r5 = 0
        L12:
            if (r5 >= r4) goto L1e
            r6 = r3[r5]
            java.lang.reflect.Method r7 = r6.getMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L1b
            goto L2f
        L1b:
            int r5 = r5 + 1
            goto L12
        L1e:
            java.lang.Class r0 = r0.getSuperclass()
            if (r0 != 0) goto L25
            goto L2f
        L25:
            boolean r3 = isExportedClass(r0)
            if (r3 == 0) goto Lc
            java.lang.reflect.Method r7 = r0.getMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> Lc
        L2f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.JavaMembers_jdk11.findAccessibleMethod(java.lang.reflect.Method):java.lang.reflect.Method");
    }

    private static boolean isExportedClass(Class<?> cls) {
        String name;
        Package r0 = cls.getPackage();
        if (r0 != null) {
            name = r0.getName();
        } else {
            if (!Proxy.isProxyClass(cls)) {
                return true;
            }
            String name2 = cls.getName();
            name = name2.substring(0, name2.lastIndexOf(46));
        }
        try {
            try {
                Object invoke = cls.getClass().getMethod("getModule", null).invoke(cls, null);
                return ((Boolean) invoke.getClass().getMethod("isExported", String.class).invoke(invoke, name)).booleanValue();
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
                return false;
            }
        } catch (NoSuchMethodException unused2) {
            return true;
        }
    }

    @Override // org.mozilla.javascript.JavaMembers
    public void discoverPublicMethods(Class<?> cls, Map<JavaMembers.MethodSignature, Method> map) {
        if (isExportedClass(cls)) {
            super.discoverPublicMethods(cls, map);
            return;
        }
        for (Method method : cls.getMethods()) {
            JavaMembers.registerMethod(map, findAccessibleMethod(method));
        }
    }
}

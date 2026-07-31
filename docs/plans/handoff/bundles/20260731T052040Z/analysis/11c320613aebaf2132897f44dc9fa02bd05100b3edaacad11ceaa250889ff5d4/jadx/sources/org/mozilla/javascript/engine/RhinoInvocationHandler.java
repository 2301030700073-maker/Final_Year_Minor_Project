package org.mozilla.javascript.engine;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class RhinoInvocationHandler implements InvocationHandler {
    private final RhinoScriptEngine engine;
    private final Object thiz;

    public RhinoInvocationHandler(RhinoScriptEngine rhinoScriptEngine, Object obj) {
        this.engine = rhinoScriptEngine;
        this.thiz = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        return this.engine.invokeMethodRaw(this.thiz, method.getName(), method.getReturnType(), objArr);
    }
}

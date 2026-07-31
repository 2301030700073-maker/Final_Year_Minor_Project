package org.mozilla.javascript.engine;

import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import javax.script.AbstractScriptEngine;
import javax.script.Bindings;
import javax.script.Compilable;
import javax.script.CompiledScript;
import javax.script.Invocable;
import javax.script.ScriptContext;
import javax.script.ScriptEngineFactory;
import javax.script.ScriptException;
import javax.script.SimpleBindings;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Callable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ContextFactory;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class RhinoScriptEngine extends AbstractScriptEngine implements Compilable, Invocable {
    private static final boolean DEFAULT_DEBUG = true;
    private static final String DEFAULT_FILENAME = "eval";
    static final int DEFAULT_LANGUAGE_VERSION = 200;
    public static final String INTERPRETED_MODE = "org.mozilla.javascript.interpreted_mode";

    @Deprecated
    public static final String OPTIMIZATION_LEVEL = "org.mozilla.javascript.optimization_level";
    private static final CtxFactory ctxFactory = new CtxFactory(0);
    private final RhinoScriptEngineFactory factory;
    private ScriptableObject topLevelScope = null;
    private final Builtins builtins = new Builtins();

    public RhinoScriptEngine(RhinoScriptEngineFactory rhinoScriptEngineFactory) {
        this.factory = rhinoScriptEngineFactory;
    }

    private void configureContext(Context context) {
        Object obj = get("javax.script.language_version");
        if (obj != null) {
            context.setLanguageVersion(parseInteger(obj));
        }
        Object obj2 = get(OPTIMIZATION_LEVEL);
        if (obj2 != null) {
            context.setOptimizationLevel(parseInteger(obj2));
        }
        Object obj3 = get(INTERPRETED_MODE);
        if (obj3 != null) {
            context.setInterpretedMode(parseBoolean(obj3));
        }
    }

    private String getFilename() {
        Object obj = get("javax.script.filename");
        return obj instanceof String ? (String) obj : DEFAULT_FILENAME;
    }

    private Scriptable initScope(Context context, ScriptContext scriptContext) {
        configureContext(context);
        if (this.topLevelScope == null) {
            ScriptableObject initStandardObjects = context.initStandardObjects();
            this.topLevelScope = initStandardObjects;
            initStandardObjects.associateValue(Builtins.BUILTIN_KEY, this.builtins);
            this.builtins.register(context, this.topLevelScope, scriptContext);
        }
        BindingsObject bindingsObject = new BindingsObject(scriptContext.getBindings(100));
        bindingsObject.setParentScope(null);
        bindingsObject.setPrototype(this.topLevelScope);
        if (scriptContext.getBindings(200) != null) {
            BindingsObject bindingsObject2 = new BindingsObject(scriptContext.getBindings(200));
            bindingsObject2.setParentScope(null);
            bindingsObject2.setPrototype(this.topLevelScope);
            bindingsObject.setPrototype(bindingsObject2);
        }
        return bindingsObject;
    }

    private static boolean methodsMissing(Scriptable scriptable, Class<?> cls) {
        for (Method method : cls.getMethods()) {
            if (method.getDeclaringClass() != Object.class && !(ScriptableObject.getProperty(scriptable, method.getName()) instanceof Callable)) {
                return true;
            }
        }
        return false;
    }

    private static boolean parseBoolean(Object obj) {
        if (obj instanceof String) {
            return Boolean.parseBoolean((String) obj);
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        throw new ScriptException("Value must be a string or boolean");
    }

    private static int parseInteger(Object obj) {
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (NumberFormatException unused) {
                throw new ScriptException("Invalid number ".concat(String.valueOf(obj)));
            }
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        throw new ScriptException("Value must be a string or number");
    }

    public CompiledScript compile(Reader reader) {
        try {
            Context enterContext = ctxFactory.enterContext();
            try {
                configureContext(enterContext);
                RhinoCompiledScript rhinoCompiledScript = new RhinoCompiledScript(this, enterContext.compileReader(reader, getFilename(), 1, null));
                enterContext.close();
                return rhinoCompiledScript;
            } finally {
            }
        } catch (IOException e) {
            throw new ScriptException(e);
        } catch (RhinoException e2) {
            throw new ScriptException(e2.getMessage(), e2.sourceName(), e2.lineNumber(), e2.columnNumber());
        }
    }

    public Bindings createBindings() {
        return new SimpleBindings();
    }

    public Object eval(Reader reader, ScriptContext scriptContext) {
        try {
            Context enterContext = ctxFactory.enterContext();
            try {
                Object jsToJava = Context.jsToJava(enterContext.evaluateReader(initScope(enterContext, scriptContext), reader, getFilename(), 0, null), Object.class);
                enterContext.close();
                return jsToJava;
            } catch (Throwable th) {
                if (enterContext == null) {
                    throw th;
                }
                try {
                    enterContext.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (IOException e) {
            throw new ScriptException(e);
        } catch (RhinoException e2) {
            throw new ScriptException(e2.getMessage(), e2.sourceName(), e2.lineNumber(), e2.columnNumber());
        }
    }

    public ScriptEngineFactory getFactory() {
        return this.factory;
    }

    public <T> T getInterface(Object obj, Class<T> cls) {
        if (cls == null || !cls.isInterface()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Not an interface");
            return null;
        }
        try {
            Context enterContext = ctxFactory.enterContext();
            try {
                if (methodsMissing(Context.toObject(obj, initScope(enterContext, this.context)), cls)) {
                    if (enterContext != null) {
                        enterContext.close();
                    }
                    return null;
                }
                if (enterContext != null) {
                    enterContext.close();
                }
                return (T) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls}, new RhinoInvocationHandler(this, obj));
            } finally {
            }
        } catch (ScriptException unused) {
            return null;
        }
    }

    public Object invokeFunction(String str, Object... objArr) {
        return invokeMethod(null, str, objArr);
    }

    public Object invokeMethod(Object obj, String str, Object... objArr) {
        return invokeMethodRaw(obj, str, Object.class, objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
    
        if (r1 != null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invokeMethodRaw(java.lang.Object r5, java.lang.String r6, java.lang.Class<?> r7, java.lang.Object... r8) {
        /*
            r4 = this;
            java.lang.String r0 = "\""
            org.mozilla.javascript.engine.RhinoScriptEngine$CtxFactory r1 = org.mozilla.javascript.engine.RhinoScriptEngine.ctxFactory     // Catch: org.mozilla.javascript.RhinoException -> L76
            org.mozilla.javascript.Context r1 = r1.enterContext()     // Catch: org.mozilla.javascript.RhinoException -> L76
            javax.script.ScriptContext r2 = r4.context     // Catch: java.lang.Throwable -> L35
            org.mozilla.javascript.Scriptable r4 = r4.initScope(r1, r2)     // Catch: java.lang.Throwable -> L35
            if (r5 != 0) goto L12
            r5 = r4
            goto L16
        L12:
            org.mozilla.javascript.Scriptable r5 = org.mozilla.javascript.Context.toObject(r5, r4)     // Catch: java.lang.Throwable -> L35
        L16:
            java.lang.Object r2 = org.mozilla.javascript.ScriptableObject.getProperty(r5, r6)     // Catch: java.lang.Throwable -> L35
            java.lang.Object r3 = org.mozilla.javascript.Scriptable.NOT_FOUND     // Catch: java.lang.Throwable -> L35
            if (r2 == r3) goto L65
            boolean r3 = r2 instanceof org.mozilla.javascript.Callable     // Catch: java.lang.Throwable -> L35
            if (r3 == 0) goto L4e
            org.mozilla.javascript.Callable r2 = (org.mozilla.javascript.Callable) r2     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L37
            r6 = 0
        L27:
            int r0 = r8.length     // Catch: java.lang.Throwable -> L35
            if (r6 >= r0) goto L37
            r0 = r8[r6]     // Catch: java.lang.Throwable -> L35
            java.lang.Object r0 = org.mozilla.javascript.Context.javaToJS(r0, r4)     // Catch: java.lang.Throwable -> L35
            r8[r6] = r0     // Catch: java.lang.Throwable -> L35
            int r6 = r6 + 1
            goto L27
        L35:
            r4 = move-exception
            goto L6b
        L37:
            java.lang.Object r4 = r2.call(r1, r4, r5, r8)     // Catch: java.lang.Throwable -> L35
            java.lang.Class r5 = java.lang.Void.TYPE     // Catch: java.lang.Throwable -> L35
            if (r7 != r5) goto L44
            r4 = 0
            if (r1 == 0) goto L43
            goto L4a
        L43:
            return r4
        L44:
            java.lang.Object r4 = org.mozilla.javascript.Context.jsToJava(r4, r7)     // Catch: java.lang.Throwable -> L35
            if (r1 == 0) goto L4d
        L4a:
            r1.close()     // Catch: org.mozilla.javascript.RhinoException -> L76
        L4d:
            return r4
        L4e:
            javax.script.ScriptException r4 = new javax.script.ScriptException     // Catch: java.lang.Throwable -> L35
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L35
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L35
            r5.append(r6)     // Catch: java.lang.Throwable -> L35
            java.lang.String r6 = "\" is not a function"
            r5.append(r6)     // Catch: java.lang.Throwable -> L35
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L35
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L35
            throw r4     // Catch: java.lang.Throwable -> L35
        L65:
            java.lang.NoSuchMethodException r4 = new java.lang.NoSuchMethodException     // Catch: java.lang.Throwable -> L35
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L35
            throw r4     // Catch: java.lang.Throwable -> L35
        L6b:
            if (r1 == 0) goto L75
            r1.close()     // Catch: java.lang.Throwable -> L71
            goto L75
        L71:
            r5 = move-exception
            r4.addSuppressed(r5)     // Catch: org.mozilla.javascript.RhinoException -> L76
        L75:
            throw r4     // Catch: org.mozilla.javascript.RhinoException -> L76
        L76:
            r4 = move-exception
            javax.script.ScriptException r5 = new javax.script.ScriptException
            java.lang.String r6 = r4.getMessage()
            java.lang.String r7 = r4.sourceName()
            int r8 = r4.lineNumber()
            int r4 = r4.columnNumber()
            r5.<init>(r6, r7, r8, r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.engine.RhinoScriptEngine.invokeMethodRaw(java.lang.Object, java.lang.String, java.lang.Class, java.lang.Object[]):java.lang.Object");
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class CtxFactory extends ContextFactory {
        public /* synthetic */ CtxFactory(int i) {
            this();
        }

        @Override // org.mozilla.javascript.ContextFactory
        public boolean hasFeature(Context context, int i) {
            if (i == 18) {
                return true;
            }
            return super.hasFeature(context, i);
        }

        @Override // org.mozilla.javascript.ContextFactory
        public void onContextCreated(Context context) {
            context.setLanguageVersion(200);
            context.setGeneratingDebug(true);
        }

        private CtxFactory() {
        }
    }

    public CompiledScript compile(String str) {
        try {
            Context enterContext = ctxFactory.enterContext();
            try {
                configureContext(enterContext);
                RhinoCompiledScript rhinoCompiledScript = new RhinoCompiledScript(this, enterContext.compileString(str, getFilename(), 1, null));
                enterContext.close();
                return rhinoCompiledScript;
            } finally {
            }
        } catch (RhinoException e) {
            throw new ScriptException(e.getMessage(), e.sourceName(), e.lineNumber(), e.columnNumber());
        }
    }

    public Object eval(String str, ScriptContext scriptContext) {
        try {
            Context enterContext = ctxFactory.enterContext();
            try {
                Object jsToJava = Context.jsToJava(enterContext.evaluateString(initScope(enterContext, scriptContext), str, getFilename(), 0, null), Object.class);
                enterContext.close();
                return jsToJava;
            } finally {
            }
        } catch (RhinoException e) {
            throw new ScriptException(e.getMessage(), e.sourceName(), e.lineNumber(), e.columnNumber());
        }
    }

    public Object eval(Script script, ScriptContext scriptContext) {
        try {
            Context enterContext = ctxFactory.enterContext();
            try {
                Object jsToJava = Context.jsToJava(script.exec(enterContext, initScope(enterContext, scriptContext)), Object.class);
                if (enterContext != null) {
                    enterContext.close();
                }
                return jsToJava;
            } finally {
            }
        } catch (RhinoException e) {
            throw new ScriptException(e.getMessage(), e.sourceName(), e.lineNumber(), e.columnNumber());
        }
    }

    public <T> T getInterface(Class<T> cls) {
        if (cls != null && cls.isInterface()) {
            try {
                Context enterContext = ctxFactory.enterContext();
                try {
                    if (methodsMissing(initScope(enterContext, this.context), cls)) {
                        if (enterContext != null) {
                            enterContext.close();
                        }
                        return null;
                    }
                    if (enterContext != null) {
                        enterContext.close();
                    }
                    return (T) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls}, new RhinoInvocationHandler(this, null));
                } finally {
                }
            } catch (ScriptException unused) {
                return null;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Not an interface");
        return null;
    }
}

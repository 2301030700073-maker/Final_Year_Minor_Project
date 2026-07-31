package org.mozilla.javascript;

import j$.util.Objects;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.NativeGenerator;
import org.mozilla.javascript.NativeIterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ES6Generator extends IdScriptableObject {
    private static final Object GENERATOR_TAG = "Generator";
    private static final int Id_next = 1;
    private static final int Id_return = 2;
    private static final int Id_throw = 3;
    private static final int MAX_PROTOTYPE_ID = 4;
    private static final int SymbolId_iterator = 4;
    private static final long serialVersionUID = 1645892441041347273L;
    private Object delegee;
    private NativeFunction function;
    private int lineNumber;
    private String lineSource;
    private Object savedState;
    private State state = State.SUSPENDED_START;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public enum State {
        SUSPENDED_START,
        SUSPENDED_YIELD,
        EXECUTING,
        COMPLETED
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class YieldStarResult {
        private Object result;

        public YieldStarResult(Object obj) {
            this.result = obj;
        }

        public Object getResult() {
            return this.result;
        }
    }

    public ES6Generator(Scriptable scriptable, NativeFunction nativeFunction, Object obj) {
        this.function = nativeFunction;
        this.savedState = obj;
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        setParentScope(topLevelScope);
        setPrototype((ES6Generator) ScriptableObject.getTopScopeValue(topLevelScope, GENERATOR_TAG));
    }

    private Object callReturnOptionally(Context context, Scriptable scriptable, Object obj) {
        Object obj2 = Undefined.instance;
        Object[] objArr = obj2.equals(obj) ? ScriptRuntime.emptyArgs : new Object[]{obj};
        Object objectPropNoWarn = ScriptRuntime.getObjectPropNoWarn(this.delegee, "return", context, scriptable);
        if (obj2.equals(objectPropNoWarn)) {
            return null;
        }
        if (objectPropNoWarn instanceof Callable) {
            return ((Callable) objectPropNoWarn).call(context, scriptable, ScriptableObject.ensureScriptable(this.delegee), objArr);
        }
        throw ScriptRuntime.typeErrorById("msg.isnt.function", "return", ScriptRuntime.typeof(objectPropNoWarn));
    }

    public static ES6Generator init(ScriptableObject scriptableObject, boolean z) {
        ES6Generator eS6Generator = new ES6Generator();
        if (scriptableObject != null) {
            eS6Generator.setParentScope(scriptableObject);
            eS6Generator.setPrototype(ScriptableObject.getObjectPrototype(scriptableObject));
        }
        eS6Generator.activatePrototypeMap(4);
        if (z) {
            eS6Generator.sealObject();
        }
        if (scriptableObject != null) {
            scriptableObject.associateValue(GENERATOR_TAG, eS6Generator);
        }
        return eS6Generator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ad, code lost:
    
        if (r11.state == r13) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.Scriptable resumeAbruptLocal(org.mozilla.javascript.Context r12, org.mozilla.javascript.Scriptable r13, int r14, java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ES6Generator.resumeAbruptLocal(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, int, java.lang.Object):org.mozilla.javascript.Scriptable");
    }

    private Scriptable resumeDelegee(Context context, Scriptable scriptable, Object obj) {
        try {
            Scriptable ensureScriptable = ScriptableObject.ensureScriptable(ScriptRuntime.getPropFunctionAndThis(this.delegee, ES6Iterator.NEXT_METHOD, context, scriptable).call(context, scriptable, ScriptRuntime.lastStoredScriptable(context), Undefined.instance.equals(obj) ? ScriptRuntime.emptyArgs : new Object[]{obj}));
            if (!ScriptRuntime.isIteratorDone(context, ensureScriptable)) {
                return ensureScriptable;
            }
            this.delegee = null;
            return resumeLocal(context, scriptable, ScriptableObject.getProperty(ensureScriptable, ES6Iterator.VALUE_PROPERTY));
        } catch (RhinoException e) {
            this.delegee = null;
            return this.resumeAbruptLocal(context, scriptable, 1, e);
        }
    }

    private Scriptable resumeDelegeeReturn(Context context, Scriptable scriptable, Object obj) {
        try {
            Object callReturnOptionally = callReturnOptionally(context, scriptable, obj);
            if (callReturnOptionally == null) {
                this.delegee = null;
                return resumeAbruptLocal(context, scriptable, 2, obj);
            }
            if (!ScriptRuntime.isIteratorDone(context, callReturnOptionally)) {
                return ScriptableObject.ensureScriptable(callReturnOptionally);
            }
            this.delegee = null;
            return resumeAbruptLocal(context, scriptable, 2, ScriptRuntime.getObjectPropNoWarn(callReturnOptionally, ES6Iterator.VALUE_PROPERTY, context, scriptable));
        } catch (RhinoException e) {
            this.delegee = null;
            return resumeAbruptLocal(context, scriptable, 1, e);
        }
    }

    private Scriptable resumeDelegeeThrow(Context context, Scriptable scriptable, Object obj) {
        boolean z = false;
        try {
            Object call = ScriptRuntime.getPropFunctionAndThis(this.delegee, "throw", context, scriptable).call(context, scriptable, ScriptRuntime.lastStoredScriptable(context), new Object[]{obj});
            if (!ScriptRuntime.isIteratorDone(context, call)) {
                return ScriptableObject.ensureScriptable(call);
            }
            try {
                try {
                    callReturnOptionally(context, scriptable, Undefined.instance);
                    this.delegee = null;
                    return resumeLocal(context, scriptable, ScriptRuntime.getObjectProp(call, ES6Iterator.VALUE_PROPERTY, context, scriptable));
                } finally {
                }
            } catch (RhinoException e) {
                e = e;
                z = true;
                if (!z) {
                    try {
                        this.callReturnOptionally(context, scriptable, Undefined.instance);
                    } catch (RhinoException e2) {
                        return this.resumeAbruptLocal(context, scriptable, 1, e2);
                    } finally {
                    }
                }
                this.delegee = null;
                return this.resumeAbruptLocal(context, scriptable, 1, e);
            }
        } catch (RhinoException e3) {
            e = e3;
        }
    }

    private Scriptable resumeLocal(Context context, Scriptable scriptable, Object obj) {
        State state = this.state;
        State state2 = State.COMPLETED;
        if (state == state2) {
            return ES6Iterator.makeIteratorResult(context, scriptable, Boolean.TRUE);
        }
        State state3 = State.EXECUTING;
        if (state == state3) {
            throw ScriptRuntime.typeErrorById("msg.generator.executing", new Object[0]);
        }
        Scriptable makeIteratorResult = ES6Iterator.makeIteratorResult(context, scriptable, Boolean.FALSE);
        this.state = state3;
        try {
            try {
                try {
                    Object resumeGenerator = this.function.resumeGenerator(context, scriptable, 0, this.savedState, obj);
                    if (!(resumeGenerator instanceof YieldStarResult)) {
                        ScriptableObject.putProperty(makeIteratorResult, ES6Iterator.VALUE_PROPERTY, resumeGenerator);
                        if (this.state == state2) {
                            ScriptableObject.putProperty(makeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                            return makeIteratorResult;
                        }
                        this.state = State.SUSPENDED_YIELD;
                        return makeIteratorResult;
                    }
                    State state4 = State.SUSPENDED_YIELD;
                    this.state = state4;
                    try {
                        this.delegee = ScriptRuntime.callIterator(((YieldStarResult) resumeGenerator).getResult(), context, scriptable);
                        try {
                            Scriptable resumeDelegee = resumeDelegee(context, scriptable, Undefined.instance);
                            this.state = state3;
                            if (ScriptRuntime.isIteratorDone(context, resumeDelegee)) {
                                this.state = state2;
                            }
                            if (this.state == state2) {
                                ScriptableObject.putProperty(makeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                                return resumeDelegee;
                            }
                            this.state = state4;
                            return resumeDelegee;
                        } catch (Throwable th) {
                            this.state = State.EXECUTING;
                            throw th;
                        }
                    } catch (RhinoException e) {
                        Scriptable resumeAbruptLocal = resumeAbruptLocal(context, scriptable, 1, e);
                        if (this.state == State.COMPLETED) {
                            ScriptableObject.putProperty(makeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                        } else {
                            this.state = State.SUSPENDED_YIELD;
                        }
                        return resumeAbruptLocal;
                    }
                } catch (NativeGenerator.GeneratorClosedException unused) {
                    this.state = State.COMPLETED;
                    ScriptableObject.putProperty(makeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                    return makeIteratorResult;
                }
            } catch (JavaScriptException e2) {
                State state5 = State.COMPLETED;
                this.state = state5;
                if (!(e2.getValue() instanceof NativeIterator.StopIteration)) {
                    this.lineNumber = e2.lineNumber();
                    this.lineSource = e2.lineSource();
                    if (e2.getValue() instanceof RhinoException) {
                        throw ((RhinoException) e2.getValue());
                    }
                    throw e2;
                }
                ScriptableObject.putProperty(makeIteratorResult, ES6Iterator.VALUE_PROPERTY, ((NativeIterator.StopIteration) e2.getValue()).getValue());
                if (this.state != state5) {
                    this.state = State.SUSPENDED_YIELD;
                    return makeIteratorResult;
                }
                ScriptableObject.putProperty(makeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                return makeIteratorResult;
            } catch (RhinoException e3) {
                this.lineNumber = e3.lineNumber();
                this.lineSource = e3.lineSource();
                throw e3;
            }
        } catch (Throwable th2) {
            if (this.state == State.COMPLETED) {
                ScriptableObject.putProperty(makeIteratorResult, ES6Iterator.DONE_PROPERTY, Boolean.TRUE);
                throw th2;
            }
            this.state = State.SUSPENDED_YIELD;
            throw th2;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(GENERATOR_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        ES6Generator eS6Generator = (ES6Generator) IdScriptableObject.ensureType(scriptable2, ES6Generator.class, idFunctionObject);
        Object obj = objArr.length >= 1 ? objArr[0] : Undefined.instance;
        if (methodId == 1) {
            return eS6Generator.delegee == null ? eS6Generator.resumeLocal(context, scriptable, obj) : eS6Generator.resumeDelegee(context, scriptable, obj);
        }
        if (methodId == 2) {
            return eS6Generator.delegee == null ? eS6Generator.resumeAbruptLocal(context, scriptable, 2, obj) : eS6Generator.resumeDelegeeReturn(context, scriptable, obj);
        }
        if (methodId == 3) {
            return eS6Generator.delegee == null ? eS6Generator.resumeAbruptLocal(context, scriptable, 1, obj) : eS6Generator.resumeDelegeeThrow(context, scriptable, obj);
        }
        if (methodId == 4) {
            return scriptable2;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(methodId));
        return null;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 4) {
            str2 = ES6Iterator.NEXT_METHOD;
            i = 1;
        } else if (length == 5) {
            str2 = "throw";
            i = 3;
        } else if (length == 6) {
            str2 = "return";
            i = 2;
        } else {
            str2 = null;
            i = 0;
        }
        if (Objects.equals(str2, str)) {
            return i;
        }
        return 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Generator";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        if (i == 4) {
            initPrototypeMethod(GENERATOR_TAG, i, SymbolKey.ITERATOR, "[Symbol.iterator]", 0);
            return;
        }
        if (i == 1) {
            str = ES6Iterator.NEXT_METHOD;
        } else if (i == 2) {
            str = "return";
        } else {
            if (i != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(i));
                return;
            }
            str = "throw";
        }
        initPrototypeMethod(GENERATOR_TAG, i, str, 1);
    }

    private ES6Generator() {
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(Symbol symbol) {
        return SymbolKey.ITERATOR.equals(symbol) ? 4 : 0;
    }
}

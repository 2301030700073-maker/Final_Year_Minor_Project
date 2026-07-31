package org.mozilla.javascript;

import java.io.ObjectInputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.commonjs.module.ModuleScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class FunctionObject extends BaseFunction {
    public static final int JAVA_BOOLEAN_TYPE = 3;
    public static final int JAVA_DOUBLE_TYPE = 4;
    public static final int JAVA_INT_TYPE = 2;
    public static final int JAVA_OBJECT_TYPE = 6;
    public static final int JAVA_SCRIPTABLE_TYPE = 5;
    public static final int JAVA_STRING_TYPE = 1;
    public static final int JAVA_UNSUPPORTED_TYPE = 0;
    private static final short VARARGS_CTOR = -2;
    private static final short VARARGS_METHOD = -1;
    private static boolean sawSecurityException = false;
    private static final long serialVersionUID = -5332312783643935019L;
    private String functionName;
    private transient boolean hasVoidReturn;
    private boolean isStatic;
    MemberBox member;
    private int parmsLength;
    private transient int returnTypeTag;
    private transient byte[] typeTags;

    public FunctionObject(String str, Member member, Scriptable scriptable) {
        if (member instanceof Constructor) {
            this.member = new MemberBox((Constructor<?>) member);
            this.isStatic = true;
        } else {
            MemberBox memberBox = new MemberBox((Method) member);
            this.member = memberBox;
            this.isStatic = memberBox.isStatic();
        }
        String name = this.member.getName();
        this.functionName = str;
        Class<?>[] clsArr = this.member.argTypes;
        int length = clsArr.length;
        if (length == 4 && (clsArr[1].isArray() || clsArr[2].isArray())) {
            boolean isArray = clsArr[1].isArray();
            boolean z = this.isStatic;
            if (isArray) {
                if (!z || clsArr[0] != ScriptRuntime.ContextClass || clsArr[1].getComponentType() != ScriptRuntime.ObjectClass || clsArr[2] != ScriptRuntime.FunctionClass || clsArr[3] != Boolean.TYPE) {
                    throw Context.reportRuntimeErrorById("msg.varargs.ctor", name);
                }
                this.parmsLength = -2;
            } else {
                if (!z || clsArr[0] != ScriptRuntime.ContextClass || clsArr[1] != ScriptRuntime.ScriptableClass || clsArr[2].getComponentType() != ScriptRuntime.ObjectClass || clsArr[3] != ScriptRuntime.FunctionClass) {
                    throw Context.reportRuntimeErrorById("msg.varargs.fun", name);
                }
                this.parmsLength = -1;
            }
        } else {
            this.parmsLength = length;
            if (length > 0) {
                this.typeTags = new byte[length];
                for (int i = 0; i != length; i++) {
                    int typeTag = getTypeTag(clsArr[i]);
                    if (typeTag == 0) {
                        throw Context.reportRuntimeErrorById("msg.bad.parms", clsArr[i].getName(), name);
                    }
                    this.typeTags[i] = (byte) typeTag;
                }
            }
        }
        boolean isMethod = this.member.isMethod();
        MemberBox memberBox2 = this.member;
        if (isMethod) {
            Class<?> returnType = memberBox2.method().getReturnType();
            if (returnType == Void.TYPE) {
                this.hasVoidReturn = true;
            } else {
                this.returnTypeTag = getTypeTag(returnType);
            }
        } else {
            Class<?> declaringClass = memberBox2.getDeclaringClass();
            if (!ScriptRuntime.ScriptableClass.isAssignableFrom(declaringClass)) {
                throw Context.reportRuntimeErrorById("msg.bad.ctor.return", declaringClass.getName());
            }
        }
        ScriptRuntime.setFunctionProtoAndParent(this, Context.getCurrentContext(), scriptable, false);
    }

    public static Object convertArg(Context context, Scriptable scriptable, Object obj, int i) {
        switch (i) {
            case 1:
                return obj instanceof String ? obj : ScriptRuntime.toString(obj);
            case 2:
                return obj instanceof Integer ? obj : Integer.valueOf(ScriptRuntime.toInt32(obj));
            case 3:
                return obj instanceof Boolean ? obj : ScriptRuntime.toBoolean(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 4:
                return obj instanceof Double ? obj : Double.valueOf(ScriptRuntime.toNumber(obj));
            case 5:
                return ScriptRuntime.toObjectOrNull(context, obj, scriptable);
            case 6:
                return obj instanceof ConsString ? obj.toString() : obj;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return null;
        }
    }

    public static Method findSingleMethod(Method[] methodArr, String str) {
        int length = methodArr.length;
        Method method = null;
        for (int i = 0; i != length; i++) {
            Method method2 = methodArr[i];
            if (method2 != null && str.equals(method2.getName())) {
                if (method != null) {
                    throw Context.reportRuntimeErrorById("msg.no.overload", str, method2.getDeclaringClass().getName());
                }
                method = method2;
            }
        }
        return method;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Method[] getMethodList(java.lang.Class<?> r6) {
        /*
            r0 = 0
            boolean r1 = org.mozilla.javascript.FunctionObject.sawSecurityException     // Catch: java.lang.SecurityException -> La
            if (r1 != 0) goto Ld
            java.lang.reflect.Method[] r1 = r6.getDeclaredMethods()     // Catch: java.lang.SecurityException -> La
            goto Le
        La:
            r1 = 1
            org.mozilla.javascript.FunctionObject.sawSecurityException = r1
        Ld:
            r1 = r0
        Le:
            if (r1 != 0) goto L14
            java.lang.reflect.Method[] r1 = r6.getMethods()
        L14:
            r2 = 0
            r3 = r2
            r4 = r3
        L17:
            int r5 = r1.length
            if (r3 >= r5) goto L3b
            boolean r5 = org.mozilla.javascript.FunctionObject.sawSecurityException
            if (r5 == 0) goto L27
            r5 = r1[r3]
            java.lang.Class r5 = r5.getDeclaringClass()
            if (r5 == r6) goto L36
            goto L33
        L27:
            r5 = r1[r3]
            int r5 = r5.getModifiers()
            boolean r5 = java.lang.reflect.Modifier.isPublic(r5)
            if (r5 != 0) goto L36
        L33:
            r1[r3] = r0
            goto L38
        L36:
            int r4 = r4 + 1
        L38:
            int r3 = r3 + 1
            goto L17
        L3b:
            java.lang.reflect.Method[] r6 = new java.lang.reflect.Method[r4]
            int r0 = r1.length
            r3 = r2
        L3f:
            if (r2 >= r0) goto L4d
            r4 = r1[r2]
            if (r4 == 0) goto L4a
            int r5 = r3 + 1
            r6[r3] = r4
            r3 = r5
        L4a:
            int r2 = r2 + 1
            goto L3f
        L4d:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.FunctionObject.getMethodList(java.lang.Class):java.lang.reflect.Method[]");
    }

    public static int getTypeTag(Class<?> cls) {
        if (cls == ScriptRuntime.StringClass) {
            return 1;
        }
        if (cls == ScriptRuntime.IntegerClass || cls == Integer.TYPE) {
            return 2;
        }
        if (cls == ScriptRuntime.BooleanClass || cls == Boolean.TYPE) {
            return 3;
        }
        if (cls == ScriptRuntime.DoubleClass || cls == Double.TYPE) {
            return 4;
        }
        if (ScriptRuntime.ScriptableClass.isAssignableFrom(cls)) {
            return 5;
        }
        return cls == ScriptRuntime.ObjectClass ? 6 : 0;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int i = this.parmsLength;
        if (i > 0) {
            Class<?>[] clsArr = this.member.argTypes;
            this.typeTags = new byte[i];
            for (int i2 = 0; i2 != this.parmsLength; i2++) {
                this.typeTags[i2] = (byte) getTypeTag(clsArr[i2]);
            }
        }
        if (this.member.isMethod()) {
            Class<?> returnType = this.member.method().getReturnType();
            if (returnType == Void.TYPE) {
                this.hasVoidReturn = true;
            } else {
                this.returnTypeTag = getTypeTag(returnType);
            }
        }
    }

    public void addAsConstructor(Scriptable scriptable, Scriptable scriptable2) {
        initAsConstructor(scriptable, scriptable2, 7);
        ScriptableObject.defineProperty(scriptable, scriptable2.getClassName(), this, 2);
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object[] objArr2;
        Object newInstance;
        Scriptable parentScope;
        boolean isInstance;
        int length = objArr.length;
        boolean z = true;
        if (this.parmsLength < 0) {
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                if (obj instanceof ConsString) {
                    objArr[i] = obj.toString();
                }
            }
            if (this.parmsLength == -1) {
                newInstance = this.member.invoke(null, new Object[]{context, scriptable2, objArr, this});
            } else {
                Object[] objArr3 = {context, objArr, this, scriptable2 == null ? Boolean.TRUE : Boolean.FALSE};
                boolean isCtor = this.member.isCtor();
                MemberBox memberBox = this.member;
                newInstance = isCtor ? memberBox.newInstance(objArr3) : memberBox.invoke(null, objArr3);
                z = false;
            }
        } else {
            if (!this.isStatic) {
                Class<?> declaringClass = this.member.getDeclaringClass();
                if (scriptable2 instanceof Delegator) {
                    scriptable2 = ((Delegator) scriptable2).getDelegee();
                }
                if (!declaringClass.isInstance(scriptable2)) {
                    if ((scriptable2 == scriptable || (scriptable2 instanceof ModuleScope)) && scriptable != (parentScope = getParentScope())) {
                        isInstance = declaringClass.isInstance(parentScope);
                        if (isInstance) {
                            scriptable2 = parentScope;
                        }
                    } else {
                        isInstance = false;
                    }
                    if (!isInstance) {
                        throw ScriptRuntime.typeErrorById("msg.incompat.call", this.functionName);
                    }
                }
            }
            int i2 = this.parmsLength;
            if (i2 == length) {
                objArr2 = objArr;
                for (int i3 = 0; i3 != this.parmsLength; i3++) {
                    Object obj2 = objArr[i3];
                    Object convertArg = convertArg(context, scriptable, obj2, this.typeTags[i3]);
                    if (obj2 != convertArg) {
                        if (objArr2 == objArr) {
                            objArr2 = (Object[]) objArr.clone();
                        }
                        objArr2[i3] = convertArg;
                    }
                }
            } else if (i2 == 0) {
                objArr2 = ScriptRuntime.emptyArgs;
            } else {
                objArr2 = new Object[i2];
                int i4 = 0;
                while (i4 != this.parmsLength) {
                    objArr2[i4] = convertArg(context, scriptable, i4 < length ? objArr[i4] : Undefined.instance, this.typeTags[i4]);
                    i4++;
                }
            }
            boolean isMethod = this.member.isMethod();
            MemberBox memberBox2 = this.member;
            if (isMethod) {
                newInstance = memberBox2.invoke(scriptable2, objArr2);
            } else {
                newInstance = memberBox2.newInstance(objArr2);
                z = false;
            }
        }
        if (z) {
            if (this.hasVoidReturn) {
                return Undefined.instance;
            }
            if (this.returnTypeTag == 0) {
                return context.getWrapFactory().wrap(context, scriptable, newInstance, null);
            }
        }
        return newInstance;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public Scriptable createObject(Context context, Scriptable scriptable) {
        if (this.member.isCtor() || this.parmsLength == -2) {
            return null;
        }
        try {
            Scriptable scriptable2 = (Scriptable) this.member.getDeclaringClass().getDeclaredConstructor(null).newInstance(null);
            scriptable2.setPrototype(getClassPrototype());
            scriptable2.setParentScope(getParentScope());
            return scriptable2;
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    @Override // org.mozilla.javascript.BaseFunction
    public int getArity() {
        int i = this.parmsLength;
        if (i < 0) {
            return 1;
        }
        return i;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public String getFunctionName() {
        String str = this.functionName;
        return str == null ? "" : str;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public int getLength() {
        return getArity();
    }

    public Member getMethodOrConstructor() {
        boolean isMethod = this.member.isMethod();
        MemberBox memberBox = this.member;
        return isMethod ? memberBox.method() : memberBox.ctor();
    }

    public void initAsConstructor(Scriptable scriptable, Scriptable scriptable2, int i) {
        ScriptRuntime.setFunctionProtoAndParent(this, Context.getCurrentContext(), scriptable);
        setImmunePrototypeProperty(scriptable2);
        scriptable2.setParentScope(this);
        ScriptableObject.defineProperty(scriptable2, "constructor", this, i);
        setParentScope(scriptable);
    }

    public boolean isVarArgsConstructor() {
        return this.parmsLength == -2;
    }

    public boolean isVarArgsMethod() {
        return this.parmsLength == -1;
    }

    public void addAsConstructor(Scriptable scriptable, Scriptable scriptable2, int i) {
        initAsConstructor(scriptable, scriptable2, i);
        ScriptableObject.defineProperty(scriptable, scriptable2.getClassName(), this, 2);
    }

    @Deprecated
    public static Object convertArg(Context context, Scriptable scriptable, Object obj, Class<?> cls) {
        int typeTag = getTypeTag(cls);
        if (typeTag != 0) {
            return convertArg(context, scriptable, obj, typeTag);
        }
        throw Context.reportRuntimeErrorById("msg.cant.convert", cls.getName());
    }
}

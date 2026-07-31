package org.mozilla.javascript;

import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class NativeReflect extends ScriptableObject {
    private static final String REFLECT_TAG = "Reflect";
    private static final long serialVersionUID = 2920773905356325445L;

    private NativeReflect() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object apply(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (objArr.length < 3) {
            throw ScriptRuntime.typeErrorById("msg.method.missing.parameter", "Reflect.apply", "3", Integer.toString(objArr.length));
        }
        Scriptable ensureScriptable = ScriptableObject.ensureScriptable(objArr[0]);
        Object obj = objArr[1];
        if (obj instanceof Scriptable) {
            scriptable2 = (Scriptable) obj;
        } else if (ScriptRuntime.isPrimitive(obj)) {
            scriptable2 = context.newObject(scriptable, "Object", new Object[]{objArr[1]});
        }
        if (ScriptRuntime.isSymbol(objArr[2])) {
            throw ScriptRuntime.typeErrorById("msg.arg.not.object", ScriptRuntime.typeof(objArr[2]));
        }
        return ScriptRuntime.applyOrCall(true, context, scriptable, ensureScriptable, new Object[]{scriptable2, ScriptableObject.ensureScriptableObject(objArr[2])});
    }

    private static ScriptableObject checkTarget(Object[] objArr) {
        Object obj;
        if (objArr.length == 0 || (obj = objArr[0]) == null || obj == Undefined.instance) {
            throw ScriptRuntime.typeErrorById("msg.no.properties", ScriptRuntime.toString(objArr.length == 0 ? Undefined.instance : objArr[0]));
        }
        if (ScriptRuntime.isSymbol(obj)) {
            throw ScriptRuntime.typeErrorById("msg.arg.not.object", ScriptRuntime.typeof(objArr[0]));
        }
        return ScriptableObject.ensureScriptableObject(objArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Scriptable construct(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        BaseFunction baseFunction;
        Scriptable createObject;
        if (objArr.length < 1) {
            throw ScriptRuntime.typeErrorById("msg.method.missing.parameter", "Reflect.construct", "3", Integer.toString(objArr.length));
        }
        if (!AbstractEcmaObjectOperations.isConstructor(context, objArr[0])) {
            throw ScriptRuntime.typeErrorById("msg.not.ctor", ScriptRuntime.typeof(objArr[0]));
        }
        Constructable constructable = (Constructable) objArr[0];
        if (objArr.length < 2) {
            return constructable.construct(context, scriptable, ScriptRuntime.emptyArgs);
        }
        if (objArr.length > 2 && !AbstractEcmaObjectOperations.isConstructor(context, objArr[2])) {
            throw ScriptRuntime.typeErrorById("msg.not.ctor", ScriptRuntime.typeof(objArr[2]));
        }
        Object[] applyArguments = ScriptRuntime.getApplyArguments(context, objArr[1]);
        Object obj = null;
        if (objArr.length > 2) {
            Scriptable ensureScriptable = ScriptableObject.ensureScriptable(objArr[2]);
            Object prototypeProperty = ensureScriptable instanceof BaseFunction ? ((BaseFunction) ensureScriptable).getPrototypeProperty() : ensureScriptable.get("prototype", ensureScriptable);
            if ((prototypeProperty instanceof Scriptable) && !ScriptRuntime.isSymbol(prototypeProperty) && !Undefined.isUndefined(prototypeProperty)) {
                obj = prototypeProperty;
            }
        }
        if ((constructable instanceof BaseFunction) && obj != null && (createObject = (baseFunction = (BaseFunction) constructable).createObject(context, scriptable)) != null) {
            createObject.setPrototype((Scriptable) obj);
            Object call = baseFunction.call(context, scriptable, createObject, applyArguments);
            return call instanceof Scriptable ? (Scriptable) call : createObject;
        }
        Scriptable construct = constructable.construct(context, scriptable, applyArguments);
        if (obj != null) {
            construct.setPrototype((Scriptable) obj);
        }
        return construct;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object defineProperty(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (objArr.length < 3) {
            throw ScriptRuntime.typeErrorById("msg.method.missing.parameter", "Reflect.defineProperty", "3", Integer.toString(objArr.length));
        }
        try {
            return Boolean.valueOf(checkTarget(objArr).defineOwnProperty(context, objArr[1], ScriptableObject.ensureScriptableObject(objArr[2])));
        } catch (EcmaError unused) {
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object deleteProperty(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        ScriptableObject checkTarget = checkTarget(objArr);
        return objArr.length > 1 ? ScriptRuntime.isSymbol(objArr[1]) ? Boolean.valueOf(ScriptableObject.deleteProperty(checkTarget, (Symbol) objArr[1])) : Boolean.valueOf(ScriptableObject.deleteProperty(checkTarget, ScriptRuntime.toString(objArr[1]))) : Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object get(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        ScriptableObject checkTarget = checkTarget(objArr);
        if (objArr.length <= 1) {
            return Undefined.SCRIPTABLE_UNDEFINED;
        }
        if (ScriptRuntime.isSymbol(objArr[1])) {
            Object property = ScriptableObject.getProperty(checkTarget, (Symbol) objArr[1]);
            return property == Scriptable.NOT_FOUND ? Undefined.SCRIPTABLE_UNDEFINED : property;
        }
        Object obj = objArr[1];
        if (obj instanceof Number) {
            Object property2 = ScriptableObject.getProperty(checkTarget, ScriptRuntime.toIndex(obj));
            return property2 == Scriptable.NOT_FOUND ? Undefined.SCRIPTABLE_UNDEFINED : property2;
        }
        Object property3 = ScriptableObject.getProperty(checkTarget, ScriptRuntime.toString(obj));
        return property3 == Scriptable.NOT_FOUND ? Undefined.SCRIPTABLE_UNDEFINED : property3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Scriptable getOwnPropertyDescriptor(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        ScriptableObject checkTarget = checkTarget(objArr);
        if (objArr.length <= 1) {
            return Undefined.SCRIPTABLE_UNDEFINED;
        }
        if (ScriptRuntime.isSymbol(objArr[1])) {
            ScriptableObject ownPropertyDescriptor = checkTarget.getOwnPropertyDescriptor(context, objArr[1]);
            return ownPropertyDescriptor == null ? Undefined.SCRIPTABLE_UNDEFINED : ownPropertyDescriptor;
        }
        ScriptableObject ownPropertyDescriptor2 = checkTarget.getOwnPropertyDescriptor(context, ScriptRuntime.toString(objArr[1]));
        return ownPropertyDescriptor2 == null ? Undefined.SCRIPTABLE_UNDEFINED : ownPropertyDescriptor2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Scriptable getPrototypeOf(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return checkTarget(objArr).getPrototype();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object has(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        ScriptableObject checkTarget = checkTarget(objArr);
        return objArr.length > 1 ? ScriptRuntime.isSymbol(objArr[1]) ? Boolean.valueOf(ScriptableObject.hasProperty(checkTarget, (Symbol) objArr[1])) : Boolean.valueOf(ScriptableObject.hasProperty(checkTarget, ScriptRuntime.toString(objArr[1]))) : Boolean.FALSE;
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        NativeReflect nativeReflect = new NativeReflect();
        nativeReflect.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        nativeReflect.setParentScope(scriptable);
        nativeReflect.defineProperty(scriptable, "apply", 3, new NativeMath$$ExternalSyntheticLambda5(6), 2, 3);
        nativeReflect.defineProperty(scriptable, "construct", 2, new NativeMath$$ExternalSyntheticLambda5(13), 2, 3);
        nativeReflect.defineProperty(scriptable, "defineProperty", 3, new NativeMath$$ExternalSyntheticLambda5(14), 2, 3);
        nativeReflect.defineProperty(scriptable, "deleteProperty", 2, new NativeMath$$ExternalSyntheticLambda5(15), 2, 3);
        nativeReflect.defineProperty(scriptable, "get", 2, new NativeMath$$ExternalSyntheticLambda5(16), 2, 3);
        nativeReflect.defineProperty(scriptable, "getOwnPropertyDescriptor", 2, new NativeMath$$ExternalSyntheticLambda5(17), 2, 3);
        nativeReflect.defineProperty(scriptable, "getPrototypeOf", 1, new NativeMath$$ExternalSyntheticLambda5(18), 2, 3);
        nativeReflect.defineProperty(scriptable, "has", 2, new NativeMath$$ExternalSyntheticLambda5(7), 2, 3);
        nativeReflect.defineProperty(scriptable, "isExtensible", 1, new NativeMath$$ExternalSyntheticLambda5(8), 2, 3);
        nativeReflect.defineProperty(scriptable, "ownKeys", 1, new NativeMath$$ExternalSyntheticLambda5(9), 2, 3);
        nativeReflect.defineProperty(scriptable, "preventExtensions", 1, new NativeMath$$ExternalSyntheticLambda5(10), 2, 3);
        nativeReflect.defineProperty(scriptable, "set", 3, new NativeMath$$ExternalSyntheticLambda5(11), 2, 3);
        nativeReflect.defineProperty(scriptable, "setPrototypeOf", 2, new NativeMath$$ExternalSyntheticLambda5(12), 2, 3);
        nativeReflect.defineProperty(SymbolKey.TO_STRING_TAG, REFLECT_TAG, 3);
        ScriptableObject.defineProperty(scriptable, REFLECT_TAG, nativeReflect, 2);
        if (z) {
            nativeReflect.sealObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object isExtensible(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return Boolean.valueOf(checkTarget(objArr).isExtensible());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Scriptable ownKeys(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        ScriptableObject checkTarget = checkTarget(objArr);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : checkTarget.getIds(true, true)) {
            if (obj instanceof Symbol) {
                arrayList2.add(obj);
            } else {
                arrayList.add(ScriptRuntime.toString(obj));
            }
        }
        Object[] objArr2 = new Object[arrayList2.size() + arrayList.size()];
        System.arraycopy(arrayList.toArray(), 0, objArr2, 0, arrayList.size());
        System.arraycopy(arrayList2.toArray(), 0, objArr2, arrayList.size(), arrayList2.size());
        return context.newArray(scriptable, objArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object preventExtensions(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return Boolean.valueOf(checkTarget(objArr).preventExtensions());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object set(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject checkTarget = checkTarget(objArr);
        if (objArr.length < 2) {
            return Boolean.TRUE;
        }
        ScriptableObject ensureScriptableObject = objArr.length > 3 ? ScriptableObject.ensureScriptableObject(objArr[3]) : checkTarget;
        if (ensureScriptableObject != checkTarget && (ownPropertyDescriptor = checkTarget.getOwnPropertyDescriptor(context, objArr[1])) != null) {
            Object obj = ownPropertyDescriptor.get("set");
            if (obj != null && obj != Scriptable.NOT_FOUND) {
                ((Function) obj).call(context, scriptable, ensureScriptableObject, new Object[]{objArr[2]});
                return Boolean.TRUE;
            }
            Boolean bool = Boolean.FALSE;
            if (bool.equals(ownPropertyDescriptor.get("configurable"))) {
                return bool;
            }
        }
        if (ScriptRuntime.isSymbol(objArr[1])) {
            ensureScriptableObject.put((Symbol) objArr[1], ensureScriptableObject, objArr[2]);
        } else {
            Object obj2 = objArr[1];
            if (obj2 instanceof Double) {
                ensureScriptableObject.put(ScriptRuntime.toIndex(obj2), ensureScriptableObject, objArr[2]);
            } else {
                ensureScriptableObject.put(ScriptRuntime.toString(obj2), ensureScriptableObject, objArr[2]);
            }
        }
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object setPrototypeOf(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (objArr.length < 2) {
            throw ScriptRuntime.typeErrorById("msg.method.missing.parameter", "Reflect.js_setPrototypeOf", "2", Integer.toString(objArr.length));
        }
        ScriptableObject checkTarget = checkTarget(objArr);
        if (checkTarget.getPrototype() == objArr[1]) {
            return Boolean.TRUE;
        }
        if (!checkTarget.isExtensible()) {
            return Boolean.FALSE;
        }
        Object obj = objArr[1];
        if (obj == null) {
            checkTarget.setPrototype(null);
            return Boolean.TRUE;
        }
        if (ScriptRuntime.isSymbol(obj)) {
            throw ScriptRuntime.typeErrorById("msg.arg.not.object", ScriptRuntime.typeof(objArr[0]));
        }
        ScriptableObject ensureScriptableObject = ScriptableObject.ensureScriptableObject(objArr[1]);
        if (checkTarget.getPrototype() == ensureScriptableObject) {
            return Boolean.TRUE;
        }
        for (Scriptable scriptable3 = ensureScriptableObject; scriptable3 != null; scriptable3 = scriptable3.getPrototype()) {
            if (checkTarget == scriptable3) {
                return Boolean.FALSE;
            }
        }
        checkTarget.setPrototype(ensureScriptableObject);
        return Boolean.TRUE;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return REFLECT_TAG;
    }
}

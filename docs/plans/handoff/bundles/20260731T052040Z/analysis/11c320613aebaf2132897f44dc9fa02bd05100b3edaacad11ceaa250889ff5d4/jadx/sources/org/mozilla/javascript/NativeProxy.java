package org.mozilla.javascript;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
final class NativeProxy extends ScriptableObject implements Callable, Constructable {
    private static final String PROXY_TAG = "Proxy";
    private static final String TRAP_APPLY = "apply";
    private static final String TRAP_CONSTRUCT = "construct";
    private static final String TRAP_DEFINE_PROPERTY = "defineProperty";
    private static final String TRAP_DELETE_PROPERTY = "deleteProperty";
    private static final String TRAP_GET = "get";
    private static final String TRAP_GET_OWN_PROPERTY_DESCRIPTOR = "getOwnPropertyDescriptor";
    private static final String TRAP_GET_PROTOTYPE_OF = "getPrototypeOf";
    private static final String TRAP_HAS = "has";
    private static final String TRAP_IS_EXTENSIBLE = "isExtensible";
    private static final String TRAP_OWN_KEYS = "ownKeys";
    private static final String TRAP_PREVENT_EXTENSIONS = "preventExtensions";
    private static final String TRAP_SET = "set";
    private static final String TRAP_SET_PROTOTYPE_OF = "setPrototypeOf";
    private static final long serialVersionUID = 6676871870513494844L;
    private Scriptable handlerObj;
    private ScriptableObject targetObj;
    private final String typeOf;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Revoker implements Callable {
        private NativeProxy revocableProxy;

        public Revoker(NativeProxy nativeProxy) {
            this.revocableProxy = nativeProxy;
        }

        @Override // org.mozilla.javascript.Callable
        public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            NativeProxy nativeProxy = this.revocableProxy;
            if (nativeProxy != null) {
                nativeProxy.handlerObj = null;
                this.revocableProxy.targetObj = null;
                this.revocableProxy = null;
            }
            return Undefined.instance;
        }
    }

    private NativeProxy(ScriptableObject scriptableObject, Scriptable scriptable) {
        this.targetObj = scriptableObject;
        this.handlerObj = scriptable;
        if (scriptableObject == null || !(scriptableObject instanceof Callable)) {
            this.typeOf = super.getTypeOf();
        } else {
            this.typeOf = scriptableObject.getTypeOf();
        }
    }

    private Object callTrap(Callable callable, Object[] objArr) {
        Context context = Context.getContext();
        Scriptable scriptable = this.handlerObj;
        return callable.call(context, scriptable, scriptable, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NativeProxy constructor(Context context, Scriptable scriptable, Object[] objArr) {
        if (objArr.length < 2) {
            throw ScriptRuntime.typeErrorById("msg.method.missing.parameter", "Proxy.ctor", "2", Integer.toString(objArr.length));
        }
        NativeProxy nativeProxy = new NativeProxy(ScriptableObject.ensureScriptableObjectButNotSymbol(objArr[0]), ScriptableObject.ensureScriptableObjectButNotSymbol(objArr[1]));
        nativeProxy.setPrototypeDirect(ScriptableObject.getClassPrototype(scriptable, PROXY_TAG));
        nativeProxy.setParentScope(scriptable);
        return nativeProxy;
    }

    private Callable getTrap(String str) {
        Object property = ScriptableObject.getProperty(this.handlerObj, str);
        if (Scriptable.NOT_FOUND == property || property == null || Undefined.isUndefined(property)) {
            return null;
        }
        if (property instanceof Callable) {
            return (Callable) property;
        }
        throw ScriptRuntime.notFunctionError(property, str);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        LambdaConstructor lambdaConstructor = new LambdaConstructor(scriptable, PROXY_TAG, 2, 2, new NativeProxy$$ExternalSyntheticLambda0(0)) { // from class: org.mozilla.javascript.NativeProxy.1
            @Override // org.mozilla.javascript.LambdaConstructor, org.mozilla.javascript.LambdaFunction, org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Constructable
            public Scriptable construct(Context context2, Scriptable scriptable2, Object[] objArr) {
                NativeProxy nativeProxy = (NativeProxy) getTargetConstructor().construct(context2, scriptable2, objArr);
                nativeProxy.setPrototypeDirect(getClassPrototype());
                nativeProxy.setParentScope(scriptable2);
                return nativeProxy;
            }
        };
        lambdaConstructor.setPrototypeProperty(null);
        lambdaConstructor.defineConstructorMethod(scriptable, "revocable", 2, new NativeMath$$ExternalSyntheticLambda5(5), 2, 3);
        ScriptableObject.defineProperty(scriptable, PROXY_TAG, lambdaConstructor, 2);
        if (z) {
            lambdaConstructor.sealObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getIds$0(Object obj) {
        return (obj instanceof CharSequence) || (obj instanceof NativeString) || ScriptRuntime.isSymbol(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object revocable(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!ScriptRuntime.isObject(scriptable2)) {
            throw ScriptRuntime.typeErrorById("msg.arg.not.object", ScriptRuntime.typeof(scriptable2));
        }
        NativeProxy constructor = constructor(context, scriptable, objArr);
        Scriptable scriptable3 = (NativeObject) context.newObject(scriptable);
        scriptable3.put("proxy", scriptable3, constructor);
        scriptable3.put("revoke", scriptable3, new LambdaFunction(scriptable, "", 0, new Revoker(constructor)));
        return scriptable3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPrototypeDirect(Scriptable scriptable) {
        super.setPrototype(scriptable);
    }

    @Override // org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Scriptable newArray = context.newArray(scriptable, objArr);
        Callable trap = getTrap(TRAP_APPLY);
        return trap != null ? callTrap(trap, new Object[]{targetThrowIfRevoked, scriptable2, newArray}) : ScriptRuntime.applyOrCall(true, context, scriptable, targetThrowIfRevoked, new Object[]{scriptable2, newArray});
    }

    @Override // org.mozilla.javascript.Constructable
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        Object targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_CONSTRUCT);
        if (trap == null) {
            return ((Constructable) targetThrowIfRevoked).construct(context, scriptable, objArr);
        }
        Object callTrap = callTrap(trap, new Object[]{targetThrowIfRevoked, objArr, this});
        if (!(callTrap instanceof Scriptable) || ScriptRuntime.isSymbol(callTrap)) {
            throw ScriptRuntime.typeError("Constructor trap has to return a scriptable.");
        }
        return (ScriptableObject) callTrap;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public boolean defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject) {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_DEFINE_PROPERTY);
        if (trap == null) {
            return targetThrowIfRevoked.defineOwnProperty(context, obj, scriptableObject);
        }
        boolean z = false;
        if (!ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, obj, scriptableObject}))) {
            return false;
        }
        ScriptableObject ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), obj);
        boolean isExtensible = targetThrowIfRevoked.isExtensible();
        Boolean bool = Boolean.TRUE;
        if (bool.equals(Boolean.valueOf(ScriptableObject.hasProperty(scriptableObject, "configurable"))) && Boolean.FALSE.equals(scriptableObject.get("configurable"))) {
            z = true;
        }
        if (ownPropertyDescriptor == null) {
            if (!isExtensible || z) {
                throw ScriptRuntime.typeError("proxy can't define an incompatible property descriptor");
            }
        } else {
            if (!AbstractEcmaObjectOperations.isCompatiblePropertyDescriptor(context, isExtensible, scriptableObject, ownPropertyDescriptor)) {
                throw ScriptRuntime.typeError("proxy can't define an incompatible property descriptor");
            }
            if (z && bool.equals(ownPropertyDescriptor.get("configurable"))) {
                throw ScriptRuntime.typeError("proxy can't define an incompatible property descriptor");
            }
            if (ScriptableObject.isDataDescriptor(ownPropertyDescriptor)) {
                Boolean bool2 = Boolean.FALSE;
                if (bool2.equals(ownPropertyDescriptor.get("configurable")) && bool.equals(ownPropertyDescriptor.get("writable")) && bool.equals(Boolean.valueOf(ScriptableObject.hasProperty(scriptableObject, "writable"))) && bool2.equals(scriptableObject.get("writable"))) {
                    throw ScriptRuntime.typeError("proxy can't define an incompatible property descriptor");
                }
            }
        }
        return true;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_DELETE_PROPERTY);
        if (trap == null) {
            targetThrowIfRevoked.delete(i);
        } else if (ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, ScriptRuntime.toString(i)})) && (ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), Integer.valueOf(i))) != null) {
            if (Boolean.FALSE.equals(ownPropertyDescriptor.get("configurable")) || !targetThrowIfRevoked.isExtensible()) {
                throw ScriptRuntime.typeError("proxy can't delete an existing own property ' + name + ' on an not configurable or not extensible object");
            }
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_GET);
        if (trap == null) {
            if (scriptable == this) {
                scriptable = targetThrowIfRevoked;
            }
            return targetThrowIfRevoked.get(i, scriptable);
        }
        Object callTrap = callTrap(trap, new Object[]{targetThrowIfRevoked, ScriptRuntime.toString(i), this});
        ScriptableObject ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), Integer.valueOf(i));
        if (ownPropertyDescriptor != null && !Undefined.isUndefined(ownPropertyDescriptor)) {
            Boolean bool = Boolean.FALSE;
            if (bool.equals(ownPropertyDescriptor.get("configurable"))) {
                if (ScriptableObject.isDataDescriptor(ownPropertyDescriptor) && bool.equals(ownPropertyDescriptor.get("writable")) && !Objects.equals(callTrap, ownPropertyDescriptor.get(ES6Iterator.VALUE_PROPERTY))) {
                    throw ScriptRuntime.typeError("proxy get has to return the same value as the plain call");
                }
                if (ScriptableObject.isAccessorDescriptor(ownPropertyDescriptor) && Undefined.isUndefined(ownPropertyDescriptor.get(TRAP_GET)) && !Undefined.isUndefined(callTrap)) {
                    throw ScriptRuntime.typeError("proxy get has to return the same value as the plain call");
                }
            }
        }
        return callTrap;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return getTargetThrowIfRevoked().getClassName();
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public Object[] getIds(boolean z, boolean z2) {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_OWN_KEYS);
        if (trap != null) {
            int i = 0;
            Object callTrap = callTrap(trap, new Object[]{targetThrowIfRevoked});
            if (!(callTrap instanceof Scriptable)) {
                throw ScriptRuntime.typeError("ownKeys trap must be an object");
            }
            Scriptable scriptable = (Scriptable) callTrap;
            if (!ScriptRuntime.isArrayLike(scriptable)) {
                throw ScriptRuntime.typeError("ownKeys trap must be an array like object");
            }
            Context context = Context.getContext();
            List<Object> createListFromArrayLike = AbstractEcmaObjectOperations.createListFromArrayLike(context, scriptable, new NativeProxy$$ExternalSyntheticLambda2(i), "proxy [[OwnPropertyKeys]] must return an array with only string and symbol elements");
            boolean isExtensible = targetThrowIfRevoked.isExtensible();
            Object[] ids = targetThrowIfRevoked.getIds(true, true);
            HashSet hashSet = new HashSet(createListFromArrayLike);
            if (hashSet.size() != createListFromArrayLike.size()) {
                throw ScriptRuntime.typeError("ownKeys trap result must not contain duplicates");
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int length = ids.length;
            while (i < length) {
                Object obj = ids[i];
                ScriptableObject ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(context, obj);
                if (ownPropertyDescriptor == null || !Boolean.FALSE.equals(ownPropertyDescriptor.get("configurable"))) {
                    arrayList.add(obj);
                } else {
                    arrayList2.add(obj);
                }
                i++;
            }
            if (isExtensible && arrayList2.size() == 0) {
                return createListFromArrayLike.toArray();
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (!hashSet.contains(next)) {
                    throw ScriptRuntime.typeError("proxy can't skip a non-configurable property '" + String.valueOf(next) + "'");
                }
                hashSet.remove(next);
            }
            if (isExtensible) {
                return createListFromArrayLike.toArray();
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Object next2 = it2.next();
                if (!hashSet.contains(next2)) {
                    throw ScriptRuntime.typeError("proxy can't skip a configurable property ".concat(String.valueOf(next2)));
                }
                hashSet.remove(next2);
            }
            if (hashSet.size() > 0) {
                throw ScriptRuntime.typeError("proxy can't skip properties");
            }
        }
        return targetThrowIfRevoked.getIds(z, z2);
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_GET_OWN_PROPERTY_DESCRIPTOR);
        if (trap == null) {
            return ScriptRuntime.isSymbol(obj) ? targetThrowIfRevoked.getOwnPropertyDescriptor(context, obj) : targetThrowIfRevoked.getOwnPropertyDescriptor(context, ScriptRuntime.toString(obj));
        }
        Object callTrap = callTrap(trap, new Object[]{targetThrowIfRevoked, obj});
        if (!Undefined.isUndefined(callTrap) && (!(callTrap instanceof Scriptable) || ScriptRuntime.isSymbol(callTrap))) {
            throw ScriptRuntime.typeError("getOwnPropertyDescriptor trap has to return undefined or an object");
        }
        ScriptableObject ownPropertyDescriptor = ScriptRuntime.isSymbol(obj) ? targetThrowIfRevoked.getOwnPropertyDescriptor(context, obj) : targetThrowIfRevoked.getOwnPropertyDescriptor(context, ScriptRuntime.toString(obj));
        if (!Undefined.isUndefined(callTrap)) {
            Scriptable scriptable = (Scriptable) callTrap;
            if (callTrap != null) {
                return ScriptableObject.buildDataDescriptor(targetThrowIfRevoked, ScriptableObject.getProperty(scriptable, ES6Iterator.VALUE_PROPERTY), applyDescriptorToAttributeBitset(7, ScriptableObject.getProperty(scriptable, "enumerable"), ScriptableObject.getProperty(scriptable, "writable"), ScriptableObject.getProperty(scriptable, "configurable")));
            }
            return null;
        }
        if (Undefined.isUndefined(ownPropertyDescriptor)) {
            return null;
        }
        if (!Boolean.FALSE.equals(ownPropertyDescriptor.get("configurable")) && targetThrowIfRevoked.isExtensible()) {
            return null;
        }
        throw ScriptRuntime.typeError("proxy can't report an existing own property '" + String.valueOf(obj) + "' as non-existent on a non-extensible object");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Scriptable getPrototype() {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_GET_PROTOTYPE_OF);
        if (trap == null) {
            return targetThrowIfRevoked.getPrototype();
        }
        Object callTrap = callTrap(trap, new Object[]{targetThrowIfRevoked});
        if (Undefined.SCRIPTABLE_UNDEFINED == null || Undefined.isUndefined(callTrap) || ScriptRuntime.isSymbol(callTrap)) {
            throw ScriptRuntime.typeErrorById("msg.arg.not.object", ScriptRuntime.typeof(callTrap));
        }
        Scriptable ensureScriptable = ScriptableObject.ensureScriptable(callTrap);
        if (targetThrowIfRevoked.isExtensible() || callTrap == targetThrowIfRevoked.getPrototype()) {
            return ensureScriptable;
        }
        throw ScriptRuntime.typeError("getPrototypeOf trap has to return the original prototype");
    }

    public ScriptableObject getTargetThrowIfRevoked() {
        ScriptableObject scriptableObject = this.targetObj;
        if (scriptableObject != null) {
            return scriptableObject;
        }
        throw ScriptRuntime.typeError("Illegal operation attempted on a revoked proxy");
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public String getTypeOf() {
        return this.typeOf;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_HAS);
        if (trap == null) {
            if (scriptable == this) {
                scriptable = targetThrowIfRevoked;
            }
            return targetThrowIfRevoked.has(str, scriptable);
        }
        boolean z = ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, str}));
        if (z || (ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), str)) == null || (!Boolean.FALSE.equals(ownPropertyDescriptor.get("configurable")) && targetThrowIfRevoked.isExtensible())) {
            return z;
        }
        throw ScriptRuntime.typeError("proxy can't report an existing own property '" + str + "' as non-existent on a non-extensible object");
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public boolean isExtensible() {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_IS_EXTENSIBLE);
        if (trap == null) {
            return targetThrowIfRevoked.isExtensible();
        }
        boolean z = ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked}));
        if (z == targetThrowIfRevoked.isExtensible()) {
            return z;
        }
        throw ScriptRuntime.typeError("IsExtensible trap has to return the same value as the target");
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public boolean preventExtensions() {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_PREVENT_EXTENSIONS);
        if (trap == null) {
            return targetThrowIfRevoked.preventExtensions();
        }
        boolean z = ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked}));
        if (z && targetThrowIfRevoked.isExtensible()) {
            throw ScriptRuntime.typeError("target is extensible but trap returned true");
        }
        return z;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_SET);
        if (trap == null) {
            if (scriptable == this) {
                scriptable = targetThrowIfRevoked;
            }
            targetThrowIfRevoked.put(i, scriptable, obj);
        } else {
            if (!ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, ScriptRuntime.toString(i), obj})) || (ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), Integer.valueOf(i))) == null || Undefined.isUndefined(ownPropertyDescriptor)) {
                return;
            }
            Boolean bool = Boolean.FALSE;
            if (bool.equals(ownPropertyDescriptor.get("configurable"))) {
                if (ScriptableObject.isDataDescriptor(ownPropertyDescriptor) && bool.equals(ownPropertyDescriptor.get("writable")) && !Objects.equals(obj, ownPropertyDescriptor.get(ES6Iterator.VALUE_PROPERTY))) {
                    throw ScriptRuntime.typeError("proxy set has to use the same value as the plain call");
                }
                if (ScriptableObject.isAccessorDescriptor(ownPropertyDescriptor) && Undefined.isUndefined(ownPropertyDescriptor.get(TRAP_SET))) {
                    throw ScriptRuntime.typeError("proxy set has to be available");
                }
            }
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void setPrototype(Scriptable scriptable) {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_SET_PROTOTYPE_OF);
        if (trap == null) {
            targetThrowIfRevoked.setPrototype(scriptable);
        } else if (ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, scriptable}))) {
            targetThrowIfRevoked.isExtensible();
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(String str) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_DELETE_PROPERTY);
        if (trap != null) {
            if (ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, str})) && (ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), str)) != null) {
                if (Boolean.FALSE.equals(ownPropertyDescriptor.get("configurable")) || !targetThrowIfRevoked.isExtensible()) {
                    throw ScriptRuntime.typeError("proxy can't delete an existing own property ' + name + ' on an not configurable or not extensible object");
                }
                return;
            }
            return;
        }
        targetThrowIfRevoked.delete(str);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public void delete(Symbol symbol) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_DELETE_PROPERTY);
        if (trap != null) {
            if (ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, symbol})) && (ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), symbol)) != null) {
                if (Boolean.FALSE.equals(ownPropertyDescriptor.get("configurable")) || !targetThrowIfRevoked.isExtensible()) {
                    throw ScriptRuntime.typeError("proxy can't delete an existing own property ' + name + ' on an not configurable or not extensible object");
                }
                return;
            }
            return;
        }
        ScriptableObject.ensureSymbolScriptable(targetThrowIfRevoked).delete(symbol);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_HAS);
        if (trap != null) {
            boolean z = ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, ScriptRuntime.toString(i)}));
            if (z || (ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), Integer.valueOf(i))) == null || (!Boolean.FALSE.equals(ownPropertyDescriptor.get("configurable")) && targetThrowIfRevoked.isExtensible())) {
                return z;
            }
            throw ScriptRuntime.typeError("proxy can't check an existing property ' + name + ' existance on an not configurable or not extensible object");
        }
        if (scriptable == this) {
            scriptable = targetThrowIfRevoked;
        }
        return targetThrowIfRevoked.has(i, scriptable);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public boolean has(Symbol symbol, Scriptable scriptable) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_HAS);
        if (trap != null) {
            boolean z = ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, symbol}));
            if (z || (ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), symbol)) == null || (!Boolean.FALSE.equals(ownPropertyDescriptor.get("configurable")) && targetThrowIfRevoked.isExtensible())) {
                return z;
            }
            throw ScriptRuntime.typeError("proxy can't check an existing property ' + name + ' existance on an not configurable or not extensible object");
        }
        if (scriptable == this) {
            scriptable = targetThrowIfRevoked;
        }
        return ScriptableObject.ensureSymbolScriptable(targetThrowIfRevoked).has(symbol, scriptable);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_GET);
        if (trap != null) {
            Object callTrap = callTrap(trap, new Object[]{targetThrowIfRevoked, str, this});
            ScriptableObject ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), str);
            if (ownPropertyDescriptor != null && !Undefined.isUndefined(ownPropertyDescriptor)) {
                Boolean bool = Boolean.FALSE;
                if (bool.equals(ownPropertyDescriptor.get("configurable"))) {
                    if (ScriptableObject.isDataDescriptor(ownPropertyDescriptor) && bool.equals(ownPropertyDescriptor.get("writable")) && !Objects.equals(callTrap, ownPropertyDescriptor.get(ES6Iterator.VALUE_PROPERTY))) {
                        throw ScriptRuntime.typeError("proxy get has to return the same value as the plain call");
                    }
                    if (ScriptableObject.isAccessorDescriptor(ownPropertyDescriptor) && Undefined.isUndefined(ownPropertyDescriptor.get(TRAP_GET)) && !Undefined.isUndefined(callTrap)) {
                        throw ScriptRuntime.typeError("proxy get has to return the same value as the plain call");
                    }
                }
            }
            return callTrap;
        }
        if (scriptable == this) {
            scriptable = targetThrowIfRevoked;
        }
        return targetThrowIfRevoked.get(str, scriptable);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_SET);
        if (trap != null) {
            if (!ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, str, obj})) || (ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), str)) == null || Undefined.isUndefined(ownPropertyDescriptor)) {
                return;
            }
            Boolean bool = Boolean.FALSE;
            if (bool.equals(ownPropertyDescriptor.get("configurable"))) {
                if (ScriptableObject.isDataDescriptor(ownPropertyDescriptor) && bool.equals(ownPropertyDescriptor.get("writable")) && !Objects.equals(obj, ownPropertyDescriptor.get(ES6Iterator.VALUE_PROPERTY))) {
                    throw ScriptRuntime.typeError("proxy set has to use the same value as the plain call");
                }
                if (ScriptableObject.isAccessorDescriptor(ownPropertyDescriptor) && Undefined.isUndefined(ownPropertyDescriptor.get(TRAP_SET))) {
                    throw ScriptRuntime.typeError("proxy set has to be available");
                }
                return;
            }
            return;
        }
        if (scriptable == this) {
            scriptable = targetThrowIfRevoked;
        }
        targetThrowIfRevoked.put(str, scriptable, obj);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public Object get(Symbol symbol, Scriptable scriptable) {
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_GET);
        if (trap != null) {
            Object callTrap = callTrap(trap, new Object[]{targetThrowIfRevoked, symbol, this});
            ScriptableObject ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), symbol);
            if (ownPropertyDescriptor != null && !Undefined.isUndefined(ownPropertyDescriptor)) {
                Boolean bool = Boolean.FALSE;
                if (bool.equals(ownPropertyDescriptor.get("configurable"))) {
                    if (ScriptableObject.isDataDescriptor(ownPropertyDescriptor) && bool.equals(ownPropertyDescriptor.get("writable")) && !Objects.equals(callTrap, ownPropertyDescriptor.get(ES6Iterator.VALUE_PROPERTY))) {
                        throw ScriptRuntime.typeError("proxy get has to return the same value as the plain call");
                    }
                    if (ScriptableObject.isAccessorDescriptor(ownPropertyDescriptor) && Undefined.isUndefined(ownPropertyDescriptor.get(TRAP_GET)) && !Undefined.isUndefined(callTrap)) {
                        throw ScriptRuntime.typeError("proxy get has to return the same value as the plain call");
                    }
                }
            }
            return callTrap;
        }
        if (scriptable == this) {
            scriptable = targetThrowIfRevoked;
        }
        return ScriptableObject.ensureSymbolScriptable(targetThrowIfRevoked).get(symbol, scriptable);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public void put(Symbol symbol, Scriptable scriptable, Object obj) {
        ScriptableObject ownPropertyDescriptor;
        ScriptableObject targetThrowIfRevoked = getTargetThrowIfRevoked();
        Callable trap = getTrap(TRAP_SET);
        if (trap != null) {
            if (!ScriptRuntime.toBoolean(callTrap(trap, new Object[]{targetThrowIfRevoked, symbol, obj})) || (ownPropertyDescriptor = targetThrowIfRevoked.getOwnPropertyDescriptor(Context.getContext(), symbol)) == null || Undefined.isUndefined(ownPropertyDescriptor)) {
                return;
            }
            Boolean bool = Boolean.FALSE;
            if (bool.equals(ownPropertyDescriptor.get("configurable"))) {
                if (ScriptableObject.isDataDescriptor(ownPropertyDescriptor) && bool.equals(ownPropertyDescriptor.get("writable")) && !Objects.equals(obj, ownPropertyDescriptor.get(ES6Iterator.VALUE_PROPERTY))) {
                    throw ScriptRuntime.typeError("proxy set has to use the same value as the plain call");
                }
                if (ScriptableObject.isAccessorDescriptor(ownPropertyDescriptor) && Undefined.isUndefined(ownPropertyDescriptor.get(TRAP_SET))) {
                    throw ScriptRuntime.typeError("proxy set has to be available");
                }
                return;
            }
            return;
        }
        if (scriptable == this) {
            scriptable = targetThrowIfRevoked;
        }
        ScriptableObject.ensureSymbolScriptable(targetThrowIfRevoked).put(symbol, scriptable, obj);
    }
}

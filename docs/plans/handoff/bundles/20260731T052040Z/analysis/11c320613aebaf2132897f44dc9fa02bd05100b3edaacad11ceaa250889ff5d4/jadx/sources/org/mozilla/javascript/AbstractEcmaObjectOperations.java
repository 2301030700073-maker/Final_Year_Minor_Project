package org.mozilla.javascript;

import j$.util.Map;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import org.mozilla.javascript.ScriptRuntime;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class AbstractEcmaObjectOperations {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public enum INTEGRITY_LEVEL {
        FROZEN,
        SEALED
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public enum KEY_COERCION {
        PROPERTY,
        COLLECTION
    }

    public static List<Object> createListFromArrayLike(Context context, Scriptable scriptable, Predicate<Object> predicate, String str) {
        ScriptableObject ensureScriptableObject = ScriptableObject.ensureScriptableObject(scriptable);
        if (ensureScriptableObject instanceof NativeArray) {
            Object[] array = ((NativeArray) ensureScriptableObject).toArray();
            for (Object obj : array) {
                if (!predicate.test(obj)) {
                    throw ScriptRuntime.typeError(str);
                }
            }
            return Arrays.asList(array);
        }
        long lengthOfArrayLike = lengthOfArrayLike(context, ensureScriptableObject);
        ArrayList arrayList = new ArrayList();
        for (long j = 0; j < lengthOfArrayLike; j++) {
            Object property = ScriptableObject.getProperty(ensureScriptableObject, (int) j);
            if (!predicate.test(property)) {
                throw ScriptRuntime.typeError(str);
            }
            arrayList.add(property);
        }
        return arrayList;
    }

    public static Map<Object, List<Object>> groupBy(Context context, Scriptable scriptable, IdFunctionObject idFunctionObject, Object obj, Object obj2, KEY_COERCION key_coercion) {
        if (context.getLanguageVersion() >= 200) {
            ScriptRuntimeES6.requireObjectCoercible(context, obj, idFunctionObject);
        }
        int i = 1;
        if (!(obj2 instanceof Callable)) {
            throw ScriptRuntime.typeErrorById("msg.isnt.function", obj2, ScriptRuntime.typeof(obj2));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        IteratorLikeIterable iteratorLikeIterable = new IteratorLikeIterable(context, scriptable, ScriptRuntime.callIterator(obj, context, scriptable));
        try {
            Iterator<Object> it = iteratorLikeIterable.iterator();
            double d = 0.0d;
            while (it.hasNext()) {
                Object next = it.next();
                if (d > 9.007199254740991E15d) {
                    iteratorLikeIterable.close();
                    throw ScriptRuntime.typeError("Too many values to iterate");
                }
                Object call = ((Callable) obj2).call(context, scriptable, Undefined.SCRIPTABLE_UNDEFINED, new Object[]{next, Double.valueOf(d)});
                if (key_coercion == KEY_COERCION.PROPERTY) {
                    if (!ScriptRuntime.isSymbol(call)) {
                        call = ScriptRuntime.toString(call);
                    }
                } else if ((call instanceof Number) && ((Number) call).doubleValue() == ScriptRuntime.negativeZero) {
                    call = ScriptRuntime.zeroObj;
                }
                ((List) Map.EL.computeIfAbsent(linkedHashMap, call, new NativeSymbol$$ExternalSyntheticLambda5(i))).add(next);
                d += 1.0d;
            }
            iteratorLikeIterable.close();
            return linkedHashMap;
        } finally {
        }
    }

    public static boolean hasOwnProperty(Context context, Object obj, Object obj2) {
        Scriptable ensureScriptable = ScriptableObject.ensureScriptable(obj);
        if (obj2 instanceof Symbol) {
            return ScriptableObject.ensureSymbolScriptable(obj).has((Symbol) obj2, ensureScriptable);
        }
        ScriptRuntime.StringIdOrIndex stringIdOrIndex = ScriptRuntime.toStringIdOrIndex(obj2);
        String str = stringIdOrIndex.stringId;
        return str == null ? ensureScriptable.has(stringIdOrIndex.index, ensureScriptable) : ensureScriptable.has(str, ensureScriptable);
    }

    public static boolean isCompatiblePropertyDescriptor(Context context, boolean z, ScriptableObject scriptableObject, ScriptableObject scriptableObject2) {
        Scriptable scriptable = Undefined.SCRIPTABLE_UNDEFINED;
        return validateAndApplyPropertyDescriptor(context, scriptable, scriptable, z, scriptableObject, scriptableObject2);
    }

    public static boolean isConstructor(Context context, Object obj) {
        if (obj instanceof LambdaConstructor) {
            return true;
        }
        if (obj instanceof LambdaFunction) {
            return false;
        }
        return obj instanceof Constructable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$groupBy$0(Object obj) {
        return new ArrayList();
    }

    public static long lengthOfArrayLike(Context context, Scriptable scriptable) {
        return ScriptRuntime.toLength(new Object[]{ScriptableObject.getProperty(scriptable, "length")}, 0);
    }

    public static void put(Context context, Scriptable scriptable, String str, Object obj, boolean z) {
        Scriptable base = ScriptableObject.getBase(scriptable, str);
        if (base == null) {
            base = scriptable;
        }
        if (!(base instanceof ScriptableObject)) {
            base.put(str, scriptable, obj);
        } else {
            if (((ScriptableObject) base).putOwnProperty(str, scriptable, obj, z)) {
                return;
            }
            scriptable.put(str, scriptable, obj);
        }
    }

    public static boolean setIntegrityLevel(Context context, Object obj, INTEGRITY_LEVEL integrity_level) {
        ScriptableObject ensureScriptableObject = ScriptableObject.ensureScriptableObject(obj);
        if (!ensureScriptableObject.preventExtensions()) {
            return false;
        }
        for (Object obj2 : ensureScriptableObject.getIds(true, true)) {
            ScriptableObject ownPropertyDescriptor = ensureScriptableObject.getOwnPropertyDescriptor(context, obj2);
            if (integrity_level != INTEGRITY_LEVEL.SEALED) {
                if (ScriptableObject.isDataDescriptor(ownPropertyDescriptor) && Boolean.TRUE.equals(ownPropertyDescriptor.get("writable"))) {
                    ownPropertyDescriptor.put("writable", ownPropertyDescriptor, Boolean.FALSE);
                }
                if (Boolean.TRUE.equals(ownPropertyDescriptor.get("configurable"))) {
                    ownPropertyDescriptor.put("configurable", ownPropertyDescriptor, Boolean.FALSE);
                }
                ensureScriptableObject.defineOwnProperty(context, obj2, ownPropertyDescriptor, false);
            } else if (Boolean.TRUE.equals(ownPropertyDescriptor.get("configurable"))) {
                ownPropertyDescriptor.put("configurable", ownPropertyDescriptor, Boolean.FALSE);
                ensureScriptableObject.defineOwnProperty(context, obj2, ownPropertyDescriptor, false);
            }
        }
        return true;
    }

    public static Constructable speciesConstructor(Context context, Scriptable scriptable, Constructable constructable) {
        Object property = ScriptableObject.getProperty(scriptable, "constructor");
        Object obj = Scriptable.NOT_FOUND;
        if (property != obj && !Undefined.isUndefined(property)) {
            if (!ScriptRuntime.isObject(property)) {
                throw ScriptRuntime.typeErrorById("msg.arg.not.object", ScriptRuntime.typeof(property));
            }
            Object property2 = ScriptableObject.getProperty((Scriptable) property, SymbolKey.SPECIES);
            if (property2 != obj && property2 != null && !Undefined.isUndefined(property2)) {
                if (property2 instanceof Constructable) {
                    return (Constructable) property2;
                }
                throw ScriptRuntime.typeErrorById("msg.not.ctor", ScriptRuntime.typeof(property2));
            }
        }
        return constructable;
    }

    public static boolean testIntegrityLevel(Context context, Object obj, INTEGRITY_LEVEL integrity_level) {
        ScriptableObject ensureScriptableObject = ScriptableObject.ensureScriptableObject(obj);
        if (ensureScriptableObject.isExtensible()) {
            return false;
        }
        for (Object obj2 : ensureScriptableObject.getIds(true, true)) {
            ScriptableObject ownPropertyDescriptor = ensureScriptableObject.getOwnPropertyDescriptor(context, obj2);
            Boolean bool = Boolean.TRUE;
            if (bool.equals(ownPropertyDescriptor.get("configurable"))) {
                return false;
            }
            if (integrity_level == INTEGRITY_LEVEL.FROZEN && ScriptableObject.isDataDescriptor(ownPropertyDescriptor) && bool.equals(ownPropertyDescriptor.get("writable"))) {
                return false;
            }
        }
        return true;
    }

    public static boolean validateAndApplyPropertyDescriptor(Context context, Scriptable scriptable, Scriptable scriptable2, boolean z, ScriptableObject scriptableObject, ScriptableObject scriptableObject2) {
        if (Undefined.isUndefined(scriptableObject2)) {
            if (!z) {
                return false;
            }
            if (!ScriptableObject.isGenericDescriptor(scriptableObject)) {
                ScriptableObject.isDataDescriptor(scriptableObject);
            }
            return true;
        }
        if (scriptableObject.getIds().length == 0) {
            return true;
        }
        Boolean bool = Boolean.FALSE;
        if (bool.equals(scriptableObject2.get("configurable"))) {
            Boolean bool2 = Boolean.TRUE;
            if (bool2.equals(Boolean.valueOf(ScriptableObject.hasProperty(scriptableObject, "configurable"))) && bool2.equals(scriptableObject.get("configurable"))) {
                return false;
            }
            if (bool2.equals(Boolean.valueOf(ScriptableObject.hasProperty(scriptableObject, "enumerable"))) && !Objects.equals(scriptableObject.get("enumerable"), scriptableObject2.get("enumerable"))) {
                return false;
            }
        }
        if (ScriptableObject.isGenericDescriptor(scriptableObject)) {
            return true;
        }
        if (ScriptableObject.isDataDescriptor(scriptableObject2) != ScriptableObject.isDataDescriptor(scriptableObject)) {
            if (bool.equals(scriptableObject2.get("configurable"))) {
                return false;
            }
            if (ScriptableObject.isDataDescriptor(scriptableObject2)) {
                bool.equals(scriptableObject2.get("configurable"));
            }
        } else if (ScriptableObject.isDataDescriptor(scriptableObject2) && ScriptableObject.isDataDescriptor(scriptableObject)) {
            if (bool.equals(scriptableObject2.get("configurable")) && bool.equals(scriptableObject2.get("writable"))) {
                Boolean bool3 = Boolean.TRUE;
                if (bool3.equals(Boolean.valueOf(ScriptableObject.hasProperty(scriptableObject, "writable"))) && bool3.equals(scriptableObject.get("writable"))) {
                    return false;
                }
                return !bool3.equals(Boolean.valueOf(ScriptableObject.hasProperty(scriptableObject, ES6Iterator.VALUE_PROPERTY))) || Objects.equals(scriptableObject.get(ES6Iterator.VALUE_PROPERTY), scriptableObject2.get(ES6Iterator.VALUE_PROPERTY));
            }
        } else if (bool.equals(scriptableObject2.get("configurable"))) {
            Boolean bool4 = Boolean.TRUE;
            if (bool4.equals(Boolean.valueOf(ScriptableObject.hasProperty(scriptableObject, "set"))) && !Objects.equals(scriptableObject.get("set"), scriptableObject2.get("set"))) {
                return false;
            }
            if (bool4.equals(Boolean.valueOf(ScriptableObject.hasProperty(scriptableObject, "get"))) && !Objects.equals(scriptableObject.get("get"), scriptableObject2.get("get"))) {
                return false;
            }
        }
        return true;
    }

    public static void put(Context context, Scriptable scriptable, int i, Object obj, boolean z) {
        Scriptable base = ScriptableObject.getBase(scriptable, i);
        if (base == null) {
            base = scriptable;
        }
        if (base instanceof ScriptableObject) {
            if (((ScriptableObject) base).putOwnProperty(i, scriptable, obj, z)) {
                return;
            }
            scriptable.put(i, scriptable, obj);
            return;
        }
        base.put(i, scriptable, obj);
    }
}

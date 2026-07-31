package org.mozilla.javascript;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import java.lang.reflect.Array;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.json.JsonParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NativeJSON extends ScriptableObject {
    private static final String JSON_TAG = "JSON";
    private static final int MAX_STRINGIFY_GAP_LENGTH = 10;
    private static final long serialVersionUID = -4567599697595654984L;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class StringifyState {
        Context cx;
        String gap;
        String indent;
        Object[] propertyList;
        Callable replacer;
        Scriptable scope;
        ArrayDeque<Object> stack = new ArrayDeque<>();

        public StringifyState(Context context, Scriptable scriptable, String str, String str2, Callable callable, Object[] objArr) {
            this.cx = context;
            this.scope = scriptable;
            this.indent = str;
            this.gap = str2;
            this.replacer = callable;
            this.propertyList = objArr;
        }
    }

    private NativeJSON() {
    }

    public static void init(Scriptable scriptable, boolean z) {
        NativeJSON nativeJSON = new NativeJSON();
        nativeJSON.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        nativeJSON.setParentScope(scriptable);
        nativeJSON.defineProperty(scriptable, "parse", 2, new NativeMath$$ExternalSyntheticLambda5(19), 2, 3);
        nativeJSON.defineProperty(scriptable, "stringify", 3, new NativeMath$$ExternalSyntheticLambda5(20), 2, 3);
        nativeJSON.defineProperty("toSource", JSON_TAG, 7);
        nativeJSON.defineProperty(SymbolKey.TO_STRING_TAG, JSON_TAG, 3);
        ScriptableObject.defineProperty(scriptable, JSON_TAG, nativeJSON, 2);
        if (z) {
            nativeJSON.sealObject();
        }
    }

    public static boolean isLeadingSurrogate(char c) {
        return c >= 55296 && c <= 56319;
    }

    private static boolean isObjectArrayLike(Object obj) {
        if (obj instanceof NativeArray) {
            return true;
        }
        if (!(obj instanceof NativeJavaObject)) {
            return false;
        }
        Object unwrap = ((NativeJavaObject) obj).unwrap();
        return (unwrap instanceof Collection) || unwrap.getClass().isArray();
    }

    public static boolean isTrailingSurrogate(char c) {
        return c >= 56320 && c <= 57343;
    }

    private static String ja(Scriptable scriptable, StringifyState stringifyState) {
        Object obj;
        Object obj2;
        String str;
        Object[] objArr = null;
        if (scriptable instanceof Wrapper) {
            obj = ((Wrapper) scriptable).unwrap();
            obj2 = obj;
        } else {
            obj = scriptable;
            obj2 = null;
        }
        int i = 0;
        if (stringifyState.stack.contains(obj)) {
            throw ScriptRuntime.typeErrorById("msg.cyclic.value", obj.getClass().getName());
        }
        stringifyState.stack.push(obj);
        String str2 = stringifyState.indent;
        stringifyState.indent = Owner.CC.m$1(str2, stringifyState.gap);
        ArrayList arrayList = new ArrayList();
        if (obj2 != null) {
            if (obj2.getClass().isArray()) {
                int length = Array.getLength(obj2);
                Object[] objArr2 = new Object[length];
                while (i < length) {
                    objArr2[i] = Context.javaToJS(Array.get(obj2, i), stringifyState.scope, stringifyState.cx);
                    i++;
                }
                objArr = objArr2;
            } else if (obj2 instanceof Collection) {
                Collection collection = (Collection) obj2;
                objArr = new Object[collection.size()];
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    objArr[i] = Context.javaToJS(it.next(), stringifyState.scope, stringifyState.cx);
                    i++;
                }
            }
            if (objArr != null) {
                scriptable = stringifyState.cx.newArray(stringifyState.scope, objArr);
            }
        }
        long length2 = ((NativeArray) scriptable).getLength();
        long j = 0;
        while (j < length2) {
            Object str3 = j > 2147483647L ? str(Long.toString(j), scriptable, stringifyState) : str(Integer.valueOf((int) j), scriptable, stringifyState);
            if (str3 == Undefined.instance) {
                arrayList.add("null");
            } else {
                arrayList.add(str3);
            }
            j++;
        }
        if (arrayList.isEmpty()) {
            str = "[]";
        } else if (stringifyState.gap.length() == 0) {
            str = Modifier.CC.m("[", join(arrayList, ","), "]");
        } else {
            String join = join(arrayList, Owner.CC.m(",\n", stringifyState.indent));
            str = "[\n" + stringifyState.indent + join + "\n" + str2 + "]";
        }
        stringifyState.stack.pop();
        stringifyState.indent = str2;
        return str;
    }

    private static Object javaToJSON(Object obj, StringifyState stringifyState) {
        Object javaToJS = Context.javaToJS(stringifyState.cx.getJavaToJSONConverter().apply(obj), stringifyState.scope, stringifyState.cx);
        NativeObject nativeObject = new NativeObject();
        nativeObject.setParentScope(stringifyState.scope);
        nativeObject.setPrototype(ScriptableObject.getObjectPrototype(stringifyState.scope));
        nativeObject.defineProperty("", javaToJS, 0);
        return str("", nativeObject, stringifyState);
    }

    private static String jo(Scriptable scriptable, StringifyState stringifyState) {
        Object obj;
        Object obj2;
        String str;
        String obj3;
        int i;
        if (scriptable instanceof Wrapper) {
            obj2 = ((Wrapper) scriptable).unwrap();
            obj = obj2;
        } else {
            obj = null;
            obj2 = scriptable;
        }
        if (stringifyState.stack.contains(obj2)) {
            throw ScriptRuntime.typeErrorById("msg.cyclic.value", obj2.getClass().getName());
        }
        stringifyState.stack.push(obj2);
        if (obj instanceof Map) {
            scriptable = stringifyState.cx.newObject(stringifyState.scope);
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                if (!(entry.getKey() instanceof Symbol)) {
                    Object javaToJS = Context.javaToJS(entry.getValue(), stringifyState.scope, stringifyState.cx);
                    if (entry.getKey() instanceof String) {
                        obj3 = (String) entry.getKey();
                        i = 5;
                    } else {
                        obj3 = entry.getKey().toString();
                        i = 0;
                    }
                    try {
                        ScriptableObject.defineProperty(scriptable, obj3, javaToJS, i);
                    } catch (EcmaError unused) {
                    }
                }
            }
        }
        String str2 = stringifyState.indent;
        stringifyState.indent = Owner.CC.m$1(str2, stringifyState.gap);
        Object[] objArr = stringifyState.propertyList;
        if (objArr == null) {
            objArr = scriptable.getIds();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj4 : objArr) {
            Object str3 = str(obj4, scriptable, stringifyState);
            if (str3 != Undefined.instance) {
                String m$1 = Owner.CC.m$1(quote(obj4.toString()), ":");
                if (stringifyState.gap.length() > 0) {
                    m$1 = m$1.concat(" ");
                }
                arrayList.add(m$1.concat(String.valueOf(str3)));
            }
        }
        if (arrayList.isEmpty()) {
            str = "{}";
        } else if (stringifyState.gap.length() == 0) {
            str = Modifier.CC.m("{", join(arrayList, ","), "}");
        } else {
            str = "{\n" + stringifyState.indent + join(arrayList, Owner.CC.m(",\n", stringifyState.indent)) + "\n" + str2 + "}";
        }
        stringifyState.stack.pop();
        stringifyState.indent = str2;
        return str;
    }

    private static String join(Collection<Object> collection, String str) {
        if (collection == null || collection.isEmpty()) {
            return "";
        }
        Iterator<Object> it = collection.iterator();
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder(it.next().toString());
        while (it.hasNext()) {
            sb.append(str);
            sb.append(it.next());
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object parse(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        String scriptRuntime = ScriptRuntime.toString(objArr, 0);
        Object obj = objArr.length > 1 ? objArr[1] : null;
        return obj instanceof Callable ? parse(context, scriptable, scriptRuntime, (Callable) obj) : parse(context, scriptable, scriptRuntime);
    }

    private static String quote(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append('\"');
        int length = str.length();
        int i = 0;
        char c = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '\f') {
                sb.append("\\f");
            } else if (charAt == '\r') {
                sb.append("\\r");
            } else if (charAt == '\"') {
                sb.append("\\\"");
            } else if (charAt != '\\') {
                switch (charAt) {
                    case '\b':
                        sb.append("\\b");
                        break;
                    case '\t':
                        sb.append("\\t");
                        break;
                    case '\n':
                        sb.append("\\n");
                        break;
                    default:
                        if (!isLeadingSurrogate(charAt) || i >= length - 1 || !isTrailingSurrogate(str.charAt(i + 1))) {
                            if (!isTrailingSurrogate(charAt) || !isLeadingSurrogate(c)) {
                                if (charAt >= ' ' && !isLeadingSurrogate(charAt) && !isTrailingSurrogate(charAt)) {
                                    sb.append(charAt);
                                    break;
                                } else {
                                    sb.append("\\u");
                                    sb.append(String.format("%04x", Integer.valueOf(charAt)));
                                    break;
                                }
                            } else {
                                sb.append(c);
                                sb.append(charAt);
                                break;
                            }
                        } else {
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
            i++;
            c = charAt;
        }
        sb.append('\"');
        return sb.toString();
    }

    private static String repeat(char c, int i) {
        char[] cArr = new char[i];
        Arrays.fill(cArr, c);
        return new String(cArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object str(java.lang.Object r9, org.mozilla.javascript.Scriptable r10, org.mozilla.javascript.NativeJSON.StringifyState r11) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeJSON.str(java.lang.Object, org.mozilla.javascript.Scriptable, org.mozilla.javascript.NativeJSON$StringifyState):java.lang.Object");
    }

    public static Object stringify(Context context, Scriptable scriptable, Object obj, Object obj2, Object obj3) {
        Callable callable;
        Object[] objArr;
        String str;
        String str2;
        if (obj2 instanceof Callable) {
            callable = (Callable) obj2;
            objArr = null;
        } else if (obj2 instanceof NativeArray) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            NativeArray nativeArray = (NativeArray) obj2;
            Iterator<Integer> it = nativeArray.getIndexIds().iterator();
            while (it.hasNext()) {
                Object obj4 = nativeArray.get(it.next().intValue(), nativeArray);
                if (obj4 instanceof String) {
                    linkedHashSet.add(obj4);
                } else if ((obj4 instanceof Number) || (obj4 instanceof NativeString) || (obj4 instanceof NativeNumber)) {
                    linkedHashSet.add(ScriptRuntime.toString(obj4));
                }
            }
            Object[] objArr2 = new Object[linkedHashSet.size()];
            Iterator it2 = linkedHashSet.iterator();
            int i = 0;
            while (it2.hasNext()) {
                ScriptRuntime.StringIdOrIndex stringIdOrIndex = ScriptRuntime.toStringIdOrIndex(it2.next());
                int i2 = i + 1;
                Object obj5 = stringIdOrIndex.stringId;
                if (obj5 == null) {
                    obj5 = Integer.valueOf(stringIdOrIndex.index);
                }
                objArr2[i] = obj5;
                i = i2;
            }
            objArr = objArr2;
            callable = null;
        } else {
            callable = null;
            objArr = null;
        }
        Object valueOf = obj3 instanceof NativeNumber ? Double.valueOf(ScriptRuntime.toNumber(obj3)) : obj3 instanceof NativeString ? ScriptRuntime.toString(obj3) : obj3;
        if (valueOf instanceof Number) {
            int min = Math.min(10, (int) ScriptRuntime.toInteger(valueOf));
            str2 = min > 0 ? repeat(' ', min) : "";
        } else {
            if (!(valueOf instanceof String)) {
                str = "";
                StringifyState stringifyState = new StringifyState(context, scriptable, "", str, callable, objArr);
                NativeObject nativeObject = new NativeObject();
                nativeObject.setParentScope(scriptable);
                nativeObject.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
                nativeObject.defineProperty("", obj, 0);
                return str("", nativeObject, stringifyState);
            }
            str2 = (String) valueOf;
            if (str2.length() > 10) {
                str2 = str2.substring(0, 10);
            }
        }
        str = str2;
        StringifyState stringifyState2 = new StringifyState(context, scriptable, "", str, callable, objArr);
        NativeObject nativeObject2 = new NativeObject();
        nativeObject2.setParentScope(scriptable);
        nativeObject2.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        nativeObject2.defineProperty("", obj, 0);
        return str("", nativeObject2, stringifyState2);
    }

    private static Object walk(Context context, Scriptable scriptable, Callable callable, Scriptable scriptable2, Object obj) {
        Object obj2 = obj instanceof Number ? scriptable2.get(((Number) obj).intValue(), scriptable2) : scriptable2.get((String) obj, scriptable2);
        if (obj2 instanceof Scriptable) {
            Scriptable scriptable3 = (Scriptable) obj2;
            if (scriptable3 instanceof NativeArray) {
                long length = ((NativeArray) scriptable3).getLength();
                for (long j = 0; j < length; j++) {
                    if (j > 2147483647L) {
                        String l = Long.toString(j);
                        Object walk = walk(context, scriptable, callable, scriptable3, l);
                        if (walk == Undefined.instance) {
                            scriptable3.delete(l);
                        } else {
                            scriptable3.put(l, scriptable3, walk);
                        }
                    } else {
                        int i = (int) j;
                        Object walk2 = walk(context, scriptable, callable, scriptable3, Integer.valueOf(i));
                        if (walk2 == Undefined.instance) {
                            scriptable3.delete(i);
                        } else {
                            scriptable3.put(i, scriptable3, walk2);
                        }
                    }
                }
            } else {
                for (Object obj3 : scriptable3.getIds()) {
                    Object walk3 = walk(context, scriptable, callable, scriptable3, obj3);
                    if (walk3 == Undefined.instance) {
                        if (obj3 instanceof Number) {
                            scriptable3.delete(((Number) obj3).intValue());
                        } else {
                            scriptable3.delete((String) obj3);
                        }
                    } else if (obj3 instanceof Number) {
                        scriptable3.put(((Number) obj3).intValue(), scriptable3, walk3);
                    } else {
                        scriptable3.put((String) obj3, scriptable3, walk3);
                    }
                }
            }
        }
        return callable.call(context, scriptable, scriptable2, new Object[]{obj, obj2});
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return JSON_TAG;
    }

    private static Object parse(Context context, Scriptable scriptable, String str) {
        try {
            return new JsonParser(context, scriptable).parseValue(str);
        } catch (JsonParser.ParseException e) {
            throw ScriptRuntime.constructError("SyntaxError", e.getMessage());
        }
    }

    public static Object parse(Context context, Scriptable scriptable, String str, Callable callable) {
        Object parse = parse(context, scriptable, str);
        Scriptable newObject = context.newObject(scriptable);
        newObject.put("", newObject, parse);
        return walk(context, scriptable, callable, newObject, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object stringify(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object obj;
        Object obj2 = Undefined.instance;
        if (objArr.length > 0) {
            obj2 = objArr[0];
            if (objArr.length > 1) {
                Object obj3 = objArr[1];
                obj = objArr.length > 2 ? objArr[2] : null;
                r1 = obj3;
                return stringify(context, scriptable, obj2, r1, obj);
            }
        }
        obj = null;
        return stringify(context, scriptable, obj2, r1, obj);
    }
}

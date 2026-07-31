package org.mozilla.javascript;

import j$.util.Map;
import j$.util.function.Function$CC;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NativeSymbol extends ScriptableObject implements Symbol {
    public static final String CLASS_NAME = "Symbol";
    private static final Object GLOBAL_TABLE_KEY = new Object();
    public static final String TYPE_NAME = "symbol";
    private static final long serialVersionUID = -589539749749830003L;
    private final SymbolKey key;
    private final NativeSymbol symbolData;

    public NativeSymbol(NativeSymbol nativeSymbol) {
        this.key = nativeSymbol.key;
        this.symbolData = nativeSymbol.symbolData;
    }

    private static NativeSymbol constructSymbol(Context context, Scriptable scriptable, LambdaConstructor lambdaConstructor, SymbolKey symbolKey) {
        return (NativeSymbol) lambdaConstructor.call(context, scriptable, null, new Object[]{Undefined.instance, symbolKey});
    }

    private static void createStandardSymbol(Context context, Scriptable scriptable, LambdaConstructor lambdaConstructor, String str, SymbolKey symbolKey) {
        lambdaConstructor.defineProperty(str, constructSymbol(context, scriptable, lambdaConstructor, symbolKey), 7);
    }

    private static Map<String, NativeSymbol> getGlobalMap(Scriptable scriptable) {
        ScriptableObject scriptableObject = (ScriptableObject) ScriptableObject.getTopLevelScope(scriptable);
        Object obj = GLOBAL_TABLE_KEY;
        Map<String, NativeSymbol> map = (Map) scriptableObject.getAssociatedValue(obj);
        if (map != null) {
            return map;
        }
        HashMap hashMap = new HashMap();
        scriptableObject.associateValue(obj, hashMap);
        return hashMap;
    }

    private static NativeSymbol getSelf(Scriptable scriptable) {
        return (NativeSymbol) LambdaConstructor.convertThisObject(scriptable, NativeSymbol.class);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        LambdaConstructor lambdaConstructor = new LambdaConstructor(scriptable, CLASS_NAME, 0, 1, new NativeProxy$$ExternalSyntheticLambda0(2));
        lambdaConstructor.setPrototypePropertyAttributes(7);
        int i = 0;
        lambdaConstructor.defineConstructorMethod(scriptable, "for", 1, new NativeSymbol$$ExternalSyntheticLambda1(lambdaConstructor, i), 2, 3);
        lambdaConstructor.defineConstructorMethod(scriptable, "keyFor", 1, new NativeSymbol$$ExternalSyntheticLambda2(i), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "toString", 0, new NativeSymbol$$ExternalSyntheticLambda2(1), 2, 3);
        int i2 = 2;
        lambdaConstructor.definePrototypeMethod(scriptable, "valueOf", 0, new NativeSymbol$$ExternalSyntheticLambda2(i2), 2, 3);
        SymbolKey symbolKey = SymbolKey.TO_PRIMITIVE;
        lambdaConstructor.definePrototypeMethod(scriptable, symbolKey, 1, new NativeSymbol$$ExternalSyntheticLambda2(i2), 3, 3);
        SymbolKey symbolKey2 = SymbolKey.TO_STRING_TAG;
        lambdaConstructor.definePrototypeProperty(symbolKey2, CLASS_NAME, 3);
        lambdaConstructor.definePrototypeProperty(context, "description", new NativeSymbol$$ExternalSyntheticLambda5(0), 3);
        ScriptableObject.defineProperty(scriptable, CLASS_NAME, lambdaConstructor, 2);
        createStandardSymbol(context, scriptable, lambdaConstructor, "iterator", SymbolKey.ITERATOR);
        createStandardSymbol(context, scriptable, lambdaConstructor, "species", SymbolKey.SPECIES);
        createStandardSymbol(context, scriptable, lambdaConstructor, "toStringTag", symbolKey2);
        createStandardSymbol(context, scriptable, lambdaConstructor, "hasInstance", SymbolKey.HAS_INSTANCE);
        createStandardSymbol(context, scriptable, lambdaConstructor, "isConcatSpreadable", SymbolKey.IS_CONCAT_SPREADABLE);
        createStandardSymbol(context, scriptable, lambdaConstructor, "isRegExp", SymbolKey.IS_REGEXP);
        createStandardSymbol(context, scriptable, lambdaConstructor, "toPrimitive", symbolKey);
        createStandardSymbol(context, scriptable, lambdaConstructor, "match", SymbolKey.MATCH);
        createStandardSymbol(context, scriptable, lambdaConstructor, "matchAll", SymbolKey.MATCH_ALL);
        createStandardSymbol(context, scriptable, lambdaConstructor, "replace", SymbolKey.REPLACE);
        createStandardSymbol(context, scriptable, lambdaConstructor, "search", SymbolKey.SEARCH);
        createStandardSymbol(context, scriptable, lambdaConstructor, "split", SymbolKey.SPLIT);
        createStandardSymbol(context, scriptable, lambdaConstructor, "unscopables", SymbolKey.UNSCOPABLES);
        if (z) {
            lambdaConstructor.sealObject();
        }
    }

    private static boolean isStrictMode() {
        Context currentContext = Context.getCurrentContext();
        return currentContext != null && currentContext.isStrictMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NativeSymbol js_constructor(Context context, Scriptable scriptable, Object[] objArr) {
        return objArr.length > 1 ? new NativeSymbol((SymbolKey) objArr[1]) : new NativeSymbol(new SymbolKey((objArr.length <= 0 || Undefined.isUndefined(objArr[0])) ? null : ScriptRuntime.toString(objArr[0])));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object js_description(Scriptable scriptable) {
        return getSelf(scriptable).getKey().getDescription();
    }

    private static Object js_for(final Context context, final Scriptable scriptable, Object[] objArr, final LambdaConstructor lambdaConstructor) {
        final String scriptRuntime = objArr.length > 0 ? ScriptRuntime.toString(objArr[0]) : ScriptRuntime.toString(Undefined.instance);
        return Map.EL.computeIfAbsent(getGlobalMap(scriptable), scriptRuntime, new java.util.function.Function() { // from class: org.mozilla.javascript.NativeSymbol$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NativeSymbol lambda$js_for$1;
                lambda$js_for$1 = NativeSymbol.lambda$js_for$1(Context.this, scriptable, lambdaConstructor, scriptRuntime, (String) obj);
                return lambda$js_for$1;
            }

            public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object js_keyFor(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object obj = objArr.length > 0 ? objArr[0] : Undefined.instance;
        if (!(obj instanceof NativeSymbol)) {
            throw ScriptRuntime.throwCustomError(context, scriptable, "TypeError", "Not a Symbol");
        }
        NativeSymbol nativeSymbol = (NativeSymbol) obj;
        for (Map.Entry<String, NativeSymbol> entry : getGlobalMap(scriptable).entrySet()) {
            if (entry.getValue().key == nativeSymbol.key) {
                return entry.getKey();
            }
        }
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String js_toString(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return getSelf(scriptable2).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object js_valueOf(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return getSelf(scriptable2).symbolData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$0(LambdaConstructor lambdaConstructor, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return js_for(context, scriptable, objArr, lambdaConstructor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ NativeSymbol lambda$js_for$1(Context context, Scriptable scriptable, LambdaConstructor lambdaConstructor, String str, String str2) {
        return constructSymbol(context, scriptable, lambdaConstructor, str);
    }

    public boolean equals(Object obj) {
        return this.key.equals(obj);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return CLASS_NAME;
    }

    public SymbolKey getKey() {
        return this.key;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public String getTypeOf() {
        return isSymbol() ? TYPE_NAME : super.getTypeOf();
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public boolean isSymbol() {
        return this.symbolData == this;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        if (!isSymbol()) {
            super.put(str, scriptable, obj);
        } else if (isStrictMode()) {
            throw ScriptRuntime.typeErrorById("msg.no.assign.symbol.strict", new Object[0]);
        }
    }

    public String toString() {
        return this.key.toString();
    }

    public NativeSymbol(SymbolKey symbolKey) {
        this.key = symbolKey;
        this.symbolData = this;
    }

    private static NativeSymbol constructSymbol(Context context, Scriptable scriptable, LambdaConstructor lambdaConstructor, String str) {
        return (NativeSymbol) lambdaConstructor.call(context, scriptable, null, new Object[]{str});
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        if (!isSymbol()) {
            super.put(i, scriptable, obj);
        } else if (isStrictMode()) {
            throw ScriptRuntime.typeErrorById("msg.no.assign.symbol.strict", new Object[0]);
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public void put(Symbol symbol, Scriptable scriptable, Object obj) {
        if (!isSymbol()) {
            super.put(symbol, scriptable, obj);
        } else if (isStrictMode()) {
            throw ScriptRuntime.typeErrorById("msg.no.assign.symbol.strict", new Object[0]);
        }
    }
}

package org.mozilla.javascript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeSymbol$$ExternalSyntheticLambda2 implements Callable {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NativeSymbol$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // org.mozilla.javascript.Callable
    public final Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object js_keyFor;
        String js_toString;
        Object js_valueOf;
        Object lambda$addSymbolSpecies$0;
        switch (this.$r8$classId) {
            case 0:
                js_keyFor = NativeSymbol.js_keyFor(context, scriptable, scriptable2, objArr);
                return js_keyFor;
            case 1:
                js_toString = NativeSymbol.js_toString(context, scriptable, scriptable2, objArr);
                return js_toString;
            case 2:
                js_valueOf = NativeSymbol.js_valueOf(context, scriptable, scriptable2, objArr);
                return js_valueOf;
            default:
                lambda$addSymbolSpecies$0 = ScriptRuntimeES6.lambda$addSymbolSpecies$0(context, scriptable, scriptable2, objArr);
                return lambda$addSymbolSpecies$0;
        }
    }
}

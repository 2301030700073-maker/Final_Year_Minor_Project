package org.mozilla.javascript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeProxy$$ExternalSyntheticLambda0 implements Constructable {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NativeProxy$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // org.mozilla.javascript.Constructable
    public final Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        NativeProxy constructor;
        Scriptable constructor2;
        NativeSymbol js_constructor;
        switch (this.$r8$classId) {
            case 0:
                constructor = NativeProxy.constructor(context, scriptable, objArr);
                return constructor;
            case 1:
                constructor2 = NativePromise.constructor(context, scriptable, objArr);
                return constructor2;
            default:
                js_constructor = NativeSymbol.js_constructor(context, scriptable, objArr);
                return js_constructor;
        }
    }
}

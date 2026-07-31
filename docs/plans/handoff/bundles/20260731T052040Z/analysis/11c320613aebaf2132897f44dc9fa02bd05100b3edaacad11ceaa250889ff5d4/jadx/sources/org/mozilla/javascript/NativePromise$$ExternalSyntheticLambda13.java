package org.mozilla.javascript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativePromise$$ExternalSyntheticLambda13 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ NativePromise$$ExternalSyntheticLambda13(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // org.mozilla.javascript.Callable
    public final Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object lambda$makeThenFinally$4;
        Object lambda$makeCatchFinally$6;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                lambda$makeThenFinally$4 = NativePromise.lambda$makeThenFinally$4(obj, context, scriptable, scriptable2, objArr);
                return lambda$makeThenFinally$4;
            default:
                lambda$makeCatchFinally$6 = NativePromise.lambda$makeCatchFinally$6(obj, context, scriptable, scriptable2, objArr);
                return lambda$makeCatchFinally$6;
        }
    }
}

package org.mozilla.javascript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativePromise$$ExternalSyntheticLambda15 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Scriptable f$0;
    public final /* synthetic */ Callable f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ NativePromise$$ExternalSyntheticLambda15(Scriptable scriptable, Callable callable, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = scriptable;
        this.f$1 = callable;
        this.f$2 = obj;
    }

    @Override // org.mozilla.javascript.Callable
    public final Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object lambda$makeThenFinally$5;
        Object lambda$makeCatchFinally$7;
        switch (this.$r8$classId) {
            case 0:
                lambda$makeThenFinally$5 = NativePromise.lambda$makeThenFinally$5(this.f$0, this.f$1, this.f$2, context, scriptable, scriptable2, objArr);
                return lambda$makeThenFinally$5;
            default:
                lambda$makeCatchFinally$7 = NativePromise.lambda$makeCatchFinally$7(this.f$0, this.f$1, this.f$2, context, scriptable, scriptable2, objArr);
                return lambda$makeCatchFinally$7;
        }
    }
}

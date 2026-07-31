package org.mozilla.javascript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeSymbol$$ExternalSyntheticLambda1 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LambdaConstructor f$0;

    public /* synthetic */ NativeSymbol$$ExternalSyntheticLambda1(LambdaConstructor lambdaConstructor, int i) {
        this.$r8$classId = i;
        this.f$0 = lambdaConstructor;
    }

    @Override // org.mozilla.javascript.Callable
    public final Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object lambda$init$0;
        Object lambda$init$02;
        Object lambda$init$1;
        int i = this.$r8$classId;
        LambdaConstructor lambdaConstructor = this.f$0;
        switch (i) {
            case 0:
                lambda$init$0 = NativeSymbol.lambda$init$0(lambdaConstructor, context, scriptable, scriptable2, objArr);
                return lambda$init$0;
            case 1:
                lambda$init$02 = NativePromise.lambda$init$0(lambdaConstructor, context, scriptable, scriptable2, objArr);
                return lambda$init$02;
            default:
                lambda$init$1 = NativePromise.lambda$init$1(lambdaConstructor, context, scriptable, scriptable2, objArr);
                return lambda$init$1;
        }
    }
}

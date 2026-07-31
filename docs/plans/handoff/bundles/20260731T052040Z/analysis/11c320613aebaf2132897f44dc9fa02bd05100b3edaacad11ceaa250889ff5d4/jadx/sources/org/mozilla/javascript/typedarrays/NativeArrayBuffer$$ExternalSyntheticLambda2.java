package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.Callable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.LambdaConstructor;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.typedarrays.NativeTypedArrayView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeArrayBuffer$$ExternalSyntheticLambda2 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ NativeArrayBuffer$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // org.mozilla.javascript.Callable
    public final Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object lambda$init$0;
        Object lambda$init$16;
        Object lambda$init$17;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                lambda$init$0 = NativeArrayBuffer.lambda$init$0((LambdaConstructor) obj, context, scriptable, scriptable2, objArr);
                return lambda$init$0;
            case 1:
                lambda$init$16 = NativeTypedArrayView.lambda$init$16((NativeTypedArrayView.RealThis) obj, context, scriptable, scriptable2, objArr);
                return lambda$init$16;
            default:
                lambda$init$17 = NativeTypedArrayView.lambda$init$17((NativeTypedArrayView.RealThis) obj, context, scriptable, scriptable2, objArr);
                return lambda$init$17;
        }
    }
}

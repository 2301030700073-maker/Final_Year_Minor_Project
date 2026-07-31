package org.mozilla.javascript;

import org.mozilla.javascript.Interpreter;
import org.mozilla.javascript.NativePromise;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Interpreter$CallFrame$$ExternalSyntheticLambda1 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Interpreter$CallFrame$$ExternalSyntheticLambda1(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // org.mozilla.javascript.Callable
    public final Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object lambda$equals$0;
        Object lambda$reject$0;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                lambda$equals$0 = ((Interpreter.CallFrame) obj).lambda$equals$0(this.f$1, context, scriptable, scriptable2, objArr);
                return lambda$equals$0;
            default:
                lambda$reject$0 = ((NativePromise.PromiseAnyRejector) obj).lambda$reject$0((NativePromise.PromiseElementResolver) this.f$1, context, scriptable, scriptable2, objArr);
                return lambda$reject$0;
        }
    }
}

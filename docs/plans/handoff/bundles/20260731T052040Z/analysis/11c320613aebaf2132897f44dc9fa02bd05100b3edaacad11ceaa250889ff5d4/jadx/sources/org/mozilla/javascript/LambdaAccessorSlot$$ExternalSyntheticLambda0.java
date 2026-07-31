package org.mozilla.javascript;

import java.util.function.BiConsumer;
import org.mozilla.javascript.NativePromise;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LambdaAccessorSlot$$ExternalSyntheticLambda0 implements Callable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ LambdaAccessorSlot$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // org.mozilla.javascript.Callable
    public final Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object lambda$setGetter$0;
        Object lambda$new$0;
        Object lambda$setSetter$1;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                lambda$setGetter$0 = LambdaAccessorSlot.lambda$setGetter$0((java.util.function.Function) obj, context, scriptable, scriptable2, objArr);
                return lambda$setGetter$0;
            case 1:
                lambda$new$0 = ((NativePromise.Capability) obj).lambda$new$0(context, scriptable, scriptable2, objArr);
                return lambda$new$0;
            default:
                lambda$setSetter$1 = LambdaAccessorSlot.lambda$setSetter$1((BiConsumer) obj, context, scriptable, scriptable2, objArr);
                return lambda$setSetter$1;
        }
    }
}

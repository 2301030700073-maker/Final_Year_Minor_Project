package androidx.compose.foundation.gestures;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScrollExtensionsKt$stopScroll$2 extends SuspendLambda implements Function2 {
    int label;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ScrollExtensionsKt$stopScroll$2(2, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ScrollExtensionsKt$stopScroll$2 scrollExtensionsKt$stopScroll$2 = (ScrollExtensionsKt$stopScroll$2) create((ScrollScope) obj, (Continuation) obj2);
        Unit unit = Unit.INSTANCE;
        scrollExtensionsKt$stopScroll$2.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}

package org.jetbrains.compose.resources;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImageResourcesKt$loadImage$2 extends SuspendLambda implements Function1 {
    final /* synthetic */ Function1 $decode;
    final /* synthetic */ String $path;
    final /* synthetic */ ResourceReader $resourceReader;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageResourcesKt$loadImage$2(Function1 function1, ResourceReader resourceReader, String str, Continuation continuation) {
        super(1, continuation);
        this.$decode = function1;
        this.$resourceReader = resourceReader;
        this.$path = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new ImageResourcesKt$loadImage$2(this.$decode, this.$resourceReader, this.$path, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Function1 function1;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Function1 function12 = this.$decode;
            ResourceReader resourceReader = this.$resourceReader;
            String str = this.$path;
            this.L$0 = function12;
            this.label = 1;
            Object read = ((DefaultAndroidResourceReader) resourceReader).read(str);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (read == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = read;
            function1 = function12;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            function1 = (Function1) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return function1.invoke(obj);
    }
}

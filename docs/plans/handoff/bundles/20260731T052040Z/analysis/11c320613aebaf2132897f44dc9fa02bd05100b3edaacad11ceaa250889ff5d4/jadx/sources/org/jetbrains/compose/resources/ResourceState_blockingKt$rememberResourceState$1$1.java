package org.jetbrains.compose.resources;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ResourceState_blockingKt$rememberResourceState$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function2 $block;
    final /* synthetic */ ResourceEnvironment $environment;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceState_blockingKt$rememberResourceState$1$1(Function2 function2, ResourceEnvironment resourceEnvironment, Continuation continuation) {
        super(2, continuation);
        this.$block = function2;
        this.$environment = resourceEnvironment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ResourceState_blockingKt$rememberResourceState$1$1(this.$block, this.$environment, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ResourceState_blockingKt$rememberResourceState$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        Function2 function2 = this.$block;
        ResourceEnvironment resourceEnvironment = this.$environment;
        this.label = 1;
        Object invoke = function2.invoke(resourceEnvironment, this);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return invoke == coroutineSingletons ? coroutineSingletons : invoke;
    }
}

package org.jetbrains.compose.resources;

import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StringResourcesKt$stringResource$str$7$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ List<String> $args;
    final /* synthetic */ StringResource $resource;
    final /* synthetic */ ResourceReader $resourceReader;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringResourcesKt$stringResource$str$7$1(StringResource stringResource, List list, ResourceReader resourceReader, Continuation continuation) {
        super(2, continuation);
        this.$resource = stringResource;
        this.$args = list;
        this.$resourceReader = resourceReader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        StringResourcesKt$stringResource$str$7$1 stringResourcesKt$stringResource$str$7$1 = new StringResourcesKt$stringResource$str$7$1(this.$resource, this.$args, this.$resourceReader, continuation);
        stringResourcesKt$stringResource$str$7$1.L$0 = obj;
        return stringResourcesKt$stringResource$str$7$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StringResourcesKt$stringResource$str$7$1) create((ResourceEnvironment) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResourceEnvironment resourceEnvironment = (ResourceEnvironment) this.L$0;
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
        StringResource stringResource = this.$resource;
        List<String> list = this.$args;
        ResourceReader resourceReader = this.$resourceReader;
        this.L$0 = null;
        this.label = 1;
        Object access$loadString = StringResourcesKt.access$loadString(stringResource, list, resourceReader, resourceEnvironment, this);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return access$loadString == coroutineSingletons ? coroutineSingletons : access$loadString;
    }
}

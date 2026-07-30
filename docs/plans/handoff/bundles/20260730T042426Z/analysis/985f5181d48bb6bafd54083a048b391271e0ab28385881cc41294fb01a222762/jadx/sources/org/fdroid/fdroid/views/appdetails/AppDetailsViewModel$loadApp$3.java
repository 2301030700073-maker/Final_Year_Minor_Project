package org.fdroid.fdroid.views.appdetails;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* compiled from: AppDetailsViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "org.fdroid.fdroid.views.appdetails.AppDetailsViewModel$loadApp$3", f = "AppDetailsViewModel.kt", l = {EACTags.ADDRESS}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class AppDetailsViewModel$loadApp$3 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $packageName;
    int label;
    final /* synthetic */ AppDetailsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppDetailsViewModel$loadApp$3(AppDetailsViewModel appDetailsViewModel, String str, Continuation continuation) {
        super(2, continuation);
        this.this$0 = appDetailsViewModel;
        this.$packageName = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AppDetailsViewModel$loadApp$3(this.this$0, this.$packageName, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((AppDetailsViewModel$loadApp$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object loadRepos;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            AppDetailsViewModel appDetailsViewModel = this.this$0;
            String str = this.$packageName;
            this.label = 1;
            loadRepos = appDetailsViewModel.loadRepos(str, this);
            if (loadRepos == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}

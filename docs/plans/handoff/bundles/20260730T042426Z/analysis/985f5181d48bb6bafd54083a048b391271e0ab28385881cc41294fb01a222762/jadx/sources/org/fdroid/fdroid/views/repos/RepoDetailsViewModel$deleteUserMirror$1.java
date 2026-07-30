package org.fdroid.fdroid.views.repos;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.fdroid.download.Mirror;
import org.fdroid.index.RepoManager;

/* compiled from: RepoDetailsViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "org.fdroid.fdroid.views.repos.RepoDetailsViewModel$deleteUserMirror$1", f = "RepoDetailsViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class RepoDetailsViewModel$deleteUserMirror$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Mirror $mirror;
    int label;
    final /* synthetic */ RepoDetailsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RepoDetailsViewModel$deleteUserMirror$1(RepoDetailsViewModel repoDetailsViewModel, Mirror mirror, Continuation continuation) {
        super(2, continuation);
        this.this$0 = repoDetailsViewModel;
        this.$mirror = mirror;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepoDetailsViewModel$deleteUserMirror$1(this.this$0, this.$mirror, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((RepoDetailsViewModel$deleteUserMirror$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RepoManager repoManager;
        long j;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            repoManager = this.this$0.repoManager;
            j = this.this$0.repoId;
            repoManager.deleteUserMirror(j, this.$mirror);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}

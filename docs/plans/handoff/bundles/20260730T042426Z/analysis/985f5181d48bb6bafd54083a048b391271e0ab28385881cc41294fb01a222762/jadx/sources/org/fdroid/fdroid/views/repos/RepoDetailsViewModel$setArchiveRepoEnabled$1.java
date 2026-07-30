package org.fdroid.fdroid.views.repos;

import android.widget.Toast;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.fdroid.fdroid.R;
import org.fdroid.fdroid.work.RepoUpdateWorker;

/* compiled from: RepoDetailsViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "org.fdroid.fdroid.views.repos.RepoDetailsViewModel$setArchiveRepoEnabled$1", f = "RepoDetailsViewModel.kt", l = {87, 89, 90, 91, 96, 97}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class RepoDetailsViewModel$setArchiveRepoEnabled$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ boolean $enabled;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ RepoDetailsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RepoDetailsViewModel$setArchiveRepoEnabled$1(RepoDetailsViewModel repoDetailsViewModel, boolean z, Continuation continuation) {
        super(2, continuation);
        this.this$0 = repoDetailsViewModel;
        this.$enabled = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepoDetailsViewModel$setArchiveRepoEnabled$1(this.this$0, this.$enabled, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((RepoDetailsViewModel$setArchiveRepoEnabled$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00fe A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0089 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v15 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.fdroid.views.repos.RepoDetailsViewModel$setArchiveRepoEnabled$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* compiled from: RepoDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "org.fdroid.fdroid.views.repos.RepoDetailsViewModel$setArchiveRepoEnabled$1$1", f = "RepoDetailsViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: org.fdroid.fdroid.views.repos.RepoDetailsViewModel$setArchiveRepoEnabled$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ Long $repoId;
        int label;
        final /* synthetic */ RepoDetailsViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RepoDetailsViewModel repoDetailsViewModel, Long l, Continuation continuation) {
            super(2, continuation);
            this.this$0 = repoDetailsViewModel;
            this.$repoId = l;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.this$0, this.$repoId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            RepoUpdateWorker.INSTANCE.updateNow(this.this$0.getApplication(), this.$repoId.longValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: RepoDetailsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "org.fdroid.fdroid.views.repos.RepoDetailsViewModel$setArchiveRepoEnabled$1$2", f = "RepoDetailsViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: org.fdroid.fdroid.views.repos.RepoDetailsViewModel$setArchiveRepoEnabled$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends SuspendLambda implements Function2 {
        int label;
        final /* synthetic */ RepoDetailsViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(RepoDetailsViewModel repoDetailsViewModel, Continuation continuation) {
            super(2, continuation);
            this.this$0 = repoDetailsViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Toast.makeText(this.this$0.getApplication(), R.string.repo_archive_failed, 0).show();
            return Unit.INSTANCE;
        }
    }
}

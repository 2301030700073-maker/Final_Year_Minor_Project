package org.fdroid.fdroid.views.repos;

import android.graphics.Bitmap;
import android.widget.ImageView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: RepoDetailsActivity.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "org.fdroid.fdroid.views.repos.RepoDetailsActivity$onShowQrCodeClicked$1", f = "RepoDetailsActivity.kt", l = {112}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class RepoDetailsActivity$onShowQrCodeClicked$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ImageView $imageView;
    int label;
    final /* synthetic */ RepoDetailsActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RepoDetailsActivity$onShowQrCodeClicked$1(RepoDetailsActivity repoDetailsActivity, ImageView imageView, Continuation continuation) {
        super(2, continuation);
        this.this$0 = repoDetailsActivity;
        this.$imageView = imageView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepoDetailsActivity$onShowQrCodeClicked$1(this.this$0, this.$imageView, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((RepoDetailsActivity$onShowQrCodeClicked$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RepoDetailsViewModel repoDetailsViewModel;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            repoDetailsViewModel = this.this$0.viewModel;
            if (repoDetailsViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                repoDetailsViewModel = null;
            }
            RepoDetailsActivity repoDetailsActivity = this.this$0;
            this.label = 1;
            obj = repoDetailsViewModel.generateQrCode(repoDetailsActivity, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        this.$imageView.setImageBitmap((Bitmap) obj);
        return Unit.INSTANCE;
    }
}

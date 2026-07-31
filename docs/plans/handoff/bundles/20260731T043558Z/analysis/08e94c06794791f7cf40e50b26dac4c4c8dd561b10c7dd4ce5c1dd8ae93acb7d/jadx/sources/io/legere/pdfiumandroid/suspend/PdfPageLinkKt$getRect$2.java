package io.legere.pdfiumandroid.suspend;

import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: PdfPageLinkKt.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroid/graphics/RectF;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "io.legere.pdfiumandroid.suspend.PdfPageLinkKt$getRect$2", f = "PdfPageLinkKt.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
/* loaded from: classes5.dex */
final class PdfPageLinkKt$getRect$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super RectF>, Object> {
    final /* synthetic */ int $linkIndex;
    final /* synthetic */ int $rectIndex;
    int label;
    final /* synthetic */ PdfPageLinkKt this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PdfPageLinkKt$getRect$2(PdfPageLinkKt pdfPageLinkKt, int i, int i2, Continuation<? super PdfPageLinkKt$getRect$2> continuation) {
        super(2, continuation);
        this.this$0 = pdfPageLinkKt;
        this.$linkIndex = i;
        this.$rectIndex = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PdfPageLinkKt$getRect$2(this.this$0, this.$linkIndex, this.$rectIndex, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super RectF> continuation) {
        return ((PdfPageLinkKt$getRect$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return this.this$0.getPageLink().getRect(this.$linkIndex, this.$rectIndex);
    }
}

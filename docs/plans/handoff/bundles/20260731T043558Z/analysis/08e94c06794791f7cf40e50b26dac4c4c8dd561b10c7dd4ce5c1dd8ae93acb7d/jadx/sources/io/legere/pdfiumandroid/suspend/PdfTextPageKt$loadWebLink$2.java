package io.legere.pdfiumandroid.suspend;

import io.legere.pdfiumandroid.PdfPageLink;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: PdfTextPageKt.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lio/legere/pdfiumandroid/suspend/PdfPageLinkKt;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "io.legere.pdfiumandroid.suspend.PdfTextPageKt$loadWebLink$2", f = "PdfTextPageKt.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
/* loaded from: classes5.dex */
final class PdfTextPageKt$loadWebLink$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PdfPageLinkKt>, Object> {
    int label;
    final /* synthetic */ PdfTextPageKt this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PdfTextPageKt$loadWebLink$2(PdfTextPageKt pdfTextPageKt, Continuation<? super PdfTextPageKt$loadWebLink$2> continuation) {
        super(2, continuation);
        this.this$0 = pdfTextPageKt;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PdfTextPageKt$loadWebLink$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PdfPageLinkKt> continuation) {
        return ((PdfTextPageKt$loadWebLink$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineDispatcher coroutineDispatcher;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            PdfPageLink loadWebLink = this.this$0.getPage().loadWebLink();
            coroutineDispatcher = this.this$0.dispatcher;
            return new PdfPageLinkKt(loadWebLink, coroutineDispatcher);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}

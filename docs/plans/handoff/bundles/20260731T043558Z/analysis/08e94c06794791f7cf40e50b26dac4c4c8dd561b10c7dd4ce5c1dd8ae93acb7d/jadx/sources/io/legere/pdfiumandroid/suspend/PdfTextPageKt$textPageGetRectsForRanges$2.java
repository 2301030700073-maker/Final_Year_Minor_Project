package io.legere.pdfiumandroid.suspend;

import io.legere.pdfiumandroid.WordRangeRect;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: PdfTextPageKt.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lio/legere/pdfiumandroid/WordRangeRect;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "io.legere.pdfiumandroid.suspend.PdfTextPageKt$textPageGetRectsForRanges$2", f = "PdfTextPageKt.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
/* loaded from: classes5.dex */
final class PdfTextPageKt$textPageGetRectsForRanges$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends WordRangeRect>>, Object> {
    final /* synthetic */ int[] $wordRanges;
    int label;
    final /* synthetic */ PdfTextPageKt this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PdfTextPageKt$textPageGetRectsForRanges$2(PdfTextPageKt pdfTextPageKt, int[] iArr, Continuation<? super PdfTextPageKt$textPageGetRectsForRanges$2> continuation) {
        super(2, continuation);
        this.this$0 = pdfTextPageKt;
        this.$wordRanges = iArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PdfTextPageKt$textPageGetRectsForRanges$2(this.this$0, this.$wordRanges, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends WordRangeRect>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super List<WordRangeRect>>) continuation);
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<WordRangeRect>> continuation) {
        return ((PdfTextPageKt$textPageGetRectsForRanges$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return this.this$0.getPage().textPageGetRectsForRanges(this.$wordRanges);
    }
}

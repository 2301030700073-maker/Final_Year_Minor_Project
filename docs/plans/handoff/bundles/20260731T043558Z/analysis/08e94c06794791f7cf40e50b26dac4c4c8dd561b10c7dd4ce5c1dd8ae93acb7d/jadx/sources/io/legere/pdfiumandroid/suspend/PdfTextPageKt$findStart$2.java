package io.legere.pdfiumandroid.suspend;

import io.legere.pdfiumandroid.FindFlags;
import io.legere.pdfiumandroid.FindResult;
import java.util.Set;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lio/legere/pdfiumandroid/suspend/FindResultKt;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "io.legere.pdfiumandroid.suspend.PdfTextPageKt$findStart$2", f = "PdfTextPageKt.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
/* loaded from: classes5.dex */
final class PdfTextPageKt$findStart$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super FindResultKt>, Object> {
    final /* synthetic */ String $findWhat;
    final /* synthetic */ Set<FindFlags> $flags;
    final /* synthetic */ int $startIndex;
    int label;
    final /* synthetic */ PdfTextPageKt this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PdfTextPageKt$findStart$2(PdfTextPageKt pdfTextPageKt, String str, Set<? extends FindFlags> set, int i, Continuation<? super PdfTextPageKt$findStart$2> continuation) {
        super(2, continuation);
        this.this$0 = pdfTextPageKt;
        this.$findWhat = str;
        this.$flags = set;
        this.$startIndex = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PdfTextPageKt$findStart$2(this.this$0, this.$findWhat, this.$flags, this.$startIndex, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super FindResultKt> continuation) {
        return ((PdfTextPageKt$findStart$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineDispatcher coroutineDispatcher;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        FindResult findStart = this.this$0.getPage().findStart(this.$findWhat, this.$flags, this.$startIndex);
        if (findStart == null) {
            return null;
        }
        coroutineDispatcher = this.this$0.dispatcher;
        return new FindResultKt(findStart, coroutineDispatcher);
    }
}

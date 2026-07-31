package io.legere.pdfiumandroid.suspend;

import androidx.media3.extractor.ts.TsExtractor;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: PdfDocumentKt.kt */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "io.legere.pdfiumandroid.suspend.PdfDocumentKt", f = "PdfDocumentKt.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, l = {TsExtractor.TS_STREAM_TYPE_AC4, TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "renderPages", n = {"surface", "pages", "matrices", "clipRects", "renderCoroutinesDispatcher", "$this$withLock_u24default$iv", "renderAnnot", "textMask", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "surface", "pages", "matrices", "clipRects", "renderCoroutinesDispatcher", "$this$withLock_u24default$iv", "renderAnnot", "textMask", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "$i$a$-withLock$default-PdfDocumentKt$renderPages$2"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "Z$1", "I$0", "I$1", "I$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "Z$1", "I$0", "I$1", "I$2", "I$3"}, v = 1)
/* loaded from: classes5.dex */
final class PdfDocumentKt$renderPages$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    boolean Z$0;
    boolean Z$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PdfDocumentKt this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PdfDocumentKt$renderPages$1(PdfDocumentKt pdfDocumentKt, Continuation<? super PdfDocumentKt$renderPages$1> continuation) {
        super(continuation);
        this.this$0 = pdfDocumentKt;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.renderPages(null, null, null, null, false, false, 0, 0, null, this);
    }
}

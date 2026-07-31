package io.legere.pdfiumandroid.suspend;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: PdfPageKt.kt */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "io.legere.pdfiumandroid.suspend.PdfPageKt", f = "PdfPageKt.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}, l = {400, 167, 181, 194}, m = "renderPage", n = {"surface", "retValue", "$this$withLock_u24default$iv", "startX", "startY", "drawSizeX", "drawSizeY", "renderAnnot", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "surface", "retValue", "$this$withLock_u24default$iv", "sizes", "pointers", "startX", "startY", "drawSizeX", "drawSizeY", "renderAnnot", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "$i$a$-withLock$default-PdfPageKt$renderPage$2", "surface", "retValue", "$this$withLock_u24default$iv", "sizes", "pointers", "startX", "startY", "drawSizeX", "drawSizeY", "renderAnnot", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "$i$a$-withLock$default-PdfPageKt$renderPage$2", "nativeWindow", "bufferPtr", "surface", "retValue", "$this$withLock_u24default$iv", "sizes", "pointers", "startX", "startY", "drawSizeX", "drawSizeY", "renderAnnot", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "$i$a$-withLock$default-PdfPageKt$renderPage$2", "nativeWindow", "bufferPtr"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "I$2", "I$3", "Z$0", "I$4", "I$5", "I$6", "L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "I$1", "I$2", "I$3", "Z$0", "I$4", "I$5", "I$6", "I$7", "L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "I$1", "I$2", "I$3", "Z$0", "I$4", "I$5", "I$6", "I$7", "J$0", "J$1", "L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "I$1", "I$2", "I$3", "Z$0", "I$4", "I$5", "I$6", "I$7", "J$0", "J$1"}, v = 1)
/* loaded from: classes5.dex */
final class PdfPageKt$renderPage$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    int I$4;
    int I$5;
    int I$6;
    int I$7;
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PdfPageKt this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PdfPageKt$renderPage$1(PdfPageKt pdfPageKt, Continuation<? super PdfPageKt$renderPage$1> continuation) {
        super(continuation);
        this.this$0 = pdfPageKt;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.renderPage(null, 0, 0, 0, 0, false, 0, 0, this);
    }
}

package io.legere.pdfiumandroid.suspend;

import com.facebook.imageutils.JfifUtil;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: PdfPageKt.kt */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "io.legere.pdfiumandroid.suspend.PdfPageKt", f = "PdfPageKt.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3}, l = {400, JfifUtil.MARKER_SOS, 235, 249}, m = "renderPage", n = {"surface", "matrix", "clipRect", "retValue", "$this$withLock_u24default$iv", "renderAnnot", "textMask", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "surface", "matrix", "clipRect", "retValue", "$this$withLock_u24default$iv", "sizes", "pointers", "renderAnnot", "textMask", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "$i$a$-withLock$default-PdfPageKt$renderPage$4", "surface", "matrix", "clipRect", "retValue", "$this$withLock_u24default$iv", "sizes", "pointers", "renderAnnot", "textMask", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "$i$a$-withLock$default-PdfPageKt$renderPage$4", "nativeWindow", "bufferPtr", "surfaceWidth", "surfaceHeight", "surface", "matrix", "clipRect", "retValue", "$this$withLock_u24default$iv", "sizes", "pointers", "renderAnnot", "textMask", "canvasColor", "pageBackgroundColor", "$i$f$withLock", "$i$a$-withLock$default-PdfPageKt$renderPage$4", "nativeWindow", "bufferPtr", "surfaceWidth", "surfaceHeight"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "Z$0", "Z$1", "I$0", "I$1", "I$2", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "Z$0", "Z$1", "I$0", "I$1", "I$2", "I$3", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "Z$0", "Z$1", "I$0", "I$1", "I$2", "I$3", "J$0", "J$1", "I$4", "I$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "Z$0", "Z$1", "I$0", "I$1", "I$2", "I$3", "J$0", "J$1", "I$4", "I$5"}, v = 1)
/* loaded from: classes5.dex */
final class PdfPageKt$renderPage$3 extends ContinuationImpl {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    int I$4;
    int I$5;
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    boolean Z$0;
    boolean Z$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PdfPageKt this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PdfPageKt$renderPage$3(PdfPageKt pdfPageKt, Continuation<? super PdfPageKt$renderPage$3> continuation) {
        super(continuation);
        this.this$0 = pdfPageKt;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.renderPage(null, null, null, false, false, 0, 0, this);
    }
}

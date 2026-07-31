package io.legere.pdfiumandroid.suspend;

import io.legere.pdfiumandroid.Logger;
import io.legere.pdfiumandroid.PdfDocument;
import io.legere.pdfiumandroid.PdfWriteCallback;
import java.io.Closeable;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: PdfDocumentKt.kt */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\fJ\u000e\u0010\r\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\fJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0012J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0012J$\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u00162\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0019Jp\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00100\u00162\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u00162\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u00162\b\b\u0002\u0010#\u001a\u00020\u001b2\b\b\u0002\u0010$\u001a\u00020\u001b2\b\b\u0002\u0010%\u001a\u00020\u000b2\b\b\u0002\u0010&\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\u0005H\u0086@¢\u0006\u0002\u0010(J\u000e\u0010)\u001a\u00020*H\u0086@¢\u0006\u0002\u0010\fJ\u0014\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u0016H\u0086@¢\u0006\u0002\u0010\fJ\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0010H\u0087@¢\u0006\u0002\u00100J$\u00101\u001a\b\u0012\u0004\u0012\u00020.0\u00162\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0019J\u0016\u00102\u001a\u00020\u001b2\u0006\u00103\u001a\u000204H\u0086@¢\u0006\u0002\u00105J\b\u00106\u001a\u00020\u0014H\u0016J\u0006\u00107\u001a\u00020\u001bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;", "Ljava/io/Closeable;", "document", "Lio/legere/pdfiumandroid/PdfDocument;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "(Lio/legere/pdfiumandroid/PdfDocument;Lkotlinx/coroutines/CoroutineDispatcher;)V", "getDocument", "()Lio/legere/pdfiumandroid/PdfDocument;", "getPageCount", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPageCharCounts", "", "openPage", "Lio/legere/pdfiumandroid/suspend/PdfPageKt;", "pageIndex", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deletePage", "", "openPages", "", "fromIndex", "toIndex", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "renderPages", "", "surface", "Landroid/view/Surface;", "pages", "matrices", "Landroid/graphics/Matrix;", "clipRects", "Landroid/graphics/RectF;", "renderAnnot", "textMask", "canvasColor", "pageBackgroundColor", "renderCoroutinesDispatcher", "(Landroid/view/Surface;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZIILkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDocumentMeta", "Lio/legere/pdfiumandroid/PdfDocument$Meta;", "getTableOfContents", "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;", "openTextPage", "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;", "page", "(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "openTextPages", "saveAsCopy", "callback", "Lio/legere/pdfiumandroid/PdfWriteCallback;", "(Lio/legere/pdfiumandroid/PdfWriteCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "safeClose", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PdfDocumentKt implements Closeable {
    private final CoroutineDispatcher dispatcher;
    private final PdfDocument document;

    public PdfDocumentKt(PdfDocument document, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(document, "document");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.document = document;
        this.dispatcher = dispatcher;
    }

    public final PdfDocument getDocument() {
        return this.document;
    }

    public final Object getPageCount(Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$getPageCount$2(this, null), continuation);
    }

    public final Object getPageCharCounts(Continuation<? super int[]> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$getPageCharCounts$2(this, null), continuation);
    }

    public final Object openPage(int i, Continuation<? super PdfPageKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$openPage$2(this, i, null), continuation);
    }

    public final Object deletePage(int i, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$deletePage$2(this, i, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    public final Object openPages(int i, int i2, Continuation<? super List<PdfPageKt>> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$openPages$2(this, i, i2, null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x015d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object renderPages(android.view.Surface r29, java.util.List<io.legere.pdfiumandroid.suspend.PdfPageKt> r30, java.util.List<? extends android.graphics.Matrix> r31, java.util.List<? extends android.graphics.RectF> r32, boolean r33, boolean r34, int r35, int r36, kotlinx.coroutines.CoroutineDispatcher r37, kotlin.coroutines.Continuation<? super java.lang.Boolean> r38) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.suspend.PdfDocumentKt.renderPages(android.view.Surface, java.util.List, java.util.List, java.util.List, boolean, boolean, int, int, kotlinx.coroutines.CoroutineDispatcher, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object getDocumentMeta(Continuation<? super PdfDocument.Meta> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$getDocumentMeta$2(this, null), continuation);
    }

    public final Object getTableOfContents(Continuation<? super List<PdfDocument.Bookmark>> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$getTableOfContents$2(this, null), continuation);
    }

    @Deprecated(message = "use PdfPageKt.openTextPage", replaceWith = @ReplaceWith(expression = "page.openTextPage()", imports = {}))
    public final Object openTextPage(PdfPageKt pdfPageKt, Continuation<? super PdfTextPageKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$openTextPage$2(this, pdfPageKt, null), continuation);
    }

    public final Object openTextPages(int i, int i2, Continuation<? super List<PdfTextPageKt>> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$openTextPages$2(this, i, i2, null), continuation);
    }

    public final Object saveAsCopy(PdfWriteCallback pdfWriteCallback, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfDocumentKt$saveAsCopy$2(this, pdfWriteCallback, null), continuation);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.document.close();
    }

    public final boolean safeClose() {
        try {
            this.document.close();
            return true;
        } catch (IllegalStateException e) {
            Logger.INSTANCE.e("PdfDocumentKt", e, "PdfDocumentKt.safeClose");
            return false;
        }
    }
}

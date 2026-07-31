package io.legere.pdfiumandroid.suspend;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import io.legere.pdfiumandroid.Logger;
import io.legere.pdfiumandroid.PdfDocument;
import io.legere.pdfiumandroid.PdfPage;
import io.legere.pdfiumandroid.util.Size;
import java.io.Closeable;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: PdfPageKt.kt */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\fJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0012\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\fJ\u000e\u0010\u0013\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\fJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0086@¢\u0006\u0002\u0010\fJ\u000e\u0010\u0016\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\fJ\u000e\u0010\u0017\u001a\u00020\u0018H\u0086@¢\u0006\u0002\u0010\fJ\u000e\u0010\u0019\u001a\u00020\u0018H\u0086@¢\u0006\u0002\u0010\fJ\u000e\u0010\u001a\u001a\u00020\u0018H\u0086@¢\u0006\u0002\u0010\fJ\u000e\u0010\u001b\u001a\u00020\u0018H\u0086@¢\u0006\u0002\u0010\fJ\u000e\u0010\u001c\u001a\u00020\u0018H\u0086@¢\u0006\u0002\u0010\fJ\u000e\u0010\u001d\u001a\u00020\u0018H\u0086@¢\u0006\u0002\u0010\fJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u0010JV\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u000e2\b\b\u0002\u0010(\u001a\u00020!2\b\b\u0002\u0010)\u001a\u00020\u000e2\b\b\u0002\u0010*\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010+JP\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010,\u001a\u00020\u00152\u0006\u0010-\u001a\u00020\u00182\b\b\u0002\u0010(\u001a\u00020!2\b\b\u0002\u0010.\u001a\u00020!2\b\b\u0002\u0010)\u001a\u00020\u000e2\b\b\u0002\u0010*\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010/J^\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u000e2\b\b\u0002\u0010(\u001a\u00020!2\b\b\u0002\u0010.\u001a\u00020!2\b\b\u0002\u0010)\u001a\u00020\u000e2\b\b\u0002\u0010*\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u00104JP\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u0001032\u0006\u0010,\u001a\u00020\u00152\u0006\u0010-\u001a\u00020\u00182\b\b\u0002\u0010(\u001a\u00020!2\b\b\u0002\u0010.\u001a\u00020!2\b\b\u0002\u0010)\u001a\u00020\u000e2\b\b\u0002\u0010*\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u00105J\u0014\u00106\u001a\b\u0012\u0004\u0012\u00020807H\u0086@¢\u0006\u0002\u0010\fJF\u00109\u001a\u00020:2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020?H\u0086@¢\u0006\u0002\u0010AJF\u0010B\u001a\u00020C2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010D\u001a\u00020\u000e2\u0006\u0010E\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010FJ>\u0010G\u001a\u00020H2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020\u0018H\u0086@¢\u0006\u0002\u0010JJ>\u0010K\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u000e2\u0006\u0010I\u001a\u00020HH\u0086@¢\u0006\u0002\u0010LJ\b\u0010M\u001a\u000201H\u0016J\u0006\u0010N\u001a\u00020!R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006O"}, d2 = {"Lio/legere/pdfiumandroid/suspend/PdfPageKt;", "Ljava/io/Closeable;", "page", "Lio/legere/pdfiumandroid/PdfPage;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "(Lio/legere/pdfiumandroid/PdfPage;Lkotlinx/coroutines/CoroutineDispatcher;)V", "getPage", "()Lio/legere/pdfiumandroid/PdfPage;", "openTextPage", "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPageWidth", "", "screenDpi", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPageHeight", "getPageWidthPoint", "getPageHeightPoint", "getPageMatrix", "Landroid/graphics/Matrix;", "getPageRotation", "getPageCropBox", "Landroid/graphics/RectF;", "getPageMediaBox", "getPageBleedBox", "getPageTrimBox", "getPageArtBox", "getPageBoundingBox", "getPageSize", "Lio/legere/pdfiumandroid/util/Size;", "renderPage", "", "surface", "Landroid/view/Surface;", "startX", "startY", "drawSizeX", "drawSizeY", "renderAnnot", "canvasColor", "pageBackgroundColor", "(Landroid/view/Surface;IIIIZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "matrix", "clipRect", "textMask", "(Landroid/view/Surface;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "renderPageBitmap", "", "bitmap", "Landroid/graphics/Bitmap;", "(Landroid/graphics/Bitmap;IIIIZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPageLinks", "", "Lio/legere/pdfiumandroid/PdfDocument$Link;", "mapPageCoordsToDevice", "Landroid/graphics/Point;", "sizeX", "sizeY", "rotate", "pageX", "", "pageY", "(IIIIIDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "mapDeviceCoordsToPage", "Landroid/graphics/PointF;", "deviceX", "deviceY", "(IIIIIIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "mapRectToDevice", "Landroid/graphics/Rect;", "coords", "(IIIIILandroid/graphics/RectF;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "mapRectToPage", "(IIIIILandroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "safeClose", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PdfPageKt implements Closeable {
    private final CoroutineDispatcher dispatcher;
    private final PdfPage page;

    public PdfPageKt(PdfPage page, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(page, "page");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.page = page;
        this.dispatcher = dispatcher;
    }

    public final PdfPage getPage() {
        return this.page;
    }

    public final Object openTextPage(Continuation<? super PdfTextPageKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$openTextPage$2(this, null), continuation);
    }

    public final Object getPageWidth(int i, Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageWidth$2(this, i, null), continuation);
    }

    public final Object getPageHeight(int i, Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageHeight$2(this, i, null), continuation);
    }

    public final Object getPageWidthPoint(Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageWidthPoint$2(this, null), continuation);
    }

    public final Object getPageHeightPoint(Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageHeightPoint$2(this, null), continuation);
    }

    public final Object getPageMatrix(Continuation<? super Matrix> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageMatrix$2(this, null), continuation);
    }

    public final Object getPageRotation(Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageRotation$2(this, null), continuation);
    }

    public final Object getPageCropBox(Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageCropBox$2(this, null), continuation);
    }

    public final Object getPageMediaBox(Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageMediaBox$2(this, null), continuation);
    }

    public final Object getPageBleedBox(Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageBleedBox$2(this, null), continuation);
    }

    public final Object getPageTrimBox(Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageTrimBox$2(this, null), continuation);
    }

    public final Object getPageArtBox(Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageArtBox$2(this, null), continuation);
    }

    public final Object getPageBoundingBox(Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageBoundingBox$2(this, null), continuation);
    }

    public final Object getPageSize(int i, Continuation<? super Size> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageSize$2(this, i, null), continuation);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:0|1|(2:3|(11:5|6|(1:(4:(1:(1:(6:12|13|14|15|16|17)(2:24|25))(7:26|27|28|29|30|31|(1:33)(4:34|15|16|17)))(14:42|43|44|45|46|47|48|49|50|(1:73)(2:56|(1:58)(5:65|66|67|68|(1:70)(4:71|30|31|(0)(0))))|59|60|61|62)|21|22|23)(1:82))(2:100|(1:102)(1:103))|83|84|85|86|87|88|89|(1:91)(12:92|46|47|48|49|50|(1:52)|73|59|60|61|62)))|104|6|(0)(0)|83|84|85|86|87|88|89|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0332, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0333, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0337, code lost:
    
        r2 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0335, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0336, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0309 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01d1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object renderPage(android.view.Surface r35, int r36, int r37, int r38, int r39, boolean r40, int r41, int r42, kotlin.coroutines.Continuation<? super java.lang.Boolean> r43) {
        /*
            Method dump skipped, instructions count: 828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.suspend.PdfPageKt.renderPage(android.view.Surface, int, int, int, int, boolean, int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:0|1|(2:3|(12:5|6|(1:(4:(1:(1:(6:12|13|14|15|16|17)(2:24|25))(7:26|27|28|29|30|31|(1:33)(4:34|15|16|17)))(14:42|43|44|45|46|47|48|49|50|(1:73)(2:56|(1:58)(5:65|66|67|68|(1:70)(4:71|30|31|(0)(0))))|59|60|61|62)|21|22|23)(1:82))(2:101|(1:103)(1:104))|83|84|85|86|87|88|89|90|(1:92)(12:93|46|47|48|49|50|(1:52)|73|59|60|61|62)))|105|6|(0)(0)|83|84|85|86|87|88|89|90|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x036a, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0366, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0367, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x036b, code lost:
    
        r1 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0369, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x033e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01d1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object renderPage(android.view.Surface r47, android.graphics.Matrix r48, android.graphics.RectF r49, boolean r50, boolean r51, int r52, int r53, kotlin.coroutines.Continuation<? super java.lang.Boolean> r54) {
        /*
            Method dump skipped, instructions count: 880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.suspend.PdfPageKt.renderPage(android.view.Surface, android.graphics.Matrix, android.graphics.RectF, boolean, boolean, int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object renderPageBitmap(Bitmap bitmap, int i, int i2, int i3, int i4, boolean z, boolean z2, int i5, int i6, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(this.dispatcher, new PdfPageKt$renderPageBitmap$2(this, bitmap, i, i2, i3, i4, z, z2, i5, i6, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    public final Object renderPageBitmap(Bitmap bitmap, Matrix matrix, RectF rectF, boolean z, boolean z2, int i, int i2, Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(this.dispatcher, new PdfPageKt$renderPageBitmap$4(this, bitmap, matrix, rectF, z, z2, i, i2, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    public final Object getPageLinks(Continuation<? super List<PdfDocument.Link>> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$getPageLinks$2(this, null), continuation);
    }

    public final Object mapPageCoordsToDevice(int i, int i2, int i3, int i4, int i5, double d, double d2, Continuation<? super Point> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$mapPageCoordsToDevice$2(this, i, i2, i3, i4, i5, d, d2, null), continuation);
    }

    public final Object mapDeviceCoordsToPage(int i, int i2, int i3, int i4, int i5, int i6, int i7, Continuation<? super PointF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$mapDeviceCoordsToPage$2(this, i, i2, i3, i4, i5, i6, i7, null), continuation);
    }

    public final Object mapRectToDevice(int i, int i2, int i3, int i4, int i5, RectF rectF, Continuation<? super Rect> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$mapRectToDevice$2(this, i, i2, i3, i4, i5, rectF, null), continuation);
    }

    public final Object mapRectToPage(int i, int i2, int i3, int i4, int i5, Rect rect, Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageKt$mapRectToPage$2(this, i, i2, i3, i4, i5, rect, null), continuation);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.page.close();
    }

    public final boolean safeClose() {
        try {
            this.page.close();
            return true;
        } catch (IllegalStateException e) {
            Logger.INSTANCE.e("PdfPageKt", e, "PdfPageKt.safeClose");
            return false;
        }
    }
}

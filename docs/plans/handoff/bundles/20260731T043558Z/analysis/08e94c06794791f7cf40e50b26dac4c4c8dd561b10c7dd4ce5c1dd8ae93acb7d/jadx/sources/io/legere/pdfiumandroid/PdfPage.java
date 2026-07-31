package io.legere.pdfiumandroid;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.Surface;
import dalvik.annotation.optimization.FastNative;
import io.legere.pdfiumandroid.PdfDocument;
import io.legere.pdfiumandroid.util.Size;
import java.io.Closeable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfPage.kt */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 R2\u00020\u0001:\u0001RB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005J\u0006\u0010\u001e\u001a\u00020\u0005J\u0006\u0010\u001f\u001a\u00020\u0005J\b\u0010 \u001a\u0004\u0018\u00010!J\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020$J\u0006\u0010&\u001a\u00020$J\u0006\u0010'\u001a\u00020$J\u0006\u0010(\u001a\u00020$J\u0006\u0010)\u001a\u00020$J\u000e\u0010*\u001a\u00020+2\u0006\u0010\u001c\u001a\u00020\u0005JL\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\b\b\u0002\u00102\u001a\u00020\u00142\b\b\u0003\u00103\u001a\u00020\u00052\b\b\u0003\u00104\u001a\u00020\u0005JV\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\u0006\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020$2\b\b\u0002\u00102\u001a\u00020\u00142\b\b\u0002\u00107\u001a\u00020\u00142\b\b\u0002\u00103\u001a\u00020\u00052\b\b\u0002\u00104\u001a\u00020\u0005JF\u0010,\u001a\u00020\u00142\u0006\u00108\u001a\u0002092\u0006\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020$2\b\b\u0002\u00102\u001a\u00020\u00142\b\b\u0002\u00107\u001a\u00020\u00142\b\b\u0002\u00103\u001a\u00020\u00052\b\b\u0002\u00104\u001a\u00020\u0005JX\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010=2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\b\b\u0002\u00102\u001a\u00020\u00142\b\b\u0002\u00107\u001a\u00020\u00142\b\b\u0002\u00103\u001a\u00020\u00052\b\b\u0002\u00104\u001a\u00020\u0005JH\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010=2\u0006\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020$2\b\b\u0002\u00102\u001a\u00020\u00142\b\b\u0002\u00107\u001a\u00020\u00142\b\b\u0002\u00103\u001a\u00020\u00052\b\b\u0002\u00104\u001a\u00020\u0005J\f\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?J>\u0010A\u001a\u00020B2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020GJ>\u0010I\u001a\u00020J2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010K\u001a\u00020\u00052\u0006\u0010L\u001a\u00020\u0005J6\u0010M\u001a\u00020N2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010O\u001a\u00020$J6\u0010P\u001a\u00020$2\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010O\u001a\u00020NJ\b\u0010Q\u001a\u00020;H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006S"}, d2 = {"Lio/legere/pdfiumandroid/PdfPage;", "Ljava/io/Closeable;", "doc", "Lio/legere/pdfiumandroid/PdfDocument;", "pageIndex", "", "pagePtr", "", "pageMap", "", "Lio/legere/pdfiumandroid/PdfDocument$PageCount;", "<init>", "(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V", "getDoc", "()Lio/legere/pdfiumandroid/PdfDocument;", "getPageIndex", "()I", "getPagePtr", "()J", "isClosed", "", "isClosed$pdfiumandroid_release", "()Z", "setClosed$pdfiumandroid_release", "(Z)V", "openTextPage", "Lio/legere/pdfiumandroid/PdfTextPage;", "getPageWidth", "screenDpi", "getPageHeight", "getPageWidthPoint", "getPageHeightPoint", "getPageMatrix", "Landroid/graphics/Matrix;", "getPageRotation", "getPageCropBox", "Landroid/graphics/RectF;", "getPageMediaBox", "getPageBleedBox", "getPageTrimBox", "getPageArtBox", "getPageBoundingBox", "getPageSize", "Lio/legere/pdfiumandroid/util/Size;", "renderPage", "bufferPtr", "startX", "startY", "drawSizeX", "drawSizeY", "renderAnnot", "canvasColor", "pageBackgroundColor", "matrix", "clipRect", "textMask", "surface", "Landroid/view/Surface;", "renderPageBitmap", "", "bitmap", "Landroid/graphics/Bitmap;", "getPageLinks", "", "Lio/legere/pdfiumandroid/PdfDocument$Link;", "mapPageCoordsToDevice", "Landroid/graphics/Point;", "sizeX", "sizeY", "rotate", "pageX", "", "pageY", "mapDeviceCoordsToPage", "Landroid/graphics/PointF;", "deviceX", "deviceY", "mapRectToDevice", "Landroid/graphics/Rect;", "coords", "mapRectToPage", "close", "Companion", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PdfPage implements Closeable {
    public static final int BOTTOM = 3;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int LEFT = 0;
    public static final int RIGHT = 2;
    private static final String TAG = "PdfPage";
    public static final int TOP = 1;
    private final PdfDocument doc;
    private volatile boolean isClosed;
    private final int pageIndex;
    private final Map<Integer, PdfDocument.PageCount> pageMap;
    private final long pagePtr;

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void nativeClosePage(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void nativeClosePages(long[] jArr);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native float[] nativeDeviceCoordsToPage(long j, int i, int i2, int i3, int i4, int i5, int i6, int i7);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native int nativeGetDestPageIndex(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native float[] nativeGetLinkRect(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native String nativeGetLinkURI(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native float[] nativeGetPageArtBox(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native float[] nativeGetPageBleedBox(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native float[] nativeGetPageBoundingBox(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native float[] nativeGetPageCropBox(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int nativeGetPageHeightPixel(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int nativeGetPageHeightPoint(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native long[] nativeGetPageLinks(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native float[] nativeGetPageMatrix(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native float[] nativeGetPageMediaBox(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int nativeGetPageRotation(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native int[] nativeGetPageSizeByIndex(long j, int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native float[] nativeGetPageTrimBox(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int nativeGetPageWidthPixel(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int nativeGetPageWidthPoint(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native boolean nativeLockSurface(Surface surface, int[] iArr, long[] jArr);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int[] nativePageCoordsToDevice(long j, int i, int i2, int i3, int i4, int i5, double d, double d2);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native boolean nativeRenderPage(long j, long j2, int i, int i2, int i3, int i4, boolean z, int i5, int i6);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void nativeRenderPageBitmap(long j, long j2, Bitmap bitmap, int i, int i2, int i3, int i4, boolean z, boolean z2, int i5, int i6);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void nativeRenderPageBitmapWithMatrix(long j, Bitmap bitmap, float[] fArr, float[] fArr2, boolean z, boolean z2, int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native boolean nativeRenderPageSurface(long j, Surface surface, int i, int i2, boolean z, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native boolean nativeRenderPageSurfaceWithMatrix(long j, Surface surface, float[] fArr, float[] fArr2, boolean z, boolean z2, int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native boolean nativeRenderPageWithMatrix(long j, long j2, int i, int i2, float[] fArr, float[] fArr2, boolean z, boolean z2, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void nativeUnlockSurface(long[] jArr);

    public PdfPage(PdfDocument doc, int i, long j, Map<Integer, PdfDocument.PageCount> pageMap) {
        Intrinsics.checkNotNullParameter(doc, "doc");
        Intrinsics.checkNotNullParameter(pageMap, "pageMap");
        this.doc = doc;
        this.pageIndex = i;
        this.pagePtr = j;
        this.pageMap = pageMap;
    }

    public final PdfDocument getDoc() {
        return this.doc;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    public final long getPagePtr() {
        return this.pagePtr;
    }

    /* renamed from: isClosed$pdfiumandroid_release, reason: from getter */
    public final boolean getIsClosed() {
        return this.isClosed;
    }

    public final void setClosed$pdfiumandroid_release(boolean z) {
        this.isClosed = z;
    }

    public final PdfTextPage openTextPage() {
        return this.doc.openTextPage(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[Catch: all -> 0x002a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:10:0x0017, B:15:0x0020), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getPageWidth(int r5) {
        /*
            r4 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r4.isClosed     // Catch: java.lang.Throwable -> L2a
            if (r1 != 0) goto L16
            io.legere.pdfiumandroid.PdfDocument r1 = r4.doc     // Catch: java.lang.Throwable -> L2a
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L14
            goto L16
        L14:
            r1 = 0
            goto L17
        L16:
            r1 = 1
        L17:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L20
            monitor-exit(r0)
            r5 = -1
            return r5
        L20:
            io.legere.pdfiumandroid.PdfPage$Companion r1 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L2a
            long r2 = r4.pagePtr     // Catch: java.lang.Throwable -> L2a
            int r5 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeGetPageWidthPixel(r1, r2, r5)     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r0)
            return r5
        L2a:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.getPageWidth(int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[Catch: all -> 0x002a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:10:0x0017, B:15:0x0020), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getPageHeight(int r5) {
        /*
            r4 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r4.isClosed     // Catch: java.lang.Throwable -> L2a
            if (r1 != 0) goto L16
            io.legere.pdfiumandroid.PdfDocument r1 = r4.doc     // Catch: java.lang.Throwable -> L2a
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L14
            goto L16
        L14:
            r1 = 0
            goto L17
        L16:
            r1 = 1
        L17:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L20
            monitor-exit(r0)
            r5 = -1
            return r5
        L20:
            io.legere.pdfiumandroid.PdfPage$Companion r1 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L2a
            long r2 = r4.pagePtr     // Catch: java.lang.Throwable -> L2a
            int r5 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeGetPageHeightPixel(r1, r2, r5)     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r0)
            return r5
        L2a:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.getPageHeight(int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[Catch: all -> 0x002a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:10:0x0017, B:15:0x0020), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getPageWidthPoint() {
        /*
            r4 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r4.isClosed     // Catch: java.lang.Throwable -> L2a
            if (r1 != 0) goto L16
            io.legere.pdfiumandroid.PdfDocument r1 = r4.doc     // Catch: java.lang.Throwable -> L2a
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L14
            goto L16
        L14:
            r1 = 0
            goto L17
        L16:
            r1 = 1
        L17:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L20
            monitor-exit(r0)
            r0 = -1
            return r0
        L20:
            io.legere.pdfiumandroid.PdfPage$Companion r1 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L2a
            long r2 = r4.pagePtr     // Catch: java.lang.Throwable -> L2a
            int r1 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeGetPageWidthPoint(r1, r2)     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r0)
            return r1
        L2a:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.getPageWidthPoint():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[Catch: all -> 0x002a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:10:0x0017, B:15:0x0020), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getPageHeightPoint() {
        /*
            r4 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r4.isClosed     // Catch: java.lang.Throwable -> L2a
            if (r1 != 0) goto L16
            io.legere.pdfiumandroid.PdfDocument r1 = r4.doc     // Catch: java.lang.Throwable -> L2a
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L14
            goto L16
        L14:
            r1 = 0
            goto L17
        L16:
            r1 = 1
        L17:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L20
            monitor-exit(r0)
            r0 = -1
            return r0
        L20:
            io.legere.pdfiumandroid.PdfPage$Companion r1 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L2a
            long r2 = r4.pagePtr     // Catch: java.lang.Throwable -> L2a
            int r1 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeGetPageHeightPoint(r1, r2)     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r0)
            return r1
        L2a:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.getPageHeightPoint():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002e A[Catch: all -> 0x00f1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0013, B:6:0x0019, B:10:0x0025, B:15:0x002e), top: B:3:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Matrix getPageMatrix() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.getPageMatrix():android.graphics.Matrix");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[Catch: all -> 0x002a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:10:0x0017, B:15:0x0020), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getPageRotation() {
        /*
            r4 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r4.isClosed     // Catch: java.lang.Throwable -> L2a
            if (r1 != 0) goto L16
            io.legere.pdfiumandroid.PdfDocument r1 = r4.doc     // Catch: java.lang.Throwable -> L2a
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L14
            goto L16
        L14:
            r1 = 0
            goto L17
        L16:
            r1 = 1
        L17:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L20
            monitor-exit(r0)
            r0 = -1
            return r0
        L20:
            io.legere.pdfiumandroid.PdfPage$Companion r1 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L2a
            long r2 = r4.pagePtr     // Catch: java.lang.Throwable -> L2a
            int r1 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeGetPageRotation(r1, r2)     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r0)
            return r1
        L2a:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.getPageRotation():int");
    }

    public final RectF getPageCropBox() {
        RectF rectF;
        synchronized (PdfiumCore.INSTANCE.getLock()) {
            if (this.isClosed || this.doc.getIsClosed()) {
                throw new IllegalStateException("Already closed".toString());
            }
            float[] nativeGetPageCropBox = INSTANCE.nativeGetPageCropBox(this.pagePtr);
            rectF = new RectF();
            rectF.left = nativeGetPageCropBox[0];
            rectF.top = nativeGetPageCropBox[1];
            rectF.right = nativeGetPageCropBox[2];
            rectF.bottom = nativeGetPageCropBox[3];
        }
        return rectF;
    }

    public final RectF getPageMediaBox() {
        RectF rectF;
        synchronized (PdfiumCore.INSTANCE.getLock()) {
            if (this.isClosed || this.doc.getIsClosed()) {
                throw new IllegalStateException("Already closed".toString());
            }
            float[] nativeGetPageMediaBox = INSTANCE.nativeGetPageMediaBox(this.pagePtr);
            rectF = new RectF();
            rectF.left = nativeGetPageMediaBox[0];
            rectF.top = nativeGetPageMediaBox[1];
            rectF.right = nativeGetPageMediaBox[2];
            rectF.bottom = nativeGetPageMediaBox[3];
        }
        return rectF;
    }

    public final RectF getPageBleedBox() {
        RectF rectF;
        synchronized (PdfiumCore.INSTANCE.getLock()) {
            if (this.isClosed || this.doc.getIsClosed()) {
                throw new IllegalStateException("Already closed".toString());
            }
            float[] nativeGetPageBleedBox = INSTANCE.nativeGetPageBleedBox(this.pagePtr);
            rectF = new RectF();
            rectF.left = nativeGetPageBleedBox[0];
            rectF.top = nativeGetPageBleedBox[1];
            rectF.right = nativeGetPageBleedBox[2];
            rectF.bottom = nativeGetPageBleedBox[3];
        }
        return rectF;
    }

    public final RectF getPageTrimBox() {
        RectF rectF;
        synchronized (PdfiumCore.INSTANCE.getLock()) {
            if (this.isClosed || this.doc.getIsClosed()) {
                throw new IllegalStateException("Already closed".toString());
            }
            float[] nativeGetPageTrimBox = INSTANCE.nativeGetPageTrimBox(this.pagePtr);
            rectF = new RectF();
            rectF.left = nativeGetPageTrimBox[0];
            rectF.top = nativeGetPageTrimBox[1];
            rectF.right = nativeGetPageTrimBox[2];
            rectF.bottom = nativeGetPageTrimBox[3];
        }
        return rectF;
    }

    public final RectF getPageArtBox() {
        RectF rectF;
        synchronized (PdfiumCore.INSTANCE.getLock()) {
            if (this.isClosed || this.doc.getIsClosed()) {
                throw new IllegalStateException("Already closed".toString());
            }
            float[] nativeGetPageArtBox = INSTANCE.nativeGetPageArtBox(this.pagePtr);
            rectF = new RectF();
            rectF.left = nativeGetPageArtBox[0];
            rectF.top = nativeGetPageArtBox[1];
            rectF.right = nativeGetPageArtBox[2];
            rectF.bottom = nativeGetPageArtBox[3];
        }
        return rectF;
    }

    public final RectF getPageBoundingBox() {
        RectF rectF;
        synchronized (PdfiumCore.INSTANCE.getLock()) {
            if (this.isClosed || this.doc.getIsClosed()) {
                throw new IllegalStateException("Already closed".toString());
            }
            float[] nativeGetPageBoundingBox = INSTANCE.nativeGetPageBoundingBox(this.pagePtr);
            rectF = new RectF();
            rectF.left = nativeGetPageBoundingBox[0];
            rectF.top = nativeGetPageBoundingBox[1];
            rectF.right = nativeGetPageBoundingBox[2];
            rectF.bottom = nativeGetPageBoundingBox[3];
        }
        return rectF;
    }

    public final Size getPageSize(int screenDpi) {
        Size size;
        if (this.isClosed || this.doc.getIsClosed()) {
            throw new IllegalStateException("Already closed".toString());
        }
        synchronized (PdfiumCore.INSTANCE.getLock()) {
            int[] nativeGetPageSizeByIndex = INSTANCE.nativeGetPageSizeByIndex(this.doc.getMNativeDocPtr(), this.pageIndex, screenDpi);
            size = new Size(nativeGetPageSizeByIndex[0], nativeGetPageSizeByIndex[1]);
        }
        return size;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0020 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean renderPage(long r17, int r19, int r20, int r21, int r22, boolean r23, int r24, int r25) {
        /*
            r16 = this;
            r1 = r16
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r2 = r0.getLock()
            monitor-enter(r2)
            boolean r0 = r1.isClosed     // Catch: java.lang.Throwable -> L59
            r3 = 0
            if (r0 != 0) goto L19
            io.legere.pdfiumandroid.PdfDocument r0 = r1.doc     // Catch: java.lang.Throwable -> L59
            boolean r0 = r0.getIsClosed()     // Catch: java.lang.Throwable -> L59
            if (r0 == 0) goto L17
            goto L19
        L17:
            r0 = r3
            goto L1a
        L19:
            r0 = 1
        L1a:
            boolean r0 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r0)     // Catch: java.lang.Throwable -> L59
            if (r0 == 0) goto L22
            monitor-exit(r2)
            return r3
        L22:
            io.legere.pdfiumandroid.PdfPage$Companion r4 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Exception -> L3c java.lang.NullPointerException -> L49 java.lang.Throwable -> L59
            long r5 = r1.pagePtr     // Catch: java.lang.Exception -> L3c java.lang.NullPointerException -> L49 java.lang.Throwable -> L59
            r7 = r17
            r9 = r19
            r10 = r20
            r11 = r21
            r12 = r22
            r13 = r23
            r14 = r24
            r15 = r25
            boolean r0 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeRenderPage(r4, r5, r7, r9, r10, r11, r12, r13, r14, r15)     // Catch: java.lang.Exception -> L3c java.lang.NullPointerException -> L49 java.lang.Throwable -> L59
            monitor-exit(r2)
            return r0
        L3c:
            r0 = move-exception
            io.legere.pdfiumandroid.Logger r4 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L59
            java.lang.String r5 = "PdfPage"
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L59
            java.lang.String r6 = "Exception throw from native"
            r4.e(r5, r0, r6)     // Catch: java.lang.Throwable -> L59
            goto L55
        L49:
            r0 = move-exception
            io.legere.pdfiumandroid.Logger r4 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L59
            java.lang.String r5 = "PdfPage"
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L59
            java.lang.String r6 = "mContext may be null"
            r4.e(r5, r0, r6)     // Catch: java.lang.Throwable -> L59
        L55:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L59
            monitor-exit(r2)
            return r3
        L59:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.renderPage(long, int, int, int, int, boolean, int, int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean renderPage(long r21, int r23, int r24, android.graphics.Matrix r25, android.graphics.RectF r26, boolean r27, boolean r28, int r29, int r30) {
        /*
            r20 = this;
            r1 = r20
            r0 = r25
            r2 = r26
            java.lang.String r3 = "matrix"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r3)
            java.lang.String r3 = "clipRect"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            io.legere.pdfiumandroid.PdfiumCore$Companion r3 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r3 = r3.getLock()
            monitor-enter(r3)
            boolean r4 = r1.isClosed     // Catch: java.lang.Throwable -> L78
            r5 = 1
            r6 = 0
            if (r4 != 0) goto L28
            io.legere.pdfiumandroid.PdfDocument r4 = r1.doc     // Catch: java.lang.Throwable -> L78
            boolean r4 = r4.getIsClosed()     // Catch: java.lang.Throwable -> L78
            if (r4 == 0) goto L26
            goto L28
        L26:
            r4 = r6
            goto L29
        L28:
            r4 = r5
        L29:
            boolean r4 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r4)     // Catch: java.lang.Throwable -> L78
            if (r4 == 0) goto L31
            monitor-exit(r3)
            return r6
        L31:
            r4 = 9
            float[] r4 = new float[r4]     // Catch: java.lang.Throwable -> L78
            r0.getValues(r4)     // Catch: java.lang.Throwable -> L78
            io.legere.pdfiumandroid.PdfPage$Companion r7 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L78
            long r8 = r1.pagePtr     // Catch: java.lang.Throwable -> L78
            r0 = r4[r6]     // Catch: java.lang.Throwable -> L78
            r10 = 4
            r11 = r4[r10]     // Catch: java.lang.Throwable -> L78
            r12 = 2
            r13 = r4[r12]     // Catch: java.lang.Throwable -> L78
            r14 = 5
            r4 = r4[r14]     // Catch: java.lang.Throwable -> L78
            float[] r14 = new float[r10]     // Catch: java.lang.Throwable -> L78
            r14[r6] = r0     // Catch: java.lang.Throwable -> L78
            r14[r5] = r11     // Catch: java.lang.Throwable -> L78
            r14[r12] = r13     // Catch: java.lang.Throwable -> L78
            r0 = 3
            r14[r0] = r4     // Catch: java.lang.Throwable -> L78
            float r4 = r2.left     // Catch: java.lang.Throwable -> L78
            float r11 = r2.top     // Catch: java.lang.Throwable -> L78
            float r13 = r2.right     // Catch: java.lang.Throwable -> L78
            float r2 = r2.bottom     // Catch: java.lang.Throwable -> L78
            float[] r15 = new float[r10]     // Catch: java.lang.Throwable -> L78
            r15[r6] = r4     // Catch: java.lang.Throwable -> L78
            r15[r5] = r11     // Catch: java.lang.Throwable -> L78
            r15[r12] = r13     // Catch: java.lang.Throwable -> L78
            r15[r0] = r2     // Catch: java.lang.Throwable -> L78
            r10 = r21
            r12 = r23
            r13 = r24
            r16 = r27
            r17 = r28
            r18 = r29
            r19 = r30
            boolean r0 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeRenderPageWithMatrix(r7, r8, r10, r12, r13, r14, r15, r16, r17, r18, r19)     // Catch: java.lang.Throwable -> L78
            monitor-exit(r3)
            return r0
        L78:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.renderPage(long, int, int, android.graphics.Matrix, android.graphics.RectF, boolean, boolean, int, int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean renderPage(android.view.Surface r17, android.graphics.Matrix r18, android.graphics.RectF r19, boolean r20, boolean r21, int r22, int r23) {
        /*
            r16 = this;
            r1 = r16
            r0 = r18
            r2 = r19
            java.lang.String r3 = "surface"
            r7 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r3)
            java.lang.String r3 = "matrix"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r3)
            java.lang.String r3 = "clipRect"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            io.legere.pdfiumandroid.PdfiumCore$Companion r3 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r3 = r3.getLock()
            monitor-enter(r3)
            boolean r4 = r1.isClosed     // Catch: java.lang.Throwable -> L7f
            r5 = 1
            r6 = 0
            if (r4 != 0) goto L2f
            io.legere.pdfiumandroid.PdfDocument r4 = r1.doc     // Catch: java.lang.Throwable -> L7f
            boolean r4 = r4.getIsClosed()     // Catch: java.lang.Throwable -> L7f
            if (r4 == 0) goto L2d
            goto L2f
        L2d:
            r4 = r6
            goto L30
        L2f:
            r4 = r5
        L30:
            boolean r4 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r4)     // Catch: java.lang.Throwable -> L7f
            if (r4 == 0) goto L38
            monitor-exit(r3)
            return r6
        L38:
            r4 = 9
            float[] r4 = new float[r4]     // Catch: java.lang.Throwable -> L7f
            r0.getValues(r4)     // Catch: java.lang.Throwable -> L7f
            io.legere.pdfiumandroid.PdfPage$Companion r0 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L7f
            long r8 = r1.pagePtr     // Catch: java.lang.Throwable -> L7f
            r10 = r4[r6]     // Catch: java.lang.Throwable -> L7f
            r11 = 4
            r12 = r4[r11]     // Catch: java.lang.Throwable -> L7f
            r13 = 2
            r14 = r4[r13]     // Catch: java.lang.Throwable -> L7f
            r15 = 5
            r4 = r4[r15]     // Catch: java.lang.Throwable -> L7f
            float[] r15 = new float[r11]     // Catch: java.lang.Throwable -> L7f
            r15[r6] = r10     // Catch: java.lang.Throwable -> L7f
            r15[r5] = r12     // Catch: java.lang.Throwable -> L7f
            r15[r13] = r14     // Catch: java.lang.Throwable -> L7f
            r10 = 3
            r15[r10] = r4     // Catch: java.lang.Throwable -> L7f
            float r4 = r2.left     // Catch: java.lang.Throwable -> L7f
            float r12 = r2.top     // Catch: java.lang.Throwable -> L7f
            float r14 = r2.right     // Catch: java.lang.Throwable -> L7f
            float r2 = r2.bottom     // Catch: java.lang.Throwable -> L7f
            float[] r11 = new float[r11]     // Catch: java.lang.Throwable -> L7f
            r11[r6] = r4     // Catch: java.lang.Throwable -> L7f
            r11[r5] = r12     // Catch: java.lang.Throwable -> L7f
            r11[r13] = r14     // Catch: java.lang.Throwable -> L7f
            r11[r10] = r2     // Catch: java.lang.Throwable -> L7f
            r4 = r0
            r5 = r8
            r7 = r17
            r8 = r15
            r9 = r11
            r10 = r20
            r11 = r21
            r12 = r22
            r13 = r23
            boolean r0 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeRenderPageSurfaceWithMatrix(r4, r5, r7, r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L7f
            monitor-exit(r3)
            return r0
        L7f:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.renderPage(android.view.Surface, android.graphics.Matrix, android.graphics.RectF, boolean, boolean, int, int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0021 A[Catch: all -> 0x0044, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:10:0x0019, B:15:0x0021), top: B:3:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void renderPageBitmap(android.graphics.Bitmap r18, int r19, int r20, int r21, int r22, boolean r23, boolean r24, int r25, int r26) {
        /*
            r17 = this;
            r1 = r17
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r2 = r0.getLock()
            monitor-enter(r2)
            boolean r0 = r1.isClosed     // Catch: java.lang.Throwable -> L44
            if (r0 != 0) goto L18
            io.legere.pdfiumandroid.PdfDocument r0 = r1.doc     // Catch: java.lang.Throwable -> L44
            boolean r0 = r0.getIsClosed()     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L16
            goto L18
        L16:
            r0 = 0
            goto L19
        L18:
            r0 = 1
        L19:
            boolean r0 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r0)     // Catch: java.lang.Throwable -> L44
            if (r0 == 0) goto L21
            monitor-exit(r2)
            return
        L21:
            io.legere.pdfiumandroid.PdfPage$Companion r3 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L44
            io.legere.pdfiumandroid.PdfDocument r0 = r1.doc     // Catch: java.lang.Throwable -> L44
            long r4 = r0.getMNativeDocPtr()     // Catch: java.lang.Throwable -> L44
            long r6 = r1.pagePtr     // Catch: java.lang.Throwable -> L44
            r8 = r18
            r9 = r19
            r10 = r20
            r11 = r21
            r12 = r22
            r13 = r23
            r14 = r24
            r15 = r25
            r16 = r26
            io.legere.pdfiumandroid.PdfPage.Companion.access$nativeRenderPageBitmap(r3, r4, r6, r8, r9, r10, r11, r12, r13, r14, r15, r16)     // Catch: java.lang.Throwable -> L44
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L44
            monitor-exit(r2)
            return
        L44:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.renderPageBitmap(android.graphics.Bitmap, int, int, int, int, boolean, boolean, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void renderPageBitmap(android.graphics.Bitmap r18, android.graphics.Matrix r19, android.graphics.RectF r20, boolean r21, boolean r22, int r23, int r24) {
        /*
            r17 = this;
            r1 = r17
            r0 = r19
            r2 = r20
            java.lang.String r3 = "matrix"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r3)
            java.lang.String r3 = "clipRect"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            io.legere.pdfiumandroid.PdfiumCore$Companion r3 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r3 = r3.getLock()
            monitor-enter(r3)
            boolean r4 = r1.isClosed     // Catch: java.lang.Throwable -> L77
            r5 = 1
            r6 = 0
            if (r4 != 0) goto L28
            io.legere.pdfiumandroid.PdfDocument r4 = r1.doc     // Catch: java.lang.Throwable -> L77
            boolean r4 = r4.getIsClosed()     // Catch: java.lang.Throwable -> L77
            if (r4 == 0) goto L26
            goto L28
        L26:
            r4 = r6
            goto L29
        L28:
            r4 = r5
        L29:
            boolean r4 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r4)     // Catch: java.lang.Throwable -> L77
            if (r4 == 0) goto L31
            monitor-exit(r3)
            return
        L31:
            r4 = 9
            float[] r4 = new float[r4]     // Catch: java.lang.Throwable -> L77
            r0.getValues(r4)     // Catch: java.lang.Throwable -> L77
            io.legere.pdfiumandroid.PdfPage$Companion r7 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L77
            long r8 = r1.pagePtr     // Catch: java.lang.Throwable -> L77
            r0 = r4[r6]     // Catch: java.lang.Throwable -> L77
            r10 = 4
            r11 = r4[r10]     // Catch: java.lang.Throwable -> L77
            r12 = 2
            r13 = r4[r12]     // Catch: java.lang.Throwable -> L77
            r14 = 5
            r4 = r4[r14]     // Catch: java.lang.Throwable -> L77
            float[] r14 = new float[r10]     // Catch: java.lang.Throwable -> L77
            r14[r6] = r0     // Catch: java.lang.Throwable -> L77
            r14[r5] = r11     // Catch: java.lang.Throwable -> L77
            r14[r12] = r13     // Catch: java.lang.Throwable -> L77
            r0 = 3
            r14[r0] = r4     // Catch: java.lang.Throwable -> L77
            float r4 = r2.left     // Catch: java.lang.Throwable -> L77
            float r11 = r2.top     // Catch: java.lang.Throwable -> L77
            float r13 = r2.right     // Catch: java.lang.Throwable -> L77
            float r2 = r2.bottom     // Catch: java.lang.Throwable -> L77
            float[] r15 = new float[r10]     // Catch: java.lang.Throwable -> L77
            r15[r6] = r4     // Catch: java.lang.Throwable -> L77
            r15[r5] = r11     // Catch: java.lang.Throwable -> L77
            r15[r12] = r13     // Catch: java.lang.Throwable -> L77
            r15[r0] = r2     // Catch: java.lang.Throwable -> L77
            r10 = r18
            r11 = r14
            r12 = r15
            r13 = r21
            r14 = r22
            r15 = r23
            r16 = r24
            io.legere.pdfiumandroid.PdfPage.Companion.access$nativeRenderPageBitmapWithMatrix(r7, r8, r10, r11, r12, r13, r14, r15, r16)     // Catch: java.lang.Throwable -> L77
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L77
            monitor-exit(r3)
            return
        L77:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.renderPageBitmap(android.graphics.Bitmap, android.graphics.Matrix, android.graphics.RectF, boolean, boolean, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f A[Catch: all -> 0x0083, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000d, B:10:0x0019, B:12:0x001f, B:16:0x0025, B:18:0x0038, B:25:0x0063), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0025 A[Catch: all -> 0x0083, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000d, B:10:0x0019, B:12:0x001f, B:16:0x0025, B:18:0x0038, B:25:0x0063), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<io.legere.pdfiumandroid.PdfDocument.Link> getPageLinks() {
        /*
            r15 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r15.isClosed     // Catch: java.lang.Throwable -> L83
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L18
            io.legere.pdfiumandroid.PdfDocument r1 = r15.doc     // Catch: java.lang.Throwable -> L83
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L16
            goto L18
        L16:
            r1 = r2
            goto L19
        L18:
            r1 = r3
        L19:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L25
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()     // Catch: java.lang.Throwable -> L83
            monitor-exit(r0)
            return r1
        L25:
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L83
            r1.<init>()     // Catch: java.lang.Throwable -> L83
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L83
            io.legere.pdfiumandroid.PdfPage$Companion r4 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L83
            long r5 = r15.pagePtr     // Catch: java.lang.Throwable -> L83
            long[] r4 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeGetPageLinks(r4, r5)     // Catch: java.lang.Throwable -> L83
            int r5 = r4.length     // Catch: java.lang.Throwable -> L83
            r6 = r2
        L36:
            if (r6 >= r5) goto L81
            r7 = r4[r6]     // Catch: java.lang.Throwable -> L83
            io.legere.pdfiumandroid.PdfPage$Companion r9 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L83
            io.legere.pdfiumandroid.PdfDocument r10 = r15.doc     // Catch: java.lang.Throwable -> L83
            long r10 = r10.getMNativeDocPtr()     // Catch: java.lang.Throwable -> L83
            int r10 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeGetDestPageIndex(r9, r10, r7)     // Catch: java.lang.Throwable -> L83
            io.legere.pdfiumandroid.PdfDocument r11 = r15.doc     // Catch: java.lang.Throwable -> L83
            long r11 = r11.getMNativeDocPtr()     // Catch: java.lang.Throwable -> L83
            java.lang.String r11 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeGetLinkURI(r9, r11, r7)     // Catch: java.lang.Throwable -> L83
            io.legere.pdfiumandroid.PdfDocument r12 = r15.doc     // Catch: java.lang.Throwable -> L83
            long r12 = r12.getMNativeDocPtr()     // Catch: java.lang.Throwable -> L83
            float[] r7 = io.legere.pdfiumandroid.PdfPage.Companion.access$nativeGetLinkRect(r9, r12, r7)     // Catch: java.lang.Throwable -> L83
            int r8 = r7.length     // Catch: java.lang.Throwable -> L83
            r9 = 4
            if (r8 != r9) goto L7e
            r8 = -1
            if (r10 != r8) goto L63
            if (r11 == 0) goto L7e
        L63:
            android.graphics.RectF r8 = new android.graphics.RectF     // Catch: java.lang.Throwable -> L83
            r9 = r7[r2]     // Catch: java.lang.Throwable -> L83
            r12 = r7[r3]     // Catch: java.lang.Throwable -> L83
            r13 = 2
            r13 = r7[r13]     // Catch: java.lang.Throwable -> L83
            r14 = 3
            r7 = r7[r14]     // Catch: java.lang.Throwable -> L83
            r8.<init>(r9, r12, r13, r7)     // Catch: java.lang.Throwable -> L83
            java.lang.Integer r7 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> L83
            io.legere.pdfiumandroid.PdfDocument$Link r9 = new io.legere.pdfiumandroid.PdfDocument$Link     // Catch: java.lang.Throwable -> L83
            r9.<init>(r8, r7, r11)     // Catch: java.lang.Throwable -> L83
            r1.add(r9)     // Catch: java.lang.Throwable -> L83
        L7e:
            int r6 = r6 + 1
            goto L36
        L81:
            monitor-exit(r0)
            return r1
        L83:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.getPageLinks():java.util.List");
    }

    public final Point mapPageCoordsToDevice(int startX, int startY, int sizeX, int sizeY, int rotate, double pageX, double pageY) {
        if (this.isClosed || this.doc.getIsClosed()) {
            throw new IllegalStateException("Already closed".toString());
        }
        int[] nativePageCoordsToDevice = INSTANCE.nativePageCoordsToDevice(this.pagePtr, startX, startY, sizeX, sizeY, rotate, pageX, pageY);
        return new Point(nativePageCoordsToDevice[0], nativePageCoordsToDevice[1]);
    }

    public final PointF mapDeviceCoordsToPage(int startX, int startY, int sizeX, int sizeY, int rotate, int deviceX, int deviceY) {
        if (this.isClosed || this.doc.getIsClosed()) {
            throw new IllegalStateException("Already closed".toString());
        }
        float[] nativeDeviceCoordsToPage = INSTANCE.nativeDeviceCoordsToPage(this.pagePtr, startX, startY, sizeX, sizeY, rotate, deviceX, deviceY);
        return new PointF(nativeDeviceCoordsToPage[0], nativeDeviceCoordsToPage[1]);
    }

    public final Rect mapRectToDevice(int startX, int startY, int sizeX, int sizeY, int rotate, RectF coords) {
        Intrinsics.checkNotNullParameter(coords, "coords");
        if (this.isClosed || this.doc.getIsClosed()) {
            throw new IllegalStateException("Already closed".toString());
        }
        Point mapPageCoordsToDevice = mapPageCoordsToDevice(startX, startY, sizeX, sizeY, rotate, coords.left, coords.top);
        Point mapPageCoordsToDevice2 = mapPageCoordsToDevice(startX, startY, sizeX, sizeY, rotate, coords.right, coords.bottom);
        return new Rect(mapPageCoordsToDevice.x, mapPageCoordsToDevice.y, mapPageCoordsToDevice2.x, mapPageCoordsToDevice2.y);
    }

    public final RectF mapRectToPage(int startX, int startY, int sizeX, int sizeY, int rotate, Rect coords) {
        Intrinsics.checkNotNullParameter(coords, "coords");
        if (this.isClosed || this.doc.getIsClosed()) {
            throw new IllegalStateException("Already closed".toString());
        }
        PointF mapDeviceCoordsToPage = mapDeviceCoordsToPage(startX, startY, sizeX, sizeY, rotate, coords.left, coords.top);
        PointF mapDeviceCoordsToPage2 = mapDeviceCoordsToPage(startX, startY, sizeX, sizeY, rotate, coords.right, coords.bottom);
        return new RectF(mapDeviceCoordsToPage.x, mapDeviceCoordsToPage.y, mapDeviceCoordsToPage2.x, mapDeviceCoordsToPage2.y);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001e A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[Catch: all -> 0x0059, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000c, B:10:0x0018, B:15:0x0020, B:17:0x0030, B:19:0x0036, B:22:0x0041), top: B:3:0x0007 }] */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() {
        /*
            r4 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r4.isClosed     // Catch: java.lang.Throwable -> L59
            r2 = 1
            if (r1 != 0) goto L17
            io.legere.pdfiumandroid.PdfDocument r1 = r4.doc     // Catch: java.lang.Throwable -> L59
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L59
            if (r1 == 0) goto L15
            goto L17
        L15:
            r1 = 0
            goto L18
        L17:
            r1 = r2
        L18:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L59
            if (r1 == 0) goto L20
            monitor-exit(r0)
            return
        L20:
            java.util.Map<java.lang.Integer, io.legere.pdfiumandroid.PdfDocument$PageCount> r1 = r4.pageMap     // Catch: java.lang.Throwable -> L59
            int r3 = r4.pageIndex     // Catch: java.lang.Throwable -> L59
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L59
            java.lang.Object r1 = r1.get(r3)     // Catch: java.lang.Throwable -> L59
            io.legere.pdfiumandroid.PdfDocument$PageCount r1 = (io.legere.pdfiumandroid.PdfDocument.PageCount) r1     // Catch: java.lang.Throwable -> L59
            if (r1 == 0) goto L57
            int r3 = r1.getCount()     // Catch: java.lang.Throwable -> L59
            if (r3 <= r2) goto L41
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L59
            int r2 = r2 + (-1)
            r1.setCount(r2)     // Catch: java.lang.Throwable -> L59
            monitor-exit(r0)
            return
        L41:
            java.util.Map<java.lang.Integer, io.legere.pdfiumandroid.PdfDocument$PageCount> r1 = r4.pageMap     // Catch: java.lang.Throwable -> L59
            int r3 = r4.pageIndex     // Catch: java.lang.Throwable -> L59
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L59
            r1.remove(r3)     // Catch: java.lang.Throwable -> L59
            r4.isClosed = r2     // Catch: java.lang.Throwable -> L59
            io.legere.pdfiumandroid.PdfPage$Companion r1 = io.legere.pdfiumandroid.PdfPage.INSTANCE     // Catch: java.lang.Throwable -> L59
            long r2 = r4.pagePtr     // Catch: java.lang.Throwable -> L59
            io.legere.pdfiumandroid.PdfPage.Companion.access$nativeClosePage(r1, r2)     // Catch: java.lang.Throwable -> L59
            kotlin.Unit r1 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L59
        L57:
            monitor-exit(r0)
            return
        L59:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfPage.close():void");
    }

    /* compiled from: PdfPage.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0014\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\u0011\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012J\u0011\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0012H\u0083 J\u0019\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0017H\u0083 J\u001b\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0017H\u0083 J\u0019\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0017H\u0083 J!\u0010 \u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0083 J\u0011\u0010!\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012H\u0083 JQ\u0010\"\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0083 J]\u0010+\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u001f2\b\b\u0002\u0010(\u001a\u00020\f2\b\b\u0002\u0010.\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0083 JA\u0010/\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0083 JM\u00100\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u001f2\b\b\u0002\u0010(\u001a\u00020\f2\b\b\u0002\u0010.\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0083 Jc\u00101\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00172\b\u00102\u001a\u0004\u0018\u0001032\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020\f2\u0006\u0010.\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0083 JO\u00104\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\b\u00102\u001a\u0004\u0018\u0001032\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u001f2\b\b\u0002\u0010(\u001a\u00020\f2\b\b\u0002\u0010.\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0083 J!\u00105\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u0007H\u0083 J\u0011\u00108\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 JI\u00109\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u00072\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020>H\u0083 JI\u0010@\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u00072\u0006\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0083 J\u0019\u0010C\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00107\u001a\u00020\u0007H\u0083 J\u0019\u0010D\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00107\u001a\u00020\u0007H\u0083 J\u0011\u0010E\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010F\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010G\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010H\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010I\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010J\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010K\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010L\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010M\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 J\u0011\u0010N\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0083 R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006O"}, d2 = {"Lio/legere/pdfiumandroid/PdfPage$Companion;", "", "<init>", "()V", "TAG", "", "LEFT", "", "TOP", "RIGHT", "BOTTOM", "lockSurface", "", "surface", "Landroid/view/Surface;", "dimensions", "", "ptrs", "", "unlockSurface", "", "nativeClosePage", "pagePtr", "", "nativeClosePages", "pagesPtr", "nativeGetDestPageIndex", "docPtr", "linkPtr", "nativeGetLinkURI", "nativeGetLinkRect", "", "nativeLockSurface", "nativeUnlockSurface", "nativeRenderPage", "bufferPtr", "startX", "startY", "drawSizeHor", "drawSizeVer", "renderAnnot", "canvasColor", "pageBackgroundColor", "nativeRenderPageWithMatrix", "matrix", "clipRect", "textMask", "nativeRenderPageSurface", "nativeRenderPageSurfaceWithMatrix", "nativeRenderPageBitmap", "bitmap", "Landroid/graphics/Bitmap;", "nativeRenderPageBitmapWithMatrix", "nativeGetPageSizeByIndex", "pageIndex", "dpi", "nativeGetPageLinks", "nativePageCoordsToDevice", "sizeX", "sizeY", "rotate", "pageX", "", "pageY", "nativeDeviceCoordsToPage", "deviceX", "deviceY", "nativeGetPageWidthPixel", "nativeGetPageHeightPixel", "nativeGetPageWidthPoint", "nativeGetPageHeightPoint", "nativeGetPageRotation", "nativeGetPageMediaBox", "nativeGetPageCropBox", "nativeGetPageBleedBox", "nativeGetPageTrimBox", "nativeGetPageArtBox", "nativeGetPageBoundingBox", "nativeGetPageMatrix", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void nativeClosePage(long pagePtr) {
            PdfPage.nativeClosePage(pagePtr);
        }

        @JvmStatic
        private final void nativeClosePages(long[] pagesPtr) {
            PdfPage.nativeClosePages(pagesPtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final float[] nativeDeviceCoordsToPage(long pagePtr, int startX, int startY, int sizeX, int sizeY, int rotate, int deviceX, int deviceY) {
            return PdfPage.nativeDeviceCoordsToPage(pagePtr, startX, startY, sizeX, sizeY, rotate, deviceX, deviceY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final int nativeGetDestPageIndex(long docPtr, long linkPtr) {
            return PdfPage.nativeGetDestPageIndex(docPtr, linkPtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final float[] nativeGetLinkRect(long docPtr, long linkPtr) {
            return PdfPage.nativeGetLinkRect(docPtr, linkPtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final String nativeGetLinkURI(long docPtr, long linkPtr) {
            return PdfPage.nativeGetLinkURI(docPtr, linkPtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final float[] nativeGetPageArtBox(long pagePtr) {
            return PdfPage.nativeGetPageArtBox(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final float[] nativeGetPageBleedBox(long pagePtr) {
            return PdfPage.nativeGetPageBleedBox(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final float[] nativeGetPageBoundingBox(long pagePtr) {
            return PdfPage.nativeGetPageBoundingBox(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final float[] nativeGetPageCropBox(long pagePtr) {
            return PdfPage.nativeGetPageCropBox(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int nativeGetPageHeightPixel(long pagePtr, int dpi) {
            return PdfPage.nativeGetPageHeightPixel(pagePtr, dpi);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int nativeGetPageHeightPoint(long pagePtr) {
            return PdfPage.nativeGetPageHeightPoint(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final long[] nativeGetPageLinks(long pagePtr) {
            return PdfPage.nativeGetPageLinks(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final float[] nativeGetPageMatrix(long pagePtr) {
            return PdfPage.nativeGetPageMatrix(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final float[] nativeGetPageMediaBox(long pagePtr) {
            return PdfPage.nativeGetPageMediaBox(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int nativeGetPageRotation(long pagePtr) {
            return PdfPage.nativeGetPageRotation(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final int[] nativeGetPageSizeByIndex(long docPtr, int pageIndex, int dpi) {
            return PdfPage.nativeGetPageSizeByIndex(docPtr, pageIndex, dpi);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final float[] nativeGetPageTrimBox(long pagePtr) {
            return PdfPage.nativeGetPageTrimBox(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int nativeGetPageWidthPixel(long pagePtr, int dpi) {
            return PdfPage.nativeGetPageWidthPixel(pagePtr, dpi);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int nativeGetPageWidthPoint(long pagePtr) {
            return PdfPage.nativeGetPageWidthPoint(pagePtr);
        }

        @JvmStatic
        private final boolean nativeLockSurface(Surface surface, int[] dimensions, long[] ptrs) {
            return PdfPage.nativeLockSurface(surface, dimensions, ptrs);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int[] nativePageCoordsToDevice(long pagePtr, int startX, int startY, int sizeX, int sizeY, int rotate, double pageX, double pageY) {
            return PdfPage.nativePageCoordsToDevice(pagePtr, startX, startY, sizeX, sizeY, rotate, pageX, pageY);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final boolean nativeRenderPage(long pagePtr, long bufferPtr, int startX, int startY, int drawSizeHor, int drawSizeVer, boolean renderAnnot, int canvasColor, int pageBackgroundColor) {
            return PdfPage.nativeRenderPage(pagePtr, bufferPtr, startX, startY, drawSizeHor, drawSizeVer, renderAnnot, canvasColor, pageBackgroundColor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void nativeRenderPageBitmap(long docPtr, long pagePtr, Bitmap bitmap, int startX, int startY, int drawSizeHor, int drawSizeVer, boolean renderAnnot, boolean textMask, int canvasColor, int pageBackgroundColor) {
            PdfPage.nativeRenderPageBitmap(docPtr, pagePtr, bitmap, startX, startY, drawSizeHor, drawSizeVer, renderAnnot, textMask, canvasColor, pageBackgroundColor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void nativeRenderPageBitmapWithMatrix(long pagePtr, Bitmap bitmap, float[] matrix, float[] clipRect, boolean renderAnnot, boolean textMask, int canvasColor, int pageBackgroundColor) {
            PdfPage.nativeRenderPageBitmapWithMatrix(pagePtr, bitmap, matrix, clipRect, renderAnnot, textMask, canvasColor, pageBackgroundColor);
        }

        @JvmStatic
        private final boolean nativeRenderPageSurface(long pagePtr, Surface surface, int startX, int startY, boolean renderAnnot, int canvasColor, int pageBackgroundColor) {
            return PdfPage.nativeRenderPageSurface(pagePtr, surface, startX, startY, renderAnnot, canvasColor, pageBackgroundColor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final boolean nativeRenderPageSurfaceWithMatrix(long pagePtr, Surface surface, float[] matrix, float[] clipRect, boolean renderAnnot, boolean textMask, int canvasColor, int pageBackgroundColor) {
            return PdfPage.nativeRenderPageSurfaceWithMatrix(pagePtr, surface, matrix, clipRect, renderAnnot, textMask, canvasColor, pageBackgroundColor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final boolean nativeRenderPageWithMatrix(long pagePtr, long bufferPtr, int drawSizeHor, int drawSizeVer, float[] matrix, float[] clipRect, boolean renderAnnot, boolean textMask, int canvasColor, int pageBackgroundColor) {
            return PdfPage.nativeRenderPageWithMatrix(pagePtr, bufferPtr, drawSizeHor, drawSizeVer, matrix, clipRect, renderAnnot, textMask, canvasColor, pageBackgroundColor);
        }

        @JvmStatic
        private final void nativeUnlockSurface(long[] ptrs) {
            PdfPage.nativeUnlockSurface(ptrs);
        }

        private Companion() {
        }

        public final boolean lockSurface(Surface surface, int[] dimensions, long[] ptrs) {
            boolean nativeLockSurface;
            Intrinsics.checkNotNullParameter(surface, "surface");
            Intrinsics.checkNotNullParameter(dimensions, "dimensions");
            Intrinsics.checkNotNullParameter(ptrs, "ptrs");
            synchronized (PdfiumCore.INSTANCE.getLock()) {
                nativeLockSurface = PdfPage.INSTANCE.nativeLockSurface(surface, dimensions, ptrs);
            }
            return nativeLockSurface;
        }

        public final void unlockSurface(long[] ptrs) {
            Intrinsics.checkNotNullParameter(ptrs, "ptrs");
            synchronized (PdfiumCore.INSTANCE.getLock()) {
                PdfPage.INSTANCE.nativeUnlockSurface(ptrs);
                Unit unit = Unit.INSTANCE;
            }
        }
    }
}

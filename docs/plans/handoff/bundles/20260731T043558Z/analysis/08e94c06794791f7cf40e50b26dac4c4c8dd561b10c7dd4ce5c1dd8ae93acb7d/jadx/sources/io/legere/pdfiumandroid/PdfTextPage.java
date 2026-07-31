package io.legere.pdfiumandroid;

import com.facebook.react.uimanager.ViewProps;
import com.google.firebase.analytics.FirebaseAnalytics;
import dalvik.annotation.optimization.FastNative;
import io.legere.pdfiumandroid.PdfDocument;
import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.protocol.MetricSummary;
import java.io.Closeable;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PdfTextPage.kt */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 ?2\u00020\u0001:\u0001?B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\u0006\u0010\u0017\u001a\u00020\u0005J\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005J\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0005J\u0010\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u001f\u001a\u00020\u0005J&\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$2\u0006\u0010'\u001a\u00020$J\u0016\u0010(\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u0005J\u0010\u0010*\u001a\u0004\u0018\u00010!2\u0006\u0010+\u001a\u00020\u0005J\u0016\u0010,\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010-2\u0006\u0010/\u001a\u000200J\u0018\u00101\u001a\u0004\u0018\u00010\u00192\u0006\u00102\u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u00103\u001a\u00020$2\u0006\u00104\u001a\u00020\u0005J&\u00105\u001a\u0004\u0018\u0001062\u0006\u00107\u001a\u00020\u00192\f\u00108\u001a\b\u0012\u0004\u0012\u00020:092\u0006\u0010\u001a\u001a\u00020\u0005J\u0006\u0010;\u001a\u00020<J\b\u0010=\u001a\u00020>H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"Lio/legere/pdfiumandroid/PdfTextPage;", "Ljava/io/Closeable;", "doc", "Lio/legere/pdfiumandroid/PdfDocument;", "pageIndex", "", "pagePtr", "", "pageMap", "", "Lio/legere/pdfiumandroid/PdfDocument$PageCount;", "<init>", "(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V", "getDoc", "()Lio/legere/pdfiumandroid/PdfDocument;", "getPageIndex", "()I", "getPagePtr", "()J", "getPageMap", "()Ljava/util/Map;", "isClosed", "", "textPageCountChars", "textPageGetTextLegacy", "", "startIndex", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "textPageGetText", "textPageGetUnicode", "", FirebaseAnalytics.Param.INDEX, "textPageGetCharBox", "Landroid/graphics/RectF;", "textPageGetCharIndexAtPos", "x", "", "y", "xTolerance", "yTolerance", "textPageCountRects", MetricSummary.JsonKeys.COUNT, "textPageGetRect", "rectIndex", "textPageGetRectsForRanges", "", "Lio/legere/pdfiumandroid/WordRangeRect;", "wordRanges", "", "textPageGetBoundedText", "rect", "getFontSize", "charIndex", "findStart", "Lio/legere/pdfiumandroid/FindResult;", "findWhat", "flags", "", "Lio/legere/pdfiumandroid/FindFlags;", "loadWebLink", "Lio/legere/pdfiumandroid/PdfPageLink;", "close", "", "Companion", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PdfTextPage implements Closeable {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = PdfTextPage.class.getName();
    private final PdfDocument doc;
    private volatile boolean isClosed;
    private final int pageIndex;
    private final Map<Integer, PdfDocument.PageCount> pageMap;
    private final long pagePtr;

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void nativeCloseTextPage(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native long nativeFindStart(long j, String str, int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native double nativeGetFontSize(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native long nativeLoadWebLink(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int nativeTextCountChars(long j);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int nativeTextCountRects(long j, int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int nativeTextGetBoundedText(long j, double d, double d2, double d3, double d4, short[] sArr);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native double[] nativeTextGetCharBox(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native int nativeTextGetCharIndexAtPos(long j, double d, double d2, double d3, double d4);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native double[] nativeTextGetRect(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native double[] nativeTextGetRects(long j, int[] iArr);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native int nativeTextGetText(long j, int i, int i2, short[] sArr);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native int nativeTextGetTextByteArray(long j, int i, int i2, byte[] bArr);

    /* JADX INFO: Access modifiers changed from: private */
    @FastNative
    @JvmStatic
    public static final native int nativeTextGetUnicode(long j, int i);

    public PdfTextPage(PdfDocument doc, int i, long j, Map<Integer, PdfDocument.PageCount> pageMap) {
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

    public final Map<Integer, PdfDocument.PageCount> getPageMap() {
        return this.pageMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[Catch: all -> 0x002a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:10:0x0017, B:15:0x0020), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int textPageCountChars() {
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
            io.legere.pdfiumandroid.PdfTextPage$Companion r1 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Throwable -> L2a
            long r2 = r4.pagePtr     // Catch: java.lang.Throwable -> L2a
            int r1 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeTextCountChars(r1, r2)     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r0)
            return r1
        L2a:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.textPageCountChars():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String textPageGetTextLegacy(int r12, int r13) {
        /*
            r11 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r11.isClosed     // Catch: java.lang.Throwable -> L82
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L18
            io.legere.pdfiumandroid.PdfDocument r1 = r11.doc     // Catch: java.lang.Throwable -> L82
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L82
            if (r1 == 0) goto L16
            goto L18
        L16:
            r1 = r2
            goto L19
        L18:
            r1 = r3
        L19:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L82
            r4 = 0
            if (r1 == 0) goto L22
            monitor-exit(r0)
            return r4
        L22:
            int r1 = r13 + 1
            short[] r1 = new short[r1]     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            io.legere.pdfiumandroid.PdfTextPage$Companion r5 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            long r6 = r11.pagePtr     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            r8 = r12
            r9 = r13
            r10 = r1
            int r12 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeTextGetText(r5, r6, r8, r9, r10)     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            if (r12 > 0) goto L37
            java.lang.String r12 = ""
            monitor-exit(r0)
            return r12
        L37:
            int r12 = r12 - r3
            int r13 = r12 * 2
            byte[] r13 = new byte[r13]     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            java.nio.ByteBuffer r3 = java.nio.ByteBuffer.wrap(r13)     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            java.nio.ByteOrder r5 = java.nio.ByteOrder.LITTLE_ENDIAN     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            r3.order(r5)     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
        L45:
            if (r2 >= r12) goto L4f
            short r5 = r1[r2]     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            r3.putShort(r5)     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            int r2 = r2 + 1
            goto L45
        L4f:
            java.nio.charset.Charset r12 = java.nio.charset.StandardCharsets.UTF_16LE     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            java.lang.String r1 = "UTF_16LE"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            r1.<init>(r13, r12)     // Catch: java.lang.Exception -> L5d java.lang.NullPointerException -> L6f java.lang.Throwable -> L82
            monitor-exit(r0)
            return r1
        L5d:
            r12 = move-exception
            io.legere.pdfiumandroid.Logger r13 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L82
            java.lang.String r1 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)     // Catch: java.lang.Throwable -> L82
            java.lang.Throwable r12 = (java.lang.Throwable) r12     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = "Exception throw from native"
            r13.e(r1, r12, r2)     // Catch: java.lang.Throwable -> L82
            goto L80
        L6f:
            r12 = move-exception
            io.legere.pdfiumandroid.Logger r13 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L82
            java.lang.String r1 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)     // Catch: java.lang.Throwable -> L82
            java.lang.Throwable r12 = (java.lang.Throwable) r12     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = "mContext may be null"
            r13.e(r1, r12, r2)     // Catch: java.lang.Throwable -> L82
        L80:
            monitor-exit(r0)
            return r4
        L82:
            r12 = move-exception
            monitor-exit(r0)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.textPageGetTextLegacy(int, int):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001e A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String textPageGetText(int r10, int r11) {
        /*
            r9 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r9.isClosed     // Catch: java.lang.Throwable -> L68
            if (r1 != 0) goto L16
            io.legere.pdfiumandroid.PdfDocument r1 = r9.doc     // Catch: java.lang.Throwable -> L68
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L68
            if (r1 == 0) goto L14
            goto L16
        L14:
            r1 = 0
            goto L17
        L16:
            r1 = 1
        L17:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L68
            r2 = 0
            if (r1 == 0) goto L20
            monitor-exit(r0)
            return r2
        L20:
            int r1 = r11 * 2
            byte[] r1 = new byte[r1]     // Catch: java.lang.Exception -> L43 java.lang.NullPointerException -> L55 java.lang.Throwable -> L68
            io.legere.pdfiumandroid.PdfTextPage$Companion r3 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Exception -> L43 java.lang.NullPointerException -> L55 java.lang.Throwable -> L68
            long r4 = r9.pagePtr     // Catch: java.lang.Exception -> L43 java.lang.NullPointerException -> L55 java.lang.Throwable -> L68
            r6 = r10
            r7 = r11
            r8 = r1
            int r10 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeTextGetTextByteArray(r3, r4, r6, r7, r8)     // Catch: java.lang.Exception -> L43 java.lang.NullPointerException -> L55 java.lang.Throwable -> L68
            if (r10 > 0) goto L35
            java.lang.String r10 = ""
            monitor-exit(r0)
            return r10
        L35:
            java.nio.charset.Charset r10 = java.nio.charset.StandardCharsets.UTF_16LE     // Catch: java.lang.Exception -> L43 java.lang.NullPointerException -> L55 java.lang.Throwable -> L68
            java.lang.String r11 = "UTF_16LE"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r11)     // Catch: java.lang.Exception -> L43 java.lang.NullPointerException -> L55 java.lang.Throwable -> L68
            java.lang.String r11 = new java.lang.String     // Catch: java.lang.Exception -> L43 java.lang.NullPointerException -> L55 java.lang.Throwable -> L68
            r11.<init>(r1, r10)     // Catch: java.lang.Exception -> L43 java.lang.NullPointerException -> L55 java.lang.Throwable -> L68
            monitor-exit(r0)
            return r11
        L43:
            r10 = move-exception
            io.legere.pdfiumandroid.Logger r11 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L68
            java.lang.String r1 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)     // Catch: java.lang.Throwable -> L68
            java.lang.Throwable r10 = (java.lang.Throwable) r10     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = "Exception throw from native"
            r11.e(r1, r10, r3)     // Catch: java.lang.Throwable -> L68
            goto L66
        L55:
            r10 = move-exception
            io.legere.pdfiumandroid.Logger r11 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L68
            java.lang.String r1 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)     // Catch: java.lang.Throwable -> L68
            java.lang.Throwable r10 = (java.lang.Throwable) r10     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = "mContext may be null"
            r11.e(r1, r10, r3)     // Catch: java.lang.Throwable -> L68
        L66:
            monitor-exit(r0)
            return r2
        L68:
            r10 = move-exception
            monitor-exit(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.textPageGetText(int, int):java.lang.String");
    }

    public final char textPageGetUnicode(int index) {
        char nativeTextGetUnicode;
        synchronized (PdfiumCore.INSTANCE.getLock()) {
            if (this.isClosed || this.doc.getIsClosed()) {
                throw new IllegalStateException("Already closed".toString());
            }
            nativeTextGetUnicode = (char) INSTANCE.nativeTextGetUnicode(this.pagePtr, index);
        }
        return nativeTextGetUnicode;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.RectF textPageGetCharBox(int r8) {
        /*
            r7 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r7.isClosed     // Catch: java.lang.Throwable -> L6e
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L18
            io.legere.pdfiumandroid.PdfDocument r1 = r7.doc     // Catch: java.lang.Throwable -> L6e
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L6e
            if (r1 == 0) goto L16
            goto L18
        L16:
            r1 = r2
            goto L19
        L18:
            r1 = r3
        L19:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L6e
            r4 = 0
            if (r1 == 0) goto L22
            monitor-exit(r0)
            return r4
        L22:
            io.legere.pdfiumandroid.PdfTextPage$Companion r1 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            long r5 = r7.pagePtr     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            double[] r8 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeTextGetCharBox(r1, r5, r8)     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            android.graphics.RectF r1 = new android.graphics.RectF     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            r1.<init>()     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            r5 = r8[r2]     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            float r2 = (float) r5     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            r1.left = r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            r2 = r8[r3]     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            float r2 = (float) r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            r1.right = r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            r2 = 2
            r2 = r8[r2]     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            float r2 = (float) r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            r1.bottom = r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            r2 = 3
            r2 = r8[r2]     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            float r8 = (float) r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            r1.top = r8     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6e
            monitor-exit(r0)
            return r1
        L47:
            r8 = move-exception
            io.legere.pdfiumandroid.Logger r1 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L6e
            java.lang.String r2 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L6e
            java.lang.String r3 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)     // Catch: java.lang.Throwable -> L6e
            java.lang.Throwable r8 = (java.lang.Throwable) r8     // Catch: java.lang.Throwable -> L6e
            java.lang.String r3 = "Exception throw from native"
            r1.e(r2, r8, r3)     // Catch: java.lang.Throwable -> L6e
            goto L6a
        L59:
            r8 = move-exception
            io.legere.pdfiumandroid.Logger r1 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L6e
            java.lang.String r2 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L6e
            java.lang.String r3 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)     // Catch: java.lang.Throwable -> L6e
            java.lang.Throwable r8 = (java.lang.Throwable) r8     // Catch: java.lang.Throwable -> L6e
            java.lang.String r3 = "mContext may be null"
            r1.e(r2, r8, r3)     // Catch: java.lang.Throwable -> L6e
        L6a:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6e
            monitor-exit(r0)
            return r4
        L6e:
            r8 = move-exception
            monitor-exit(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.textPageGetCharBox(int):android.graphics.RectF");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0021 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int textPageGetCharIndexAtPos(double r16, double r18, double r20, double r22) {
        /*
            r15 = this;
            r1 = r15
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r2 = r0.getLock()
            monitor-enter(r2)
            boolean r0 = r1.isClosed     // Catch: java.lang.Throwable -> L48
            if (r0 != 0) goto L17
            io.legere.pdfiumandroid.PdfDocument r0 = r1.doc     // Catch: java.lang.Throwable -> L48
            boolean r0 = r0.getIsClosed()     // Catch: java.lang.Throwable -> L48
            if (r0 == 0) goto L15
            goto L17
        L15:
            r0 = 0
            goto L18
        L17:
            r0 = 1
        L18:
            boolean r0 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r0)     // Catch: java.lang.Throwable -> L48
            r3 = -1
            if (r0 == 0) goto L21
            monitor-exit(r2)
            return r3
        L21:
            io.legere.pdfiumandroid.PdfTextPage$Companion r4 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> L48
            long r5 = r1.pagePtr     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> L48
            r7 = r16
            r9 = r18
            r11 = r20
            r13 = r22
            int r0 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeTextGetCharIndexAtPos(r4, r5, r7, r9, r11, r13)     // Catch: java.lang.Exception -> L33 java.lang.Throwable -> L48
            monitor-exit(r2)
            return r0
        L33:
            r0 = move-exception
            io.legere.pdfiumandroid.Logger r4 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L48
            java.lang.String r5 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L48
            java.lang.String r6 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)     // Catch: java.lang.Throwable -> L48
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L48
            java.lang.String r6 = "Exception throw from native"
            r4.e(r5, r0, r6)     // Catch: java.lang.Throwable -> L48
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L48
            monitor-exit(r2)
            return r3
        L48:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.textPageGetCharIndexAtPos(double, double, double, double):int");
    }

    public final int textPageCountRects(int startIndex, int count) {
        synchronized (PdfiumCore.INSTANCE.getLock()) {
            if (this.isClosed || this.doc.getIsClosed()) {
                throw new IllegalStateException("Already closed".toString());
            }
            try {
                try {
                    return INSTANCE.nativeTextCountRects(this.pagePtr, startIndex, count);
                } catch (Exception e) {
                    Logger logger = Logger.INSTANCE;
                    String TAG2 = TAG;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    logger.e(TAG2, e, "Exception throw from native");
                    Unit unit = Unit.INSTANCE;
                    return -1;
                }
            } catch (NullPointerException e2) {
                Logger logger2 = Logger.INSTANCE;
                String TAG3 = TAG;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                logger2.e(TAG3, e2, "mContext may be null");
                Unit unit2 = Unit.INSTANCE;
                return -1;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.RectF textPageGetRect(int r8) {
        /*
            r7 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r7.isClosed     // Catch: java.lang.Throwable -> L6c
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L18
            io.legere.pdfiumandroid.PdfDocument r1 = r7.doc     // Catch: java.lang.Throwable -> L6c
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L6c
            if (r1 == 0) goto L16
            goto L18
        L16:
            r1 = r2
            goto L19
        L18:
            r1 = r3
        L19:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L6c
            r4 = 0
            if (r1 == 0) goto L22
            monitor-exit(r0)
            return r4
        L22:
            io.legere.pdfiumandroid.PdfTextPage$Companion r1 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            long r5 = r7.pagePtr     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            double[] r8 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeTextGetRect(r1, r5, r8)     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            android.graphics.RectF r1 = new android.graphics.RectF     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r1.<init>()     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r5 = r8[r2]     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            float r2 = (float) r5     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r1.left = r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r2 = r8[r3]     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            float r2 = (float) r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r1.top = r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r2 = 2
            r2 = r8[r2]     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            float r2 = (float) r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r1.right = r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r2 = 3
            r2 = r8[r2]     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            float r8 = (float) r2     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r1.bottom = r8     // Catch: java.lang.Exception -> L47 java.lang.NullPointerException -> L59 java.lang.Throwable -> L6c
            r4 = r1
            goto L6a
        L47:
            r8 = move-exception
            io.legere.pdfiumandroid.Logger r1 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L6c
            java.lang.String r2 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L6c
            java.lang.String r3 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)     // Catch: java.lang.Throwable -> L6c
            java.lang.Throwable r8 = (java.lang.Throwable) r8     // Catch: java.lang.Throwable -> L6c
            java.lang.String r3 = "Exception throw from native"
            r1.e(r2, r8, r3)     // Catch: java.lang.Throwable -> L6c
            goto L6a
        L59:
            r8 = move-exception
            io.legere.pdfiumandroid.Logger r1 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L6c
            java.lang.String r2 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L6c
            java.lang.String r3 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)     // Catch: java.lang.Throwable -> L6c
            java.lang.Throwable r8 = (java.lang.Throwable) r8     // Catch: java.lang.Throwable -> L6c
            java.lang.String r3 = "mContext may be null"
            r1.e(r2, r8, r3)     // Catch: java.lang.Throwable -> L6c
        L6a:
            monitor-exit(r0)
            return r4
        L6c:
            r8 = move-exception
            monitor-exit(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.textPageGetRect(int):android.graphics.RectF");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0026 A[Catch: all -> 0x007d, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x000c, B:6:0x0011, B:10:0x001d, B:16:0x0026, B:18:0x0030, B:20:0x0041, B:26:0x0079), top: B:3:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<io.legere.pdfiumandroid.WordRangeRect> textPageGetRectsForRanges(int[] r9) {
        /*
            r8 = this;
            java.lang.String r0 = "wordRanges"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r8.isClosed     // Catch: java.lang.Throwable -> L7d
            r2 = 0
            if (r1 != 0) goto L1c
            io.legere.pdfiumandroid.PdfDocument r1 = r8.doc     // Catch: java.lang.Throwable -> L7d
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L7d
            if (r1 == 0) goto L1a
            goto L1c
        L1a:
            r1 = r2
            goto L1d
        L1c:
            r1 = 1
        L1d:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L7d
            r3 = 0
            if (r1 == 0) goto L26
            monitor-exit(r0)
            return r3
        L26:
            io.legere.pdfiumandroid.PdfTextPage$Companion r1 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Throwable -> L7d
            long r4 = r8.pagePtr     // Catch: java.lang.Throwable -> L7d
            double[] r9 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeTextGetRects(r1, r4, r9)     // Catch: java.lang.Throwable -> L7d
            if (r9 == 0) goto L79
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L7d
            r1.<init>()     // Catch: java.lang.Throwable -> L7d
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L7d
            int r3 = r9.length     // Catch: java.lang.Throwable -> L7d
            int r3 = r3 + (-1)
            r4 = 6
            int r3 = kotlin.internal.ProgressionUtilKt.getProgressionLastElement(r2, r3, r4)     // Catch: java.lang.Throwable -> L7d
            if (r3 < 0) goto L77
        L41:
            android.graphics.RectF r4 = new android.graphics.RectF     // Catch: java.lang.Throwable -> L7d
            r4.<init>()     // Catch: java.lang.Throwable -> L7d
            r5 = r9[r2]     // Catch: java.lang.Throwable -> L7d
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L7d
            r4.left = r5     // Catch: java.lang.Throwable -> L7d
            int r5 = r2 + 1
            r5 = r9[r5]     // Catch: java.lang.Throwable -> L7d
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L7d
            r4.top = r5     // Catch: java.lang.Throwable -> L7d
            int r5 = r2 + 2
            r5 = r9[r5]     // Catch: java.lang.Throwable -> L7d
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L7d
            r4.right = r5     // Catch: java.lang.Throwable -> L7d
            int r5 = r2 + 3
            r5 = r9[r5]     // Catch: java.lang.Throwable -> L7d
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L7d
            r4.bottom = r5     // Catch: java.lang.Throwable -> L7d
            int r5 = r2 + 4
            r5 = r9[r5]     // Catch: java.lang.Throwable -> L7d
            int r5 = (int) r5     // Catch: java.lang.Throwable -> L7d
            int r6 = r2 + 5
            r6 = r9[r6]     // Catch: java.lang.Throwable -> L7d
            int r6 = (int) r6     // Catch: java.lang.Throwable -> L7d
            io.legere.pdfiumandroid.WordRangeRect r7 = new io.legere.pdfiumandroid.WordRangeRect     // Catch: java.lang.Throwable -> L7d
            r7.<init>(r5, r6, r4)     // Catch: java.lang.Throwable -> L7d
            r1.add(r7)     // Catch: java.lang.Throwable -> L7d
            if (r2 == r3) goto L77
            int r2 = r2 + 6
            goto L41
        L77:
            monitor-exit(r0)
            return r1
        L79:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7d
            monitor-exit(r0)
            return r3
        L7d:
            r9 = move-exception
            monitor-exit(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.textPageGetRectsForRanges(int[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0028 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String textPageGetBoundedText(android.graphics.RectF r20, int r21) {
        /*
            r19 = this;
            r1 = r19
            r0 = r20
            java.lang.String r2 = "rect"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            io.legere.pdfiumandroid.PdfiumCore$Companion r2 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r2 = r2.getLock()
            monitor-enter(r2)
            boolean r3 = r1.isClosed     // Catch: java.lang.Throwable -> L93
            r5 = 1
            if (r3 != 0) goto L20
            io.legere.pdfiumandroid.PdfDocument r3 = r1.doc     // Catch: java.lang.Throwable -> L93
            boolean r3 = r3.getIsClosed()     // Catch: java.lang.Throwable -> L93
            if (r3 == 0) goto L1e
            goto L20
        L1e:
            r3 = 0
            goto L21
        L20:
            r3 = r5
        L21:
            boolean r3 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r3)     // Catch: java.lang.Throwable -> L93
            r6 = 0
            if (r3 == 0) goto L2a
            monitor-exit(r2)
            return r6
        L2a:
            int r3 = r21 + 1
            short[] r3 = new short[r3]     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            io.legere.pdfiumandroid.PdfTextPage$Companion r7 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            long r8 = r1.pagePtr     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            float r10 = r0.left     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            double r10 = (double) r10     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            float r12 = r0.top     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            double r12 = (double) r12     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            float r14 = r0.right     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            double r14 = (double) r14     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            float r0 = r0.bottom     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            double r4 = (double) r0     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            r16 = r4
            r18 = r3
            int r0 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeTextGetBoundedText(r7, r8, r10, r12, r14, r16, r18)     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            r4 = 1
            int r0 = r0 - r4
            int r4 = r0 * 2
            byte[] r4 = new byte[r4]     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            java.nio.ByteBuffer r5 = java.nio.ByteBuffer.wrap(r4)     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            java.nio.ByteOrder r7 = java.nio.ByteOrder.LITTLE_ENDIAN     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            r5.order(r7)     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            r7 = 0
        L56:
            if (r7 >= r0) goto L60
            short r8 = r3[r7]     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            r5.putShort(r8)     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            int r7 = r7 + 1
            goto L56
        L60:
            java.nio.charset.Charset r0 = java.nio.charset.StandardCharsets.UTF_16LE     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            java.lang.String r3 = "UTF_16LE"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            java.lang.String r3 = new java.lang.String     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            r3.<init>(r4, r0)     // Catch: java.lang.Exception -> L6e java.lang.NullPointerException -> L80 java.lang.Throwable -> L93
            r6 = r3
            goto L91
        L6e:
            r0 = move-exception
            io.legere.pdfiumandroid.Logger r3 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L93
            java.lang.String r4 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L93
            java.lang.String r5 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)     // Catch: java.lang.Throwable -> L93
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L93
            java.lang.String r5 = "Exception throw from native"
            r3.e(r4, r0, r5)     // Catch: java.lang.Throwable -> L93
            goto L91
        L80:
            r0 = move-exception
            io.legere.pdfiumandroid.Logger r3 = io.legere.pdfiumandroid.Logger.INSTANCE     // Catch: java.lang.Throwable -> L93
            java.lang.String r4 = io.legere.pdfiumandroid.PdfTextPage.TAG     // Catch: java.lang.Throwable -> L93
            java.lang.String r5 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)     // Catch: java.lang.Throwable -> L93
            java.lang.Throwable r0 = (java.lang.Throwable) r0     // Catch: java.lang.Throwable -> L93
            java.lang.String r5 = "mContext may be null"
            r3.e(r4, r0, r5)     // Catch: java.lang.Throwable -> L93
        L91:
            monitor-exit(r2)
            return r6
        L93:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.textPageGetBoundedText(android.graphics.RectF, int):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0021 A[Catch: all -> 0x002b, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000b, B:10:0x0017, B:15:0x0021), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double getFontSize(int r5) {
        /*
            r4 = this;
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r4.isClosed     // Catch: java.lang.Throwable -> L2b
            if (r1 != 0) goto L16
            io.legere.pdfiumandroid.PdfDocument r1 = r4.doc     // Catch: java.lang.Throwable -> L2b
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L14
            goto L16
        L14:
            r1 = 0
            goto L17
        L16:
            r1 = 1
        L17:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L21
            monitor-exit(r0)
            r0 = 0
            return r0
        L21:
            io.legere.pdfiumandroid.PdfTextPage$Companion r1 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Throwable -> L2b
            long r2 = r4.pagePtr     // Catch: java.lang.Throwable -> L2b
            double r1 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeGetFontSize(r1, r2, r5)     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r0)
            return r1
        L2b:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.getFontSize(int):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0028 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002b A[Catch: all -> 0x0055, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0011, B:6:0x0016, B:10:0x0022, B:15:0x002b, B:16:0x0032, B:18:0x0038, B:20:0x0044), top: B:3:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.legere.pdfiumandroid.FindResult findStart(java.lang.String r10, java.util.Set<? extends io.legere.pdfiumandroid.FindFlags> r11, int r12) {
        /*
            r9 = this;
            java.lang.String r0 = "findWhat"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "flags"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            io.legere.pdfiumandroid.PdfiumCore$Companion r0 = io.legere.pdfiumandroid.PdfiumCore.INSTANCE
            java.lang.Object r0 = r0.getLock()
            monitor-enter(r0)
            boolean r1 = r9.isClosed     // Catch: java.lang.Throwable -> L55
            r2 = 0
            if (r1 != 0) goto L21
            io.legere.pdfiumandroid.PdfDocument r1 = r9.doc     // Catch: java.lang.Throwable -> L55
            boolean r1 = r1.getIsClosed()     // Catch: java.lang.Throwable -> L55
            if (r1 == 0) goto L1f
            goto L21
        L1f:
            r1 = r2
            goto L22
        L21:
            r1 = 1
        L22:
            boolean r1 = io.legere.pdfiumandroid.util.ConfigKt.handleAlreadyClosed(r1)     // Catch: java.lang.Throwable -> L55
            if (r1 == 0) goto L2b
            monitor-exit(r0)
            r10 = 0
            return r10
        L2b:
            java.lang.Iterable r11 = (java.lang.Iterable) r11     // Catch: java.lang.Throwable -> L55
            java.util.Iterator r11 = r11.iterator()     // Catch: java.lang.Throwable -> L55
            r7 = r2
        L32:
            boolean r1 = r11.hasNext()     // Catch: java.lang.Throwable -> L55
            if (r1 == 0) goto L44
            java.lang.Object r1 = r11.next()     // Catch: java.lang.Throwable -> L55
            io.legere.pdfiumandroid.FindFlags r1 = (io.legere.pdfiumandroid.FindFlags) r1     // Catch: java.lang.Throwable -> L55
            int r1 = r1.getValue()     // Catch: java.lang.Throwable -> L55
            r7 = r7 | r1
            goto L32
        L44:
            io.legere.pdfiumandroid.FindResult r11 = new io.legere.pdfiumandroid.FindResult     // Catch: java.lang.Throwable -> L55
            io.legere.pdfiumandroid.PdfTextPage$Companion r3 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Throwable -> L55
            long r4 = r9.pagePtr     // Catch: java.lang.Throwable -> L55
            r6 = r10
            r8 = r12
            long r1 = io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeFindStart(r3, r4, r6, r7, r8)     // Catch: java.lang.Throwable -> L55
            r11.<init>(r1)     // Catch: java.lang.Throwable -> L55
            monitor-exit(r0)
            return r11
        L55:
            r10 = move-exception
            monitor-exit(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.findStart(java.lang.String, java.util.Set, int):io.legere.pdfiumandroid.FindResult");
    }

    public final PdfPageLink loadWebLink() {
        if (this.isClosed || this.doc.getIsClosed()) {
            throw new IllegalStateException("Already closed".toString());
        }
        return new PdfPageLink(INSTANCE.nativeLoadWebLink(this.pagePtr));
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
            io.legere.pdfiumandroid.PdfTextPage$Companion r1 = io.legere.pdfiumandroid.PdfTextPage.INSTANCE     // Catch: java.lang.Throwable -> L59
            long r2 = r4.pagePtr     // Catch: java.lang.Throwable -> L59
            io.legere.pdfiumandroid.PdfTextPage.Companion.access$nativeCloseTextPage(r1, r2)     // Catch: java.lang.Throwable -> L59
            kotlin.Unit r1 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L59
        L57:
            monitor-exit(r0)
            return
        L59:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.legere.pdfiumandroid.PdfTextPage.close():void");
    }

    /* compiled from: PdfTextPage.kt */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0013\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0017\n\u0002\b\u000e\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0083 J\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nH\u0083 J\u0019\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\fH\u0083 J\u0019\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\fH\u0083 J\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0083 J9\u0010\u0016\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0083 J)\u0010\u001e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\fH\u0083 J\u0011\u0010\"\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0083 J1\u0010#\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0083 J)\u0010(\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010!\u001a\u00020\f2\u0006\u0010)\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u001dH\u0083 J)\u0010+\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010!\u001a\u00020\f2\u0006\u0010)\u001a\u00020\f2\u0006\u0010*\u001a\u00020,H\u0083 J\u0019\u0010-\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\fH\u0083 J!\u0010.\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010!\u001a\u00020\f2\u0006\u0010)\u001a\u00020\fH\u0083 J\u0019\u0010/\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u00100\u001a\u00020\fH\u0083 R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lio/legere/pdfiumandroid/PdfTextPage$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "nativeCloseTextPage", "", "pagePtr", "", "nativeTextCountChars", "", "textPagePtr", "nativeTextGetCharBox", "", FirebaseAnalytics.Param.INDEX, "nativeTextGetRect", "rectIndex", "nativeTextGetRects", "wordRanges", "", "nativeTextGetBoundedText", "left", "", "top", "right", ViewProps.BOTTOM, "arr", "", "nativeFindStart", "findWhat", "flags", "startIndex", "nativeLoadWebLink", "nativeTextGetCharIndexAtPos", "x", "y", "xTolerance", "yTolerance", "nativeTextGetText", MetricSummary.JsonKeys.COUNT, "result", "nativeTextGetTextByteArray", "", "nativeTextGetUnicode", "nativeTextCountRects", "nativeGetFontSize", "charIndex", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void nativeCloseTextPage(long pagePtr) {
            PdfTextPage.nativeCloseTextPage(pagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final long nativeFindStart(long textPagePtr, String findWhat, int flags, int startIndex) {
            return PdfTextPage.nativeFindStart(textPagePtr, findWhat, flags, startIndex);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final double nativeGetFontSize(long pagePtr, int charIndex) {
            return PdfTextPage.nativeGetFontSize(pagePtr, charIndex);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final long nativeLoadWebLink(long textPagePtr) {
            return PdfTextPage.nativeLoadWebLink(textPagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int nativeTextCountChars(long textPagePtr) {
            return PdfTextPage.nativeTextCountChars(textPagePtr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int nativeTextCountRects(long textPagePtr, int startIndex, int count) {
            return PdfTextPage.nativeTextCountRects(textPagePtr, startIndex, count);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int nativeTextGetBoundedText(long textPagePtr, double left, double top, double right, double bottom, short[] arr) {
            return PdfTextPage.nativeTextGetBoundedText(textPagePtr, left, top, right, bottom, arr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final double[] nativeTextGetCharBox(long textPagePtr, int index) {
            return PdfTextPage.nativeTextGetCharBox(textPagePtr, index);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final int nativeTextGetCharIndexAtPos(long textPagePtr, double x, double y, double xTolerance, double yTolerance) {
            return PdfTextPage.nativeTextGetCharIndexAtPos(textPagePtr, x, y, xTolerance, yTolerance);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final double[] nativeTextGetRect(long textPagePtr, int rectIndex) {
            return PdfTextPage.nativeTextGetRect(textPagePtr, rectIndex);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final double[] nativeTextGetRects(long textPagePtr, int[] wordRanges) {
            return PdfTextPage.nativeTextGetRects(textPagePtr, wordRanges);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final int nativeTextGetText(long textPagePtr, int startIndex, int count, short[] result) {
            return PdfTextPage.nativeTextGetText(textPagePtr, startIndex, count, result);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final int nativeTextGetTextByteArray(long textPagePtr, int startIndex, int count, byte[] result) {
            return PdfTextPage.nativeTextGetTextByteArray(textPagePtr, startIndex, count, result);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @FastNative
        @JvmStatic
        public final int nativeTextGetUnicode(long textPagePtr, int index) {
            return PdfTextPage.nativeTextGetUnicode(textPagePtr, index);
        }

        private Companion() {
        }
    }
}

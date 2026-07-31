package io.legere.pdfiumandroid.suspend;

import android.graphics.RectF;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.legere.pdfiumandroid.FindFlags;
import io.legere.pdfiumandroid.Logger;
import io.legere.pdfiumandroid.PdfTextPage;
import io.legere.pdfiumandroid.WordRangeRect;
import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.protocol.MetricSummary;
import java.io.Closeable;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: PdfTextPageKt.kt */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\fJ \u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0015J\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0015J.\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001aH\u0086@¢\u0006\u0002\u0010\u001eJ\u001e\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0011J\u0018\u0010!\u001a\u0004\u0018\u00010\u00172\u0006\u0010\"\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0015J\u001e\u0010#\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$2\u0006\u0010&\u001a\u00020'H\u0086@¢\u0006\u0002\u0010(J \u0010)\u001a\u0004\u0018\u00010\u000e2\u0006\u0010*\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010+J\u0016\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0015J.\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020\u000e2\f\u00101\u001a\b\u0012\u0004\u0012\u000203022\u0006\u0010\u000f\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u00104J\u000e\u00105\u001a\u000206H\u0086@¢\u0006\u0002\u0010\fJ\b\u00107\u001a\u000208H\u0016J\u0006\u00109\u001a\u00020:R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;", "Ljava/io/Closeable;", "page", "Lio/legere/pdfiumandroid/PdfTextPage;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "(Lio/legere/pdfiumandroid/PdfTextPage;Lkotlinx/coroutines/CoroutineDispatcher;)V", "getPage", "()Lio/legere/pdfiumandroid/PdfTextPage;", "textPageCountChars", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "textPageGetText", "", "startIndex", SentryEnvelopeItemHeader.JsonKeys.LENGTH, "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "textPageGetUnicode", "", FirebaseAnalytics.Param.INDEX, "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "textPageGetCharBox", "Landroid/graphics/RectF;", "textPageGetCharIndexAtPos", "x", "", "y", "xTolerance", "yTolerance", "(DDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "textPageCountRects", MetricSummary.JsonKeys.COUNT, "textPageGetRect", "rectIndex", "textPageGetRectsForRanges", "", "Lio/legere/pdfiumandroid/WordRangeRect;", "wordRanges", "", "([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "textPageGetBoundedText", "rect", "(Landroid/graphics/RectF;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFontSize", "charIndex", "findStart", "Lio/legere/pdfiumandroid/suspend/FindResultKt;", "findWhat", "flags", "", "Lio/legere/pdfiumandroid/FindFlags;", "(Ljava/lang/String;Ljava/util/Set;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadWebLink", "Lio/legere/pdfiumandroid/suspend/PdfPageLinkKt;", "close", "", "safeClose", "", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PdfTextPageKt implements Closeable {
    private final CoroutineDispatcher dispatcher;
    private final PdfTextPage page;

    public PdfTextPageKt(PdfTextPage page, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(page, "page");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.page = page;
        this.dispatcher = dispatcher;
    }

    public final PdfTextPage getPage() {
        return this.page;
    }

    public final Object textPageCountChars(Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$textPageCountChars$2(this, null), continuation);
    }

    public final Object textPageGetText(int i, int i2, Continuation<? super String> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$textPageGetText$2(this, i, i2, null), continuation);
    }

    public final Object textPageGetUnicode(int i, Continuation<? super Character> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$textPageGetUnicode$2(this, i, null), continuation);
    }

    public final Object textPageGetCharBox(int i, Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$textPageGetCharBox$2(this, i, null), continuation);
    }

    public final Object textPageGetCharIndexAtPos(double d, double d2, double d3, double d4, Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$textPageGetCharIndexAtPos$2(this, d, d2, d3, d4, null), continuation);
    }

    public final Object textPageCountRects(int i, int i2, Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$textPageCountRects$2(this, i, i2, null), continuation);
    }

    public final Object textPageGetRect(int i, Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$textPageGetRect$2(this, i, null), continuation);
    }

    public final Object textPageGetRectsForRanges(int[] iArr, Continuation<? super List<WordRangeRect>> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$textPageGetRectsForRanges$2(this, iArr, null), continuation);
    }

    public final Object textPageGetBoundedText(RectF rectF, int i, Continuation<? super String> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$textPageGetBoundedText$2(this, rectF, i, null), continuation);
    }

    public final Object getFontSize(int i, Continuation<? super Double> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$getFontSize$2(this, i, null), continuation);
    }

    public final Object findStart(String str, Set<? extends FindFlags> set, int i, Continuation<? super FindResultKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$findStart$2(this, str, set, i, null), continuation);
    }

    public final Object loadWebLink(Continuation<? super PdfPageLinkKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfTextPageKt$loadWebLink$2(this, null), continuation);
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
            Logger.INSTANCE.e("PdfTextPageKt", e, "PdfTextPageKt.safeClose");
            return false;
        }
    }
}

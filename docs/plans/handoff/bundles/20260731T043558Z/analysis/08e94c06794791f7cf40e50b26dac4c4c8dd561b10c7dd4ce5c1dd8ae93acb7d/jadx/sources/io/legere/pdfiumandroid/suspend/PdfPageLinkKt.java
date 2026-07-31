package io.legere.pdfiumandroid.suspend;

import android.graphics.RectF;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.legere.pdfiumandroid.PdfPageLink;
import io.sentry.SentryEnvelopeItemHeader;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: PdfPageLinkKt.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\fJ \u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0013J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0011J\"\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00192\u0006\u0010\u000f\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u0013J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lio/legere/pdfiumandroid/suspend/PdfPageLinkKt;", "Ljava/io/Closeable;", "pageLink", "Lio/legere/pdfiumandroid/PdfPageLink;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "(Lio/legere/pdfiumandroid/PdfPageLink;Lkotlinx/coroutines/CoroutineDispatcher;)V", "getPageLink", "()Lio/legere/pdfiumandroid/PdfPageLink;", "countWebLinks", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getURL", "", FirebaseAnalytics.Param.INDEX, SentryEnvelopeItemHeader.JsonKeys.LENGTH, "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "countRects", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRect", "Landroid/graphics/RectF;", "linkIndex", "rectIndex", "getTextRange", "Lkotlin/Pair;", "close", "", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PdfPageLinkKt implements Closeable {
    private final CoroutineDispatcher dispatcher;
    private final PdfPageLink pageLink;

    public PdfPageLinkKt(PdfPageLink pageLink, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(pageLink, "pageLink");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.pageLink = pageLink;
        this.dispatcher = dispatcher;
    }

    public final PdfPageLink getPageLink() {
        return this.pageLink;
    }

    public final Object countWebLinks(Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageLinkKt$countWebLinks$2(this, null), continuation);
    }

    public final Object getURL(int i, int i2, Continuation<? super String> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageLinkKt$getURL$2(this, i, i2, null), continuation);
    }

    public final Object countRects(int i, Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageLinkKt$countRects$2(this, i, null), continuation);
    }

    public final Object getRect(int i, int i2, Continuation<? super RectF> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageLinkKt$getRect$2(this, i, i2, null), continuation);
    }

    public final Object getTextRange(int i, Continuation<? super Pair<Integer, Integer>> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfPageLinkKt$getTextRange$2(this, i, null), continuation);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.pageLink.close();
    }
}

package io.legere.pdfiumandroid.suspend;

import android.os.ParcelFileDescriptor;
import androidx.autofill.HintConstants;
import io.legere.pdfiumandroid.PdfiumCore;
import io.legere.pdfiumandroid.PdfiumSource;
import io.legere.pdfiumandroid.util.Config;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: PdfiumCoreKt.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u000eJ \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0086@¢\u0006\u0002\u0010\u0011J\u0018\u0010\n\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0086@¢\u0006\u0002\u0010\u0014J\"\u0010\n\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0086@¢\u0006\u0002\u0010\u0015J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0016H\u0086@¢\u0006\u0002\u0010\u0017J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0086@¢\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "config", "Lio/legere/pdfiumandroid/util/Config;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lio/legere/pdfiumandroid/util/Config;)V", "coreInternal", "Lio/legere/pdfiumandroid/PdfiumCore;", "newDocument", "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;", "fd", "Landroid/os/ParcelFileDescriptor;", "(Landroid/os/ParcelFileDescriptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", HintConstants.AUTOFILL_HINT_PASSWORD, "", "(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data", "", "([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "([BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lio/legere/pdfiumandroid/PdfiumSource;", "(Lio/legere/pdfiumandroid/PdfiumSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lio/legere/pdfiumandroid/PdfiumSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class PdfiumCoreKt {
    private final PdfiumCore coreInternal;
    private final CoroutineDispatcher dispatcher;

    public PdfiumCoreKt(CoroutineDispatcher dispatcher, Config config) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(config, "config");
        this.dispatcher = dispatcher;
        this.coreInternal = new PdfiumCore(null, config, 1, null);
    }

    public /* synthetic */ PdfiumCoreKt(CoroutineDispatcher coroutineDispatcher, Config config, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineDispatcher, (i & 2) != 0 ? new Config(null, null, 3, null) : config);
    }

    public final Object newDocument(ParcelFileDescriptor parcelFileDescriptor, Continuation<? super PdfDocumentKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfiumCoreKt$newDocument$2(this, parcelFileDescriptor, null), continuation);
    }

    public final Object newDocument(ParcelFileDescriptor parcelFileDescriptor, String str, Continuation<? super PdfDocumentKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfiumCoreKt$newDocument$4(this, parcelFileDescriptor, str, null), continuation);
    }

    public final Object newDocument(byte[] bArr, Continuation<? super PdfDocumentKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfiumCoreKt$newDocument$6(this, bArr, null), continuation);
    }

    public final Object newDocument(byte[] bArr, String str, Continuation<? super PdfDocumentKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfiumCoreKt$newDocument$8(this, bArr, str, null), continuation);
    }

    public final Object newDocument(PdfiumSource pdfiumSource, Continuation<? super PdfDocumentKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfiumCoreKt$newDocument$10(this, pdfiumSource, null), continuation);
    }

    public final Object newDocument(PdfiumSource pdfiumSource, String str, Continuation<? super PdfDocumentKt> continuation) {
        return BuildersKt.withContext(this.dispatcher, new PdfiumCoreKt$newDocument$12(this, pdfiumSource, str, null), continuation);
    }
}

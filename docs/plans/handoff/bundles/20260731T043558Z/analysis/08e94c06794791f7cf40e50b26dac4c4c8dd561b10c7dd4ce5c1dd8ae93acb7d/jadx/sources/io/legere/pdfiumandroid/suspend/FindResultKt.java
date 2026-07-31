package io.legere.pdfiumandroid.suspend;

import io.legere.pdfiumandroid.FindResult;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: FindResultKt.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\nJ\u000e\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000e\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000f\u001a\u00020\u0010H\u0086@¢\u0006\u0002\u0010\nJ\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lio/legere/pdfiumandroid/suspend/FindResultKt;", "Ljava/io/Closeable;", "findResult", "Lio/legere/pdfiumandroid/FindResult;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "(Lio/legere/pdfiumandroid/FindResult;Lkotlinx/coroutines/CoroutineDispatcher;)V", "findNext", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "findPrev", "getSchResultIndex", "", "getSchCount", "closeFind", "", "close", "pdfiumandroid_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FindResultKt implements Closeable {
    private final CoroutineDispatcher dispatcher;
    private final FindResult findResult;

    public FindResultKt(FindResult findResult, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(findResult, "findResult");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.findResult = findResult;
        this.dispatcher = dispatcher;
    }

    public final Object findNext(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(this.dispatcher, new FindResultKt$findNext$2(this, null), continuation);
    }

    public final Object findPrev(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(this.dispatcher, new FindResultKt$findPrev$2(this, null), continuation);
    }

    public final Object getSchResultIndex(Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new FindResultKt$getSchResultIndex$2(this, null), continuation);
    }

    public final Object getSchCount(Continuation<? super Integer> continuation) {
        return BuildersKt.withContext(this.dispatcher, new FindResultKt$getSchCount$2(this, null), continuation);
    }

    public final Object closeFind(Continuation<? super Unit> continuation) {
        Object withContext = BuildersKt.withContext(this.dispatcher, new FindResultKt$closeFind$2(this, null), continuation);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.findResult.closeFind();
    }
}

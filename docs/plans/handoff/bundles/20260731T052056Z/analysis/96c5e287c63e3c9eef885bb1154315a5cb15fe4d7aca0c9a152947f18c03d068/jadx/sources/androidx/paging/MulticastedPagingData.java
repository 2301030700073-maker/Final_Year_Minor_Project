package androidx.paging;

import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.SubscribedSharedFlow;
import okhttp3.Request;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MulticastedPagingData {
    public final Request.Builder accumulated;
    public final PagingData parent;

    public MulticastedPagingData(CloseableCoroutineScope closeableCoroutineScope, PagingData pagingData) {
        pagingData.getClass();
        this.parent = pagingData;
        Flow flow = pagingData.flow;
        flow.getClass();
        Request.Builder builder = new Request.Builder();
        builder.url = new StatusLine(10);
        SharedFlowImpl MutableSharedFlow = StateFlowKt.MutableSharedFlow(1, Integer.MAX_VALUE, BufferOverflow.SUSPEND);
        builder.method = MutableSharedFlow;
        Continuation continuation = null;
        builder.headers = new SubscribedSharedFlow(MutableSharedFlow, new SingleRunner$runInIsolation$2(24, builder, continuation));
        StandaloneCoroutine launch$default = AwaitKt.launch$default(closeableCoroutineScope, null, CoroutineStart.LAZY, new PageFetcher$flow$1(flow, builder, continuation, 9), 1);
        launch$default.invokeOnCompletion(new DiskLruCache$$ExternalSyntheticLambda0(14, builder));
        builder.body = launch$default;
        builder.tags = new SafeFlow(0, new PageFetcher$flow$1(8, builder, continuation));
        this.accumulated = builder;
    }
}

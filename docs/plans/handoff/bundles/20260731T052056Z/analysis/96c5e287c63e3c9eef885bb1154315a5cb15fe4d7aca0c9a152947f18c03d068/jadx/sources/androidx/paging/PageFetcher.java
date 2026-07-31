package androidx.paging;

import coil3.svg.internal.AndroidSvg;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFetcher {
    public final PagingConfig config;
    public final Pager$pageFetcher$2 pagingSourceFactory;
    public final AndroidSvg loadRequests = new AndroidSvg(3);
    public final AndroidSvg retryEvents = new AndroidSvg(3);
    public final Flow flow = FlowExtKt.simpleChannelFlow(new PageFetcher$flow$1(0, this, (Continuation) null));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GenerationInfo {
        public final PagingState cachedInitialState;
        public final JobImpl job;
        public final PageFetcherSnapshot snapshot;

        public GenerationInfo(PageFetcherSnapshot pageFetcherSnapshot, PagingState pagingState, JobImpl jobImpl) {
            this.snapshot = pageFetcherSnapshot;
            this.cachedInitialState = pagingState;
            this.job = jobImpl;
        }
    }

    public PageFetcher(Pager$pageFetcher$2 pager$pageFetcher$2, PagingConfig pagingConfig) {
        this.pagingSourceFactory = pager$pageFetcher$2;
        this.config = pagingConfig;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object generateNewPagingSource(androidx.paging.PagingSource r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher.generateNewPagingSource(androidx.paging.PagingSource, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

package coil3.intercept;

import coil3.EventListener$Companion$NONE$1;
import coil3.request.ImageRequest;
import coil3.size.Size;
import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import okhttp3.Address;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealInterceptorChain {
    public final Object eventListener;
    public int index;
    public final Object initialRequest;
    public final List interceptors;
    public final boolean isPlaceholderCached;
    public final Object request;
    public Object size;

    public RealInterceptorChain(Address address, ConnectionPool connectionPool, RealCall realCall, boolean z) {
        List immutableList;
        connectionPool.getClass();
        this.initialRequest = address;
        this.request = connectionPool;
        this.isPlaceholderCached = z;
        EmptyList emptyList = EmptyList.INSTANCE;
        this.interceptors = emptyList;
        this.size = emptyList;
        this.eventListener = new ArrayList();
        URI uri = address.url.uri();
        if (uri.getHost() == null) {
            immutableList = _UtilJvmKt.toImmutableList(new Proxy[]{Proxy.NO_PROXY});
        } else {
            List<Proxy> select = address.proxySelector.select(uri);
            immutableList = (select == null || select.isEmpty()) ? _UtilJvmKt.toImmutableList(new Proxy[]{Proxy.NO_PROXY}) : _UtilJvmKt.toImmutableList(select);
        }
        this.interceptors = immutableList;
        this.index = 0;
    }

    public boolean hasNext() {
        return this.index < this.interceptors.size() || !((ArrayList) this.eventListener).isEmpty();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object proceed(kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r13 = this;
            java.lang.Object r0 = r13.initialRequest
            r2 = r0
            coil3.request.ImageRequest r2 = (coil3.request.ImageRequest) r2
            int r0 = r13.index
            boolean r1 = r14 instanceof coil3.intercept.RealInterceptorChain$proceed$1
            if (r1 == 0) goto L1b
            r1 = r14
            coil3.intercept.RealInterceptorChain$proceed$1 r1 = (coil3.intercept.RealInterceptorChain$proceed$1) r1
            int r3 = r1.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L1b
            int r3 = r3 - r4
            r1.label = r3
        L19:
            r14 = r1
            goto L21
        L1b:
            coil3.intercept.RealInterceptorChain$proceed$1 r1 = new coil3.intercept.RealInterceptorChain$proceed$1
            r1.<init>(r13, r14)
            goto L19
        L21:
            java.lang.Object r1 = r14.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r14.label
            r10 = 0
            r11 = 1
            if (r3 == 0) goto L39
            if (r3 != r11) goto L33
            coil3.intercept.EngineInterceptor r13 = r14.L$0
            kotlin.ResultKt.throwOnFailure(r1)
            goto L6b
        L33:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r13)
            return r10
        L39:
            kotlin.ResultKt.throwOnFailure(r1)
            java.util.List r1 = r13.interceptors
            java.lang.Object r1 = r1.get(r0)
            r12 = r1
            coil3.intercept.EngineInterceptor r12 = (coil3.intercept.EngineInterceptor) r12
            int r4 = r0 + 1
            java.lang.Object r0 = r13.request
            r5 = r0
            coil3.request.ImageRequest r5 = (coil3.request.ImageRequest) r5
            java.lang.Object r0 = r13.size
            r6 = r0
            coil3.size.Size r6 = (coil3.size.Size) r6
            coil3.intercept.RealInterceptorChain r1 = new coil3.intercept.RealInterceptorChain
            java.lang.Object r0 = r13.eventListener
            r7 = r0
            coil3.EventListener$Companion$NONE$1 r7 = (coil3.EventListener$Companion$NONE$1) r7
            boolean r8 = r13.isPlaceholderCached
            java.util.List r3 = r13.interceptors
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r14.L$0 = r12
            r14.label = r11
            java.lang.Object r1 = r12.intercept(r1, r14)
            if (r1 != r9) goto L6a
            return r9
        L6a:
            r13 = r12
        L6b:
            coil3.request.ImageResult r1 = (coil3.request.ImageResult) r1
            coil3.request.ImageRequest r14 = r1.getRequest()
            android.content.Context r0 = r14.context
            android.content.Context r3 = r2.context
            java.lang.String r4 = "Interceptor '"
            if (r0 != r3) goto L9e
            java.lang.Object r0 = r14.data
            coil3.request.NullRequestData r3 = coil3.request.NullRequestData.INSTANCE
            if (r0 == r3) goto L98
            coil3.target.Target r0 = r14.target
            coil3.target.Target r3 = r2.target
            if (r0 != r3) goto L92
            coil3.size.SizeResolver r14 = r14.sizeResolver
            coil3.size.SizeResolver r0 = r2.sizeResolver
            if (r14 != r0) goto L8c
            return r1
        L8c:
            java.lang.String r14 = "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead."
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m$2(r13, r14, r4)
            return r10
        L92:
            java.lang.String r14 = "' cannot modify the request's target."
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m$2(r13, r14, r4)
            return r10
        L98:
            java.lang.String r14 = "' cannot set the request's data to null."
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m$2(r13, r14, r4)
            return r10
        L9e:
            java.lang.String r14 = "' cannot modify the request's context."
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m$2(r13, r14, r4)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.RealInterceptorChain.proceed(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public RealInterceptorChain(ImageRequest imageRequest, List list, int i, ImageRequest imageRequest2, Size size, EventListener$Companion$NONE$1 eventListener$Companion$NONE$1, boolean z) {
        this.initialRequest = imageRequest;
        this.interceptors = list;
        this.index = i;
        this.request = imageRequest2;
        this.size = size;
        this.eventListener = eventListener$Companion$NONE$1;
        this.isPlaceholderCached = z;
    }
}

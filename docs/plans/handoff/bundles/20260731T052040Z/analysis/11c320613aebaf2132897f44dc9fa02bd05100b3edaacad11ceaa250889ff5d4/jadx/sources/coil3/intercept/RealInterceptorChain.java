package coil3.intercept;

import coil3.EventListener;
import coil3.request.ImageRequest;
import coil3.size.Size;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealInterceptorChain implements Interceptor$Chain {
    public final EventListener eventListener;
    public final int index;
    public final ImageRequest initialRequest;
    public final List interceptors;
    public final boolean isPlaceholderCached;
    public final ImageRequest request;
    public final Size size;

    public RealInterceptorChain(ImageRequest imageRequest, List list, int i, ImageRequest imageRequest2, Size size, EventListener eventListener, boolean z) {
        this.initialRequest = imageRequest;
        this.interceptors = list;
        this.index = i;
        this.request = imageRequest2;
        this.size = size;
        this.eventListener = eventListener;
        this.isPlaceholderCached = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object proceed(kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r13 = this;
            boolean r0 = r14 instanceof coil3.intercept.RealInterceptorChain$proceed$1
            if (r0 == 0) goto L13
            r0 = r14
            coil3.intercept.RealInterceptorChain$proceed$1 r0 = (coil3.intercept.RealInterceptorChain$proceed$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.intercept.RealInterceptorChain$proceed$1 r0 = new coil3.intercept.RealInterceptorChain$proceed$1
            r0.<init>(r13, r14)
        L18:
            java.lang.Object r14 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2e
            java.lang.Object r1 = r0.L$1
            coil3.intercept.RealInterceptorChain r1 = (coil3.intercept.RealInterceptorChain) r1
            java.lang.Object r0 = r0.L$0
            coil3.intercept.EngineInterceptor r0 = (coil3.intercept.EngineInterceptor) r0
            kotlin.ResultKt.throwOnFailure(r14)
            goto L66
        L2e:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r13)
            return r2
        L34:
            kotlin.ResultKt.throwOnFailure(r14)
            java.util.List r14 = r13.interceptors
            int r1 = r13.index
            java.lang.Object r14 = r14.get(r1)
            coil3.intercept.EngineInterceptor r14 = (coil3.intercept.EngineInterceptor) r14
            int r7 = r1 + 1
            coil3.intercept.RealInterceptorChain r4 = new coil3.intercept.RealInterceptorChain
            coil3.EventListener r10 = r13.eventListener
            boolean r11 = r13.isPlaceholderCached
            coil3.request.ImageRequest r5 = r13.initialRequest
            java.util.List r6 = r13.interceptors
            coil3.request.ImageRequest r8 = r13.request
            coil3.size.Size r9 = r13.size
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)
            r0.L$0 = r14
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r0 = r14.intercept(r4, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L63
            return r1
        L63:
            r12 = r0
            r0 = r14
            r14 = r12
        L66:
            coil3.request.ImageResult r14 = (coil3.request.ImageResult) r14
            coil3.request.ImageRequest r1 = r14.getRequest()
            android.content.Context r3 = r1.context
            coil3.request.ImageRequest r13 = r13.initialRequest
            android.content.Context r4 = r13.context
            java.lang.String r5 = "Interceptor '"
            if (r3 != r4) goto L9b
            java.lang.Object r3 = r1.data
            coil3.request.NullRequestData r4 = coil3.request.NullRequestData.INSTANCE
            if (r3 == r4) goto L95
            coil3.target.Target r3 = r1.target
            coil3.target.Target r4 = r13.target
            if (r3 != r4) goto L8f
            coil3.size.SizeResolver r1 = r1.sizeResolver
            coil3.size.SizeResolver r13 = r13.sizeResolver
            if (r1 != r13) goto L89
            return r14
        L89:
            java.lang.String r13 = "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead."
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m$4(r0, r13, r5)
            return r2
        L8f:
            java.lang.String r13 = "' cannot modify the request's target."
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m$4(r0, r13, r5)
            return r2
        L95:
            java.lang.String r13 = "' cannot set the request's data to null."
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m$4(r0, r13, r5)
            return r2
        L9b:
            java.lang.String r13 = "' cannot modify the request's context."
            coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m$4(r0, r13, r5)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.RealInterceptorChain.proceed(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

package coil3.intercept;

import coil3.EventListener;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.intercept.Interceptor;
import coil3.request.ImageRequest;
import coil3.request.NullRequestData;
import coil3.size.Size;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealInterceptorChain implements Interceptor.Chain {
    private final EventListener eventListener;
    private final int index;
    private final ImageRequest initialRequest;
    private final List<Interceptor> interceptors;
    private final boolean isPlaceholderCached;
    private final ImageRequest request;
    private final Size size;

    /* JADX WARN: Multi-variable type inference failed */
    public RealInterceptorChain(ImageRequest imageRequest, List<? extends Interceptor> list, int i, ImageRequest imageRequest2, Size size, EventListener eventListener, boolean z) {
        this.initialRequest = imageRequest;
        this.interceptors = list;
        this.index = i;
        this.request = imageRequest2;
        this.size = size;
        this.eventListener = eventListener;
        this.isPlaceholderCached = z;
    }

    private final void checkRequest(ImageRequest imageRequest, Interceptor interceptor) {
        if (imageRequest.getContext() != this.initialRequest.getContext()) {
            UriKt$$ExternalSyntheticBUOutline0.m(interceptor, "' cannot modify the request's context.", "Interceptor '");
            return;
        }
        if (imageRequest.getData() == NullRequestData.INSTANCE) {
            UriKt$$ExternalSyntheticBUOutline0.m(interceptor, "' cannot set the request's data to null.", "Interceptor '");
        } else if (imageRequest.getTarget() != this.initialRequest.getTarget()) {
            UriKt$$ExternalSyntheticBUOutline0.m(interceptor, "' cannot modify the request's target.", "Interceptor '");
        } else {
            if (imageRequest.getSizeResolver() == this.initialRequest.getSizeResolver()) {
                return;
            }
            UriKt$$ExternalSyntheticBUOutline0.m(interceptor, "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.", "Interceptor '");
        }
    }

    private final RealInterceptorChain copy(int i, ImageRequest imageRequest, Size size) {
        return new RealInterceptorChain(this.initialRequest, this.interceptors, i, imageRequest, size, this.eventListener, this.isPlaceholderCached);
    }

    public static /* synthetic */ RealInterceptorChain copy$default(RealInterceptorChain realInterceptorChain, int i, ImageRequest imageRequest, Size size, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = realInterceptorChain.index;
        }
        if ((i2 & 2) != 0) {
            imageRequest = realInterceptorChain.getRequest();
        }
        if ((i2 & 4) != 0) {
            size = realInterceptorChain.getSize();
        }
        return realInterceptorChain.copy(i, imageRequest, size);
    }

    public final EventListener getEventListener() {
        return this.eventListener;
    }

    public final int getIndex() {
        return this.index;
    }

    public final ImageRequest getInitialRequest() {
        return this.initialRequest;
    }

    public final List<Interceptor> getInterceptors() {
        return this.interceptors;
    }

    @Override // coil3.intercept.Interceptor.Chain
    public ImageRequest getRequest() {
        return this.request;
    }

    @Override // coil3.intercept.Interceptor.Chain
    public Size getSize() {
        return this.size;
    }

    public final boolean isPlaceholderCached() {
        return this.isPlaceholderCached;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    @Override // coil3.intercept.Interceptor.Chain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object proceed(kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof coil3.intercept.RealInterceptorChain$proceed$1
            if (r0 == 0) goto L13
            r0 = r10
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
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L2a
            java.lang.Object r0 = r0.L$0
            coil3.intercept.Interceptor r0 = (coil3.intercept.Interceptor) r0
            kotlin.ResultKt.throwOnFailure(r10)
            r3 = r9
            goto L5a
        L2a:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            r9 = 0
            return r9
        L31:
            kotlin.ResultKt.throwOnFailure(r10)
            java.util.List<coil3.intercept.Interceptor> r10 = r9.interceptors
            int r1 = r9.index
            java.lang.Object r10 = r10.get(r1)
            coil3.intercept.Interceptor r10 = (coil3.intercept.Interceptor) r10
            int r1 = r9.index
            int r4 = r1 + 1
            r7 = 6
            r8 = 0
            r5 = 0
            r6 = 0
            r3 = r9
            coil3.intercept.RealInterceptorChain r9 = copy$default(r3, r4, r5, r6, r7, r8)
            r0.L$0 = r10
            r0.label = r2
            java.lang.Object r9 = r10.intercept(r9, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r0) goto L58
            return r0
        L58:
            r0 = r10
            r10 = r9
        L5a:
            coil3.request.ImageResult r10 = (coil3.request.ImageResult) r10
            coil3.request.ImageRequest r9 = r10.getRequest()
            r3.checkRequest(r9, r0)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.intercept.RealInterceptorChain.proceed(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // coil3.intercept.Interceptor.Chain
    public Interceptor.Chain withRequest(ImageRequest imageRequest) {
        int i = this.index;
        if (i > 0) {
            checkRequest(imageRequest, this.interceptors.get(i - 1));
        }
        return copy$default(this, 0, imageRequest, null, 5, null);
    }

    @Override // coil3.intercept.Interceptor.Chain
    public Interceptor.Chain withSize(Size size) {
        return copy$default(this, 0, null, size, 3, null);
    }
}

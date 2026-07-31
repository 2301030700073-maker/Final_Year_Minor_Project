package coil3;

import coil3.request.ImageRequest;
import coil3.request.RequestDelegate;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RealImageLoader$execute$3 extends ContinuationImpl {
    public RequestDelegate L$0;
    public ImageRequest L$1;
    public EventListener$Companion$NONE$1 L$2;
    public Image L$3;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ RealImageLoader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$3(RealImageLoader realImageLoader, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = realImageLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.execute(null, 0, this);
    }
}

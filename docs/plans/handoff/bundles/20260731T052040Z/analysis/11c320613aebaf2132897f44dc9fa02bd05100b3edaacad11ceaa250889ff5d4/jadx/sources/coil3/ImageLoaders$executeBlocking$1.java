package coil3;

import androidx.lifecycle.Lifecycle;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.size.RealViewSizeResolver;
import coil3.target.ImageViewTarget;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImageLoaders$executeBlocking$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ ImageRequest $request;
    final /* synthetic */ ImageLoader $this_executeBlocking;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageLoaders$executeBlocking$1(ImageLoader imageLoader, ImageRequest imageRequest, Continuation continuation) {
        super(2, continuation);
        this.$this_executeBlocking = imageLoader;
        this.$request = imageRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImageLoaders$executeBlocking$1(this.$this_executeBlocking, this.$request, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImageLoaders$executeBlocking$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        ImageLoader imageLoader = this.$this_executeBlocking;
        ImageRequest imageRequest = this.$request;
        this.label = 1;
        RealImageLoader realImageLoader = (RealImageLoader) imageLoader;
        realImageLoader.getClass();
        Object coroutineScope = ((imageRequest.target instanceof ImageViewTarget) || (imageRequest.sizeResolver instanceof RealViewSizeResolver) || ((Lifecycle) UriKt.getExtra(imageRequest, ImageRequests_androidKt.lifecycleKey)) != null) ? JobKt.coroutineScope(new RealImageLoader$execute$2(realImageLoader, imageRequest, null), this) : realImageLoader.execute(imageRequest, 1, this);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return coroutineScope == coroutineSingletons ? coroutineSingletons : coroutineScope;
    }
}

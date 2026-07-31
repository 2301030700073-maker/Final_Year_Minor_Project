package coil3.intercept;

import android.content.Context;
import coil3.EventListener;
import coil3.Image;
import coil3.RealImageLoader;
import coil3.decode.DataSource;
import coil3.intercept.EngineInterceptor;
import coil3.memory.MemoryCache$Key;
import coil3.request.ImageRequest;
import coil3.request.Options;
import coil3.request.SuccessResult;
import coil3.util.AndroidSystemCallbacks;
import java.lang.ref.WeakReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EngineInterceptor$intercept$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ MemoryCache$Key $cacheKey;
    final /* synthetic */ Interceptor$Chain $chain;
    final /* synthetic */ EventListener $eventListener;
    final /* synthetic */ Object $mappedData;
    final /* synthetic */ Options $options;
    final /* synthetic */ ImageRequest $request;
    int label;
    final /* synthetic */ EngineInterceptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(EngineInterceptor engineInterceptor, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, MemoryCache$Key memoryCache$Key, Interceptor$Chain interceptor$Chain, Continuation continuation) {
        super(2, continuation);
        this.this$0 = engineInterceptor;
        this.$request = imageRequest;
        this.$mappedData = obj;
        this.$options = options;
        this.$eventListener = eventListener;
        this.$cacheKey = memoryCache$Key;
        this.$chain = interceptor$Chain;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EngineInterceptor$intercept$2(this.this$0, this.$request, this.$mappedData, this.$options, this.$eventListener, this.$cacheKey, this.$chain, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EngineInterceptor$intercept$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        EngineInterceptor$intercept$2 engineInterceptor$intercept$2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            EngineInterceptor engineInterceptor = this.this$0;
            ImageRequest imageRequest = this.$request;
            Object obj2 = this.$mappedData;
            Options options = this.$options;
            EventListener eventListener = this.$eventListener;
            this.label = 1;
            engineInterceptor$intercept$2 = this;
            obj = EngineInterceptor.access$execute(engineInterceptor, imageRequest, obj2, options, eventListener, engineInterceptor$intercept$2);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            engineInterceptor$intercept$2 = this;
        }
        EngineInterceptor.ExecuteResult executeResult = (EngineInterceptor.ExecuteResult) obj;
        AndroidSystemCallbacks androidSystemCallbacks = engineInterceptor$intercept$2.this$0.systemCallbacks;
        synchronized (androidSystemCallbacks) {
            try {
                RealImageLoader realImageLoader = (RealImageLoader) ((WeakReference) androidSystemCallbacks.imageLoader).get();
                if (realImageLoader == null) {
                    androidSystemCallbacks.shutdown();
                } else if (((Context) androidSystemCallbacks.application) == null) {
                    Context context = realImageLoader.options.application;
                    androidSystemCallbacks.application = context;
                    context.registerComponentCallbacks((AndroidSystemCallbacks.ComponentCallbacks) androidSystemCallbacks.componentCallbacks);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        boolean cacheValue = engineInterceptor$intercept$2.this$0.memoryCacheService.setCacheValue(engineInterceptor$intercept$2.$cacheKey, engineInterceptor$intercept$2.$request, executeResult);
        Image image = executeResult.image;
        ImageRequest imageRequest2 = engineInterceptor$intercept$2.$request;
        DataSource dataSource = executeResult.dataSource;
        MemoryCache$Key memoryCache$Key = cacheValue ? engineInterceptor$intercept$2.$cacheKey : null;
        EngineInterceptor$intercept$2 engineInterceptor$intercept$22 = engineInterceptor$intercept$2;
        String str = executeResult.diskCacheKey;
        boolean z = executeResult.isSampled;
        Interceptor$Chain interceptor$Chain = engineInterceptor$intercept$22.$chain;
        return new SuccessResult(image, imageRequest2, dataSource, memoryCache$Key, str, z, (interceptor$Chain instanceof RealInterceptorChain) && ((RealInterceptorChain) interceptor$Chain).isPlaceholderCached);
    }
}

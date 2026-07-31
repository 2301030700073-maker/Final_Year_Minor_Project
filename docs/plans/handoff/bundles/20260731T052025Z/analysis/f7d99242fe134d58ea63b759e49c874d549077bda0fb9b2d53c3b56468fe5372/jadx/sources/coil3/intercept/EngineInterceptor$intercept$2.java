package coil3.intercept;

import coil3.EventListener;
import coil3.intercept.EngineInterceptor;
import coil3.intercept.Interceptor;
import coil3.memory.MemoryCache;
import coil3.memory.MemoryCacheService;
import coil3.request.ImageRequest;
import coil3.request.Options;
import coil3.request.SuccessResult;
import coil3.util.SystemCallbacks;
import coil3.util.UtilsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "coil3.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", l = {77}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class EngineInterceptor$intercept$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ MemoryCache.Key $cacheKey;
    final /* synthetic */ Interceptor.Chain $chain;
    final /* synthetic */ EventListener $eventListener;
    final /* synthetic */ Object $mappedData;
    final /* synthetic */ Options $options;
    final /* synthetic */ ImageRequest $request;
    int label;
    final /* synthetic */ EngineInterceptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(EngineInterceptor engineInterceptor, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, MemoryCache.Key key, Interceptor.Chain chain, Continuation continuation) {
        super(2, continuation);
        this.this$0 = engineInterceptor;
        this.$request = imageRequest;
        this.$mappedData = obj;
        this.$options = options;
        this.$eventListener = eventListener;
        this.$cacheKey = key;
        this.$chain = chain;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EngineInterceptor$intercept$2(this.this$0, this.$request, this.$mappedData, this.$options, this.$eventListener, this.$cacheKey, this.$chain, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((EngineInterceptor$intercept$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        EngineInterceptor$intercept$2 engineInterceptor$intercept$2;
        SystemCallbacks systemCallbacks;
        MemoryCacheService memoryCacheService;
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
            obj = engineInterceptor.execute(imageRequest, obj2, options, eventListener, engineInterceptor$intercept$2);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            engineInterceptor$intercept$2 = this;
        }
        EngineInterceptor.ExecuteResult executeResult = (EngineInterceptor.ExecuteResult) obj;
        systemCallbacks = engineInterceptor$intercept$2.this$0.systemCallbacks;
        systemCallbacks.registerMemoryPressureCallbacks();
        memoryCacheService = engineInterceptor$intercept$2.this$0.memoryCacheService;
        return new SuccessResult(executeResult.getImage(), engineInterceptor$intercept$2.$request, executeResult.getDataSource(), memoryCacheService.setCacheValue(engineInterceptor$intercept$2.$cacheKey, engineInterceptor$intercept$2.$request, executeResult) ? engineInterceptor$intercept$2.$cacheKey : null, executeResult.getDiskCacheKey(), executeResult.isSampled(), UtilsKt.isPlaceholderCached(engineInterceptor$intercept$2.$chain));
    }
}

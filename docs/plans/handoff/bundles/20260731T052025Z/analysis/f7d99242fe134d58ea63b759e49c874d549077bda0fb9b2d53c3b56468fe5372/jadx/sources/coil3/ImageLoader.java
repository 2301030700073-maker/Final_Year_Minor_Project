package coil3;

import android.content.Context;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.Extras;
import coil3.RealImageLoader;
import coil3.disk.DiskCache;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.memory.MemoryCache;
import coil3.request.CachePolicy;
import coil3.request.Disposable;
import coil3.request.ImageRequest;
import coil3.size.Precision;
import coil3.util.ContextsKt;
import coil3.util.Logger;
import kotlin.InitializedLazyImpl;
import kotlin.Lazy;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okio.FileSystem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ImageLoader {
    Disposable enqueue(ImageRequest imageRequest);

    Object execute(ImageRequest imageRequest, Continuation continuation);

    ComponentRegistry getComponents();

    ImageRequest.Defaults getDefaults();

    DiskCache getDiskCache();

    MemoryCache getMemoryCache();

    Builder newBuilder();

    void shutdown();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Builder {
        private final Context application;
        private ComponentRegistry componentRegistry;
        private ImageRequest.Defaults defaults;
        private Lazy diskCacheLazy;
        private EventListener.Factory eventListenerFactory;
        private final Extras.Builder extras;
        private Logger logger;
        private Lazy mainCoroutineContextLazy;
        private Lazy memoryCacheLazy;

        public Builder(RealImageLoader.Options options) {
            this.application = options.getApplication();
            this.defaults = options.getDefaults();
            this.mainCoroutineContextLazy = options.getMainCoroutineContextLazy();
            this.memoryCacheLazy = options.getMemoryCacheLazy();
            this.diskCacheLazy = options.getDiskCacheLazy();
            this.eventListenerFactory = options.getEventListenerFactory();
            this.componentRegistry = options.getComponentRegistry();
            this.logger = options.getLogger();
            this.extras = options.getDefaults().getExtras().newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final MainCoroutineDispatcher build$lambda$0() {
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            return MainDispatcherLoader.dispatcher.immediate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final MemoryCache build$lambda$1(Builder builder) {
            return MemoryCache.Builder.maxSizePercent$default(new MemoryCache.Builder(), builder.application, 0.0d, 2, null).build();
        }

        public final ImageLoader build() {
            ImageRequest.Defaults copy;
            Context context = this.application;
            copy = r3.copy((r29 & 1) != 0 ? r3.fileSystem : null, (r29 & 2) != 0 ? r3.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r3.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r3.decoderCoroutineContext : null, (r29 & 16) != 0 ? r3.memoryCachePolicy : null, (r29 & 32) != 0 ? r3.diskCachePolicy : null, (r29 & 64) != 0 ? r3.networkCachePolicy : null, (r29 & 128) != 0 ? r3.placeholderFactory : null, (r29 & 256) != 0 ? r3.errorFactory : null, (r29 & 512) != 0 ? r3.fallbackFactory : null, (r29 & 1024) != 0 ? r3.sizeResolver : null, (r29 & 2048) != 0 ? r3.scale : null, (r29 & 4096) != 0 ? r3.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : this.extras.build());
            Lazy lazy = this.mainCoroutineContextLazy;
            if (lazy == null) {
                lazy = new SynchronizedLazyImpl(new UtilsKt$$ExternalSyntheticLambda0(20));
            }
            Lazy lazy2 = this.memoryCacheLazy;
            if (lazy2 == null) {
                lazy2 = new SynchronizedLazyImpl(new ImageLoader$Builder$$ExternalSyntheticLambda1(0, this));
            }
            Lazy lazy3 = this.diskCacheLazy;
            if (lazy3 == null) {
                lazy3 = new SynchronizedLazyImpl(new UtilsKt$$ExternalSyntheticLambda0(21));
            }
            EventListener.Factory factory = this.eventListenerFactory;
            if (factory == null) {
                factory = EventListener.Factory.NONE;
            }
            ComponentRegistry componentRegistry = this.componentRegistry;
            if (componentRegistry == null) {
                componentRegistry = new ComponentRegistry();
            }
            return new RealImageLoader(new RealImageLoader.Options(context, copy, lazy, lazy2, lazy3, factory, componentRegistry, this.logger));
        }

        public final /* synthetic */ Builder components(Function1 function1) {
            ComponentRegistry.Builder builder = new ComponentRegistry.Builder();
            function1.invoke(builder);
            return components(builder.build());
        }

        public final Builder coroutineContext(CoroutineContext coroutineContext) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : coroutineContext, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : coroutineContext, (r29 & 8) != 0 ? r1.decoderCoroutineContext : coroutineContext, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder decoderCoroutineContext(CoroutineContext coroutineContext) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : coroutineContext, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder diskCache(DiskCache diskCache) {
            this.diskCacheLazy = new InitializedLazyImpl(diskCache);
            return this;
        }

        public final Builder diskCachePolicy(CachePolicy cachePolicy) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : cachePolicy, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder error(Function1 function1) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : function1, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder eventListener(EventListener eventListener) {
            return eventListenerFactory(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(16, eventListener));
        }

        public final Builder eventListenerFactory(EventListener.Factory factory) {
            this.eventListenerFactory = factory;
            return this;
        }

        public final Builder fallback(Function1 function1) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : function1, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder fetcherCoroutineContext(CoroutineContext coroutineContext) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : coroutineContext, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder fileSystem(FileSystem fileSystem) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : fileSystem, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Extras.Builder getExtras() {
            return this.extras;
        }

        public final Builder interceptorCoroutineContext(CoroutineContext coroutineContext) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : coroutineContext, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder logger(Logger logger) {
            this.logger = logger;
            return this;
        }

        public final Builder mainCoroutineContext(CoroutineContext coroutineContext) {
            return mainCoroutineContext(new ImageLoader$Builder$$ExternalSyntheticLambda1(29, coroutineContext));
        }

        public final Builder memoryCache(MemoryCache memoryCache) {
            this.memoryCacheLazy = new InitializedLazyImpl(memoryCache);
            return this;
        }

        public final Builder memoryCachePolicy(CachePolicy cachePolicy) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : cachePolicy, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder networkCachePolicy(CachePolicy cachePolicy) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : cachePolicy, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder placeholder(Function1 function1) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : function1, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : null, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder precision(Precision precision) {
            ImageRequest.Defaults copy;
            copy = r1.copy((r29 & 1) != 0 ? r1.fileSystem : null, (r29 & 2) != 0 ? r1.interceptorCoroutineContext : null, (r29 & 4) != 0 ? r1.fetcherCoroutineContext : null, (r29 & 8) != 0 ? r1.decoderCoroutineContext : null, (r29 & 16) != 0 ? r1.memoryCachePolicy : null, (r29 & 32) != 0 ? r1.diskCachePolicy : null, (r29 & 64) != 0 ? r1.networkCachePolicy : null, (r29 & 128) != 0 ? r1.placeholderFactory : null, (r29 & 256) != 0 ? r1.errorFactory : null, (r29 & 512) != 0 ? r1.fallbackFactory : null, (r29 & 1024) != 0 ? r1.sizeResolver : null, (r29 & 2048) != 0 ? r1.scale : null, (r29 & 4096) != 0 ? r1.precision : precision, (r29 & 8192) != 0 ? this.defaults.extras : null);
            this.defaults = copy;
            return this;
        }

        public final Builder diskCache(Function0 function0) {
            this.diskCacheLazy = ResultKt.lazy(function0);
            return this;
        }

        public final Builder memoryCache(Function0 function0) {
            this.memoryCacheLazy = ResultKt.lazy(function0);
            return this;
        }

        public final Builder mainCoroutineContext(Function0 function0) {
            this.mainCoroutineContextLazy = ResultKt.lazy(function0);
            return this;
        }

        public final Builder components(ComponentRegistry componentRegistry) {
            this.componentRegistry = componentRegistry;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CoroutineContext mainCoroutineContext$lambda$0(CoroutineContext coroutineContext) {
            return coroutineContext;
        }

        public final Builder error(Image image) {
            return error(new ImageLoader$Builder$$ExternalSyntheticLambda3(image, 0));
        }

        public final Builder fallback(Image image) {
            return fallback(new ImageLoader$Builder$$ExternalSyntheticLambda3(image, 1));
        }

        public final Builder placeholder(Image image) {
            return placeholder(new ImageLoader$Builder$$ExternalSyntheticLambda3(image, 2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Image error$lambda$0(Image image, ImageRequest imageRequest) {
            return image;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final EventListener eventListener$lambda$0(EventListener eventListener, ImageRequest imageRequest) {
            return eventListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Image fallback$lambda$0(Image image, ImageRequest imageRequest) {
            return image;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Image placeholder$lambda$0(Image image, ImageRequest imageRequest) {
            return image;
        }

        public Builder(Context context) {
            this.application = ContextsKt.getApplication(context);
            this.defaults = ImageRequest.Defaults.DEFAULT;
            this.mainCoroutineContextLazy = null;
            this.memoryCacheLazy = null;
            this.diskCacheLazy = null;
            this.eventListenerFactory = null;
            this.componentRegistry = null;
            this.logger = null;
            this.extras = new Extras.Builder();
        }
    }
}

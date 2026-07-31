package coil3.request;

import android.content.Context;
import coil3.Extras;
import coil3.Image;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda3;
import coil3.decode.Decoder;
import coil3.fetch.Fetcher;
import coil3.memory.MemoryCache;
import coil3.size.Dimension;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.size.SizeKt;
import coil3.size.SizeResolver;
import coil3.size.SizeResolverKt;
import coil3.target.Target;
import coil3.util.Collections_jvmCommonKt;
import coil3.util.Coroutines_nonJsCommonKt;
import coil3.util.FileSystems_nonJsCommonKt;
import coil3.util.UtilsKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import okio.FileSystem;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageRequest {
    private final Context context;
    private final Object data;
    private final CoroutineContext decoderCoroutineContext;
    private final Decoder.Factory decoderFactory;
    private final Defaults defaults;
    private final Defined defined;
    private final String diskCacheKey;
    private final CachePolicy diskCachePolicy;
    private final Function1 errorFactory;
    private final Extras extras;
    private final Function1 fallbackFactory;
    private final CoroutineContext fetcherCoroutineContext;
    private final Pair fetcherFactory;
    private final FileSystem fileSystem;
    private final CoroutineContext interceptorCoroutineContext;
    private final Listener listener;
    private final String memoryCacheKey;
    private final Map<String, String> memoryCacheKeyExtras;
    private final CachePolicy memoryCachePolicy;
    private final CachePolicy networkCachePolicy;
    private final Function1 placeholderFactory;
    private final MemoryCache.Key placeholderMemoryCacheKey;
    private final Precision precision;
    private final Scale scale;
    private final SizeResolver sizeResolver;
    private final Target target;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Defined {
        private final CoroutineContext decoderCoroutineContext;
        private final CachePolicy diskCachePolicy;
        private final Function1 errorFactory;
        private final Function1 fallbackFactory;
        private final CoroutineContext fetcherCoroutineContext;
        private final FileSystem fileSystem;
        private final CoroutineContext interceptorCoroutineContext;
        private final CachePolicy memoryCachePolicy;
        private final CachePolicy networkCachePolicy;
        private final Function1 placeholderFactory;
        private final Precision precision;
        private final Scale scale;
        private final SizeResolver sizeResolver;

        public Defined(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision) {
            this.fileSystem = fileSystem;
            this.interceptorCoroutineContext = coroutineContext;
            this.fetcherCoroutineContext = coroutineContext2;
            this.decoderCoroutineContext = coroutineContext3;
            this.memoryCachePolicy = cachePolicy;
            this.diskCachePolicy = cachePolicy2;
            this.networkCachePolicy = cachePolicy3;
            this.placeholderFactory = function1;
            this.errorFactory = function12;
            this.fallbackFactory = function13;
            this.sizeResolver = sizeResolver;
            this.scale = scale;
            this.precision = precision;
        }

        public static /* synthetic */ Defined copy$default(Defined defined, FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, int i, Object obj) {
            if ((i & 1) != 0) {
                fileSystem = defined.fileSystem;
            }
            return defined.copy(fileSystem, (i & 2) != 0 ? defined.interceptorCoroutineContext : coroutineContext, (i & 4) != 0 ? defined.fetcherCoroutineContext : coroutineContext2, (i & 8) != 0 ? defined.decoderCoroutineContext : coroutineContext3, (i & 16) != 0 ? defined.memoryCachePolicy : cachePolicy, (i & 32) != 0 ? defined.diskCachePolicy : cachePolicy2, (i & 64) != 0 ? defined.networkCachePolicy : cachePolicy3, (i & 128) != 0 ? defined.placeholderFactory : function1, (i & 256) != 0 ? defined.errorFactory : function12, (i & 512) != 0 ? defined.fallbackFactory : function13, (i & 1024) != 0 ? defined.sizeResolver : sizeResolver, (i & 2048) != 0 ? defined.scale : scale, (i & 4096) != 0 ? defined.precision : precision);
        }

        public final Defined copy(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision) {
            return new Defined(fileSystem, coroutineContext, coroutineContext2, coroutineContext3, cachePolicy, cachePolicy2, cachePolicy3, function1, function12, function13, sizeResolver, scale, precision);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Defined)) {
                return false;
            }
            Defined defined = (Defined) obj;
            return Intrinsics.areEqual(this.fileSystem, defined.fileSystem) && Intrinsics.areEqual(this.interceptorCoroutineContext, defined.interceptorCoroutineContext) && Intrinsics.areEqual(this.fetcherCoroutineContext, defined.fetcherCoroutineContext) && Intrinsics.areEqual(this.decoderCoroutineContext, defined.decoderCoroutineContext) && this.memoryCachePolicy == defined.memoryCachePolicy && this.diskCachePolicy == defined.diskCachePolicy && this.networkCachePolicy == defined.networkCachePolicy && Intrinsics.areEqual(this.placeholderFactory, defined.placeholderFactory) && Intrinsics.areEqual(this.errorFactory, defined.errorFactory) && Intrinsics.areEqual(this.fallbackFactory, defined.fallbackFactory) && Intrinsics.areEqual(this.sizeResolver, defined.sizeResolver) && this.scale == defined.scale && this.precision == defined.precision;
        }

        public final CoroutineContext getDecoderCoroutineContext() {
            return this.decoderCoroutineContext;
        }

        public final CachePolicy getDiskCachePolicy() {
            return this.diskCachePolicy;
        }

        public final Function1 getErrorFactory() {
            return this.errorFactory;
        }

        public final Function1 getFallbackFactory() {
            return this.fallbackFactory;
        }

        public final CoroutineContext getFetcherCoroutineContext() {
            return this.fetcherCoroutineContext;
        }

        public final FileSystem getFileSystem() {
            return this.fileSystem;
        }

        public final CoroutineContext getInterceptorCoroutineContext() {
            return this.interceptorCoroutineContext;
        }

        public final CachePolicy getMemoryCachePolicy() {
            return this.memoryCachePolicy;
        }

        public final CachePolicy getNetworkCachePolicy() {
            return this.networkCachePolicy;
        }

        public final Function1 getPlaceholderFactory() {
            return this.placeholderFactory;
        }

        public final Precision getPrecision() {
            return this.precision;
        }

        public final Scale getScale() {
            return this.scale;
        }

        public final SizeResolver getSizeResolver() {
            return this.sizeResolver;
        }

        public int hashCode() {
            FileSystem fileSystem = this.fileSystem;
            int hashCode = (fileSystem == null ? 0 : fileSystem.hashCode()) * 31;
            CoroutineContext coroutineContext = this.interceptorCoroutineContext;
            int hashCode2 = (hashCode + (coroutineContext == null ? 0 : coroutineContext.hashCode())) * 31;
            CoroutineContext coroutineContext2 = this.fetcherCoroutineContext;
            int hashCode3 = (hashCode2 + (coroutineContext2 == null ? 0 : coroutineContext2.hashCode())) * 31;
            CoroutineContext coroutineContext3 = this.decoderCoroutineContext;
            int hashCode4 = (hashCode3 + (coroutineContext3 == null ? 0 : coroutineContext3.hashCode())) * 31;
            CachePolicy cachePolicy = this.memoryCachePolicy;
            int hashCode5 = (hashCode4 + (cachePolicy == null ? 0 : cachePolicy.hashCode())) * 31;
            CachePolicy cachePolicy2 = this.diskCachePolicy;
            int hashCode6 = (hashCode5 + (cachePolicy2 == null ? 0 : cachePolicy2.hashCode())) * 31;
            CachePolicy cachePolicy3 = this.networkCachePolicy;
            int hashCode7 = (hashCode6 + (cachePolicy3 == null ? 0 : cachePolicy3.hashCode())) * 31;
            Function1 function1 = this.placeholderFactory;
            int hashCode8 = (hashCode7 + (function1 == null ? 0 : function1.hashCode())) * 31;
            Function1 function12 = this.errorFactory;
            int hashCode9 = (hashCode8 + (function12 == null ? 0 : function12.hashCode())) * 31;
            Function1 function13 = this.fallbackFactory;
            int hashCode10 = (hashCode9 + (function13 == null ? 0 : function13.hashCode())) * 31;
            SizeResolver sizeResolver = this.sizeResolver;
            int hashCode11 = (hashCode10 + (sizeResolver == null ? 0 : sizeResolver.hashCode())) * 31;
            Scale scale = this.scale;
            int hashCode12 = (hashCode11 + (scale == null ? 0 : scale.hashCode())) * 31;
            Precision precision = this.precision;
            return hashCode12 + (precision != null ? precision.hashCode() : 0);
        }

        public String toString() {
            return "Defined(fileSystem=" + this.fileSystem + ", interceptorCoroutineContext=" + this.interceptorCoroutineContext + ", fetcherCoroutineContext=" + this.fetcherCoroutineContext + ", decoderCoroutineContext=" + this.decoderCoroutineContext + ", memoryCachePolicy=" + this.memoryCachePolicy + ", diskCachePolicy=" + this.diskCachePolicy + ", networkCachePolicy=" + this.networkCachePolicy + ", placeholderFactory=" + this.placeholderFactory + ", errorFactory=" + this.errorFactory + ", fallbackFactory=" + this.fallbackFactory + ", sizeResolver=" + this.sizeResolver + ", scale=" + this.scale + ", precision=" + this.precision + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Listener {
        void onCancel(ImageRequest imageRequest);

        void onError(ImageRequest imageRequest, ErrorResult errorResult);

        void onStart(ImageRequest imageRequest);

        void onSuccess(ImageRequest imageRequest, SuccessResult successResult);
    }

    private ImageRequest(Context context, Object obj, Target target, Listener listener, String str, Map<String, String> map, String str2, FileSystem fileSystem, Pair pair, Decoder.Factory factory, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, MemoryCache.Key key, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras, Defined defined, Defaults defaults) {
        this.context = context;
        this.data = obj;
        this.target = target;
        this.listener = listener;
        this.memoryCacheKey = str;
        this.memoryCacheKeyExtras = map;
        this.diskCacheKey = str2;
        this.fileSystem = fileSystem;
        this.fetcherFactory = pair;
        this.decoderFactory = factory;
        this.interceptorCoroutineContext = coroutineContext;
        this.fetcherCoroutineContext = coroutineContext2;
        this.decoderCoroutineContext = coroutineContext3;
        this.memoryCachePolicy = cachePolicy;
        this.diskCachePolicy = cachePolicy2;
        this.networkCachePolicy = cachePolicy3;
        this.placeholderMemoryCacheKey = key;
        this.placeholderFactory = function1;
        this.errorFactory = function12;
        this.fallbackFactory = function13;
        this.sizeResolver = sizeResolver;
        this.scale = scale;
        this.precision = precision;
        this.extras = extras;
        this.defined = defined;
        this.defaults = defaults;
    }

    public static /* synthetic */ Builder newBuilder$default(ImageRequest imageRequest, Context context, int i, Object obj) {
        if ((i & 1) != 0) {
            context = imageRequest.context;
        }
        return imageRequest.newBuilder(context);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageRequest)) {
            return false;
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        return Intrinsics.areEqual(this.context, imageRequest.context) && Intrinsics.areEqual(this.data, imageRequest.data) && Intrinsics.areEqual(this.target, imageRequest.target) && Intrinsics.areEqual(this.listener, imageRequest.listener) && Intrinsics.areEqual(this.memoryCacheKey, imageRequest.memoryCacheKey) && Intrinsics.areEqual(this.memoryCacheKeyExtras, imageRequest.memoryCacheKeyExtras) && Intrinsics.areEqual(this.diskCacheKey, imageRequest.diskCacheKey) && Intrinsics.areEqual(this.fileSystem, imageRequest.fileSystem) && Intrinsics.areEqual(this.fetcherFactory, imageRequest.fetcherFactory) && Intrinsics.areEqual(this.decoderFactory, imageRequest.decoderFactory) && Intrinsics.areEqual(this.interceptorCoroutineContext, imageRequest.interceptorCoroutineContext) && Intrinsics.areEqual(this.fetcherCoroutineContext, imageRequest.fetcherCoroutineContext) && Intrinsics.areEqual(this.decoderCoroutineContext, imageRequest.decoderCoroutineContext) && this.memoryCachePolicy == imageRequest.memoryCachePolicy && this.diskCachePolicy == imageRequest.diskCachePolicy && this.networkCachePolicy == imageRequest.networkCachePolicy && Intrinsics.areEqual(this.placeholderMemoryCacheKey, imageRequest.placeholderMemoryCacheKey) && Intrinsics.areEqual(this.placeholderFactory, imageRequest.placeholderFactory) && Intrinsics.areEqual(this.errorFactory, imageRequest.errorFactory) && Intrinsics.areEqual(this.fallbackFactory, imageRequest.fallbackFactory) && Intrinsics.areEqual(this.sizeResolver, imageRequest.sizeResolver) && this.scale == imageRequest.scale && this.precision == imageRequest.precision && Intrinsics.areEqual(this.extras, imageRequest.extras) && Intrinsics.areEqual(this.defined, imageRequest.defined) && Intrinsics.areEqual(this.defaults, imageRequest.defaults);
    }

    public final Image error() {
        Image image = (Image) this.errorFactory.invoke(this);
        return image == null ? (Image) this.defaults.getErrorFactory().invoke(this) : image;
    }

    public final Image fallback() {
        Image image = (Image) this.fallbackFactory.invoke(this);
        return image == null ? (Image) this.defaults.getFallbackFactory().invoke(this) : image;
    }

    public final Context getContext() {
        return this.context;
    }

    public final Object getData() {
        return this.data;
    }

    public final CoroutineContext getDecoderCoroutineContext() {
        return this.decoderCoroutineContext;
    }

    public final Decoder.Factory getDecoderFactory() {
        return this.decoderFactory;
    }

    public final Defaults getDefaults() {
        return this.defaults;
    }

    public final Defined getDefined() {
        return this.defined;
    }

    public final String getDiskCacheKey() {
        return this.diskCacheKey;
    }

    public final CachePolicy getDiskCachePolicy() {
        return this.diskCachePolicy;
    }

    public final Function1 getErrorFactory() {
        return this.errorFactory;
    }

    public final Extras getExtras() {
        return this.extras;
    }

    public final Function1 getFallbackFactory() {
        return this.fallbackFactory;
    }

    public final CoroutineContext getFetcherCoroutineContext() {
        return this.fetcherCoroutineContext;
    }

    public final Pair getFetcherFactory() {
        return this.fetcherFactory;
    }

    public final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    public final CoroutineContext getInterceptorCoroutineContext() {
        return this.interceptorCoroutineContext;
    }

    public final Listener getListener() {
        return this.listener;
    }

    public final String getMemoryCacheKey() {
        return this.memoryCacheKey;
    }

    public final Map<String, String> getMemoryCacheKeyExtras() {
        return this.memoryCacheKeyExtras;
    }

    public final CachePolicy getMemoryCachePolicy() {
        return this.memoryCachePolicy;
    }

    public final CachePolicy getNetworkCachePolicy() {
        return this.networkCachePolicy;
    }

    public final Function1 getPlaceholderFactory() {
        return this.placeholderFactory;
    }

    public final MemoryCache.Key getPlaceholderMemoryCacheKey() {
        return this.placeholderMemoryCacheKey;
    }

    public final Precision getPrecision() {
        return this.precision;
    }

    public final Scale getScale() {
        return this.scale;
    }

    public final SizeResolver getSizeResolver() {
        return this.sizeResolver;
    }

    public final Target getTarget() {
        return this.target;
    }

    public int hashCode() {
        int hashCode = (this.data.hashCode() + (this.context.hashCode() * 31)) * 31;
        Target target = this.target;
        int hashCode2 = (hashCode + (target == null ? 0 : target.hashCode())) * 31;
        Listener listener = this.listener;
        int hashCode3 = (hashCode2 + (listener == null ? 0 : listener.hashCode())) * 31;
        String str = this.memoryCacheKey;
        int hashCode4 = (this.memoryCacheKeyExtras.hashCode() + ((hashCode3 + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        String str2 = this.diskCacheKey;
        int hashCode5 = (this.fileSystem.hashCode() + ((hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
        Pair pair = this.fetcherFactory;
        int hashCode6 = (hashCode5 + (pair == null ? 0 : pair.hashCode())) * 31;
        Decoder.Factory factory = this.decoderFactory;
        int hashCode7 = (this.networkCachePolicy.hashCode() + ((this.diskCachePolicy.hashCode() + ((this.memoryCachePolicy.hashCode() + ((this.decoderCoroutineContext.hashCode() + ((this.fetcherCoroutineContext.hashCode() + ((this.interceptorCoroutineContext.hashCode() + ((hashCode6 + (factory == null ? 0 : factory.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        MemoryCache.Key key = this.placeholderMemoryCacheKey;
        return this.defaults.hashCode() + ((this.defined.hashCode() + ((this.extras.hashCode() + ((this.precision.hashCode() + ((this.scale.hashCode() + ((this.sizeResolver.hashCode() + ((this.fallbackFactory.hashCode() + ((this.errorFactory.hashCode() + ((this.placeholderFactory.hashCode() + ((hashCode7 + (key != null ? key.hashCode() : 0)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final Builder newBuilder() {
        return newBuilder$default(this, null, 1, null);
    }

    public final Image placeholder() {
        Image image = (Image) this.placeholderFactory.invoke(this);
        return image == null ? (Image) this.defaults.getPlaceholderFactory().invoke(this) : image;
    }

    public String toString() {
        return "ImageRequest(context=" + this.context + ", data=" + this.data + ", target=" + this.target + ", listener=" + this.listener + ", memoryCacheKey=" + this.memoryCacheKey + ", memoryCacheKeyExtras=" + this.memoryCacheKeyExtras + ", diskCacheKey=" + this.diskCacheKey + ", fileSystem=" + this.fileSystem + ", fetcherFactory=" + this.fetcherFactory + ", decoderFactory=" + this.decoderFactory + ", interceptorCoroutineContext=" + this.interceptorCoroutineContext + ", fetcherCoroutineContext=" + this.fetcherCoroutineContext + ", decoderCoroutineContext=" + this.decoderCoroutineContext + ", memoryCachePolicy=" + this.memoryCachePolicy + ", diskCachePolicy=" + this.diskCachePolicy + ", networkCachePolicy=" + this.networkCachePolicy + ", placeholderMemoryCacheKey=" + this.placeholderMemoryCacheKey + ", placeholderFactory=" + this.placeholderFactory + ", errorFactory=" + this.errorFactory + ", fallbackFactory=" + this.fallbackFactory + ", sizeResolver=" + this.sizeResolver + ", scale=" + this.scale + ", precision=" + this.precision + ", extras=" + this.extras + ", defined=" + this.defined + ", defaults=" + this.defaults + ")";
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Defaults {
        public static final Companion Companion = new Companion(null);
        public static final Defaults DEFAULT = new Defaults(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
        private final CoroutineContext decoderCoroutineContext;
        private final CachePolicy diskCachePolicy;
        private final Function1 errorFactory;
        private final Extras extras;
        private final Function1 fallbackFactory;
        private final CoroutineContext fetcherCoroutineContext;
        private final FileSystem fileSystem;
        private final CoroutineContext interceptorCoroutineContext;
        private final CachePolicy memoryCachePolicy;
        private final CachePolicy networkCachePolicy;
        private final Function1 placeholderFactory;
        private final Precision precision;
        private final Scale scale;
        private final SizeResolver sizeResolver;

        public /* synthetic */ Defaults(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? FileSystems_nonJsCommonKt.defaultFileSystem() : fileSystem, (i & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i & 4) != 0 ? Coroutines_nonJsCommonKt.ioCoroutineDispatcher() : coroutineContext2, (i & 8) != 0 ? Coroutines_nonJsCommonKt.ioCoroutineDispatcher() : coroutineContext3, (i & 16) != 0 ? CachePolicy.ENABLED : cachePolicy, (i & 32) != 0 ? CachePolicy.ENABLED : cachePolicy2, (i & 64) != 0 ? CachePolicy.ENABLED : cachePolicy3, (i & 128) != 0 ? UtilsKt.getEMPTY_IMAGE_FACTORY() : function1, (i & 256) != 0 ? UtilsKt.getEMPTY_IMAGE_FACTORY() : function12, (i & 512) != 0 ? UtilsKt.getEMPTY_IMAGE_FACTORY() : function13, (i & 1024) != 0 ? SizeResolver.ORIGINAL : sizeResolver, (i & 2048) != 0 ? Scale.FIT : scale, (i & 4096) != 0 ? Precision.EXACT : precision, (i & 8192) != 0 ? Extras.EMPTY : extras);
        }

        @Deprecated
        public final /* synthetic */ Defaults copy(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, Precision precision, Extras extras) {
            return new Defaults(fileSystem, coroutineContext, coroutineContext2, coroutineContext3, cachePolicy, cachePolicy2, cachePolicy3, function1, function12, function13, null, null, precision, extras, 3072, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Defaults)) {
                return false;
            }
            Defaults defaults = (Defaults) obj;
            return Intrinsics.areEqual(this.fileSystem, defaults.fileSystem) && Intrinsics.areEqual(this.interceptorCoroutineContext, defaults.interceptorCoroutineContext) && Intrinsics.areEqual(this.fetcherCoroutineContext, defaults.fetcherCoroutineContext) && Intrinsics.areEqual(this.decoderCoroutineContext, defaults.decoderCoroutineContext) && this.memoryCachePolicy == defaults.memoryCachePolicy && this.diskCachePolicy == defaults.diskCachePolicy && this.networkCachePolicy == defaults.networkCachePolicy && Intrinsics.areEqual(this.placeholderFactory, defaults.placeholderFactory) && Intrinsics.areEqual(this.errorFactory, defaults.errorFactory) && Intrinsics.areEqual(this.fallbackFactory, defaults.fallbackFactory) && Intrinsics.areEqual(this.sizeResolver, defaults.sizeResolver) && this.scale == defaults.scale && this.precision == defaults.precision && Intrinsics.areEqual(this.extras, defaults.extras);
        }

        public final CoroutineContext getDecoderCoroutineContext() {
            return this.decoderCoroutineContext;
        }

        public final CachePolicy getDiskCachePolicy() {
            return this.diskCachePolicy;
        }

        public final Function1 getErrorFactory() {
            return this.errorFactory;
        }

        public final Extras getExtras() {
            return this.extras;
        }

        public final Function1 getFallbackFactory() {
            return this.fallbackFactory;
        }

        public final CoroutineContext getFetcherCoroutineContext() {
            return this.fetcherCoroutineContext;
        }

        public final FileSystem getFileSystem() {
            return this.fileSystem;
        }

        public final CoroutineContext getInterceptorCoroutineContext() {
            return this.interceptorCoroutineContext;
        }

        public final CachePolicy getMemoryCachePolicy() {
            return this.memoryCachePolicy;
        }

        public final CachePolicy getNetworkCachePolicy() {
            return this.networkCachePolicy;
        }

        public final Function1 getPlaceholderFactory() {
            return this.placeholderFactory;
        }

        public final Precision getPrecision() {
            return this.precision;
        }

        public final Scale getScale() {
            return this.scale;
        }

        public final SizeResolver getSizeResolver() {
            return this.sizeResolver;
        }

        public int hashCode() {
            return this.extras.hashCode() + ((this.precision.hashCode() + ((this.scale.hashCode() + ((this.sizeResolver.hashCode() + ((this.fallbackFactory.hashCode() + ((this.errorFactory.hashCode() + ((this.placeholderFactory.hashCode() + ((this.networkCachePolicy.hashCode() + ((this.diskCachePolicy.hashCode() + ((this.memoryCachePolicy.hashCode() + ((this.decoderCoroutineContext.hashCode() + ((this.fetcherCoroutineContext.hashCode() + ((this.interceptorCoroutineContext.hashCode() + (this.fileSystem.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
        }

        public String toString() {
            return "Defaults(fileSystem=" + this.fileSystem + ", interceptorCoroutineContext=" + this.interceptorCoroutineContext + ", fetcherCoroutineContext=" + this.fetcherCoroutineContext + ", decoderCoroutineContext=" + this.decoderCoroutineContext + ", memoryCachePolicy=" + this.memoryCachePolicy + ", diskCachePolicy=" + this.diskCachePolicy + ", networkCachePolicy=" + this.networkCachePolicy + ", placeholderFactory=" + this.placeholderFactory + ", errorFactory=" + this.errorFactory + ", fallbackFactory=" + this.fallbackFactory + ", sizeResolver=" + this.sizeResolver + ", scale=" + this.scale + ", precision=" + this.precision + ", extras=" + this.extras + ")";
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        public final Defaults copy(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras) {
            return new Defaults(fileSystem, coroutineContext, coroutineContext2, coroutineContext3, cachePolicy, cachePolicy2, cachePolicy3, function1, function12, function13, sizeResolver, scale, precision, extras);
        }

        public static /* synthetic */ Defaults copy$default(Defaults defaults, FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, Precision precision, Extras extras, int i, Object obj) {
            if ((i & 1) != 0) {
                fileSystem = defaults.fileSystem;
            }
            if ((i & 2) != 0) {
                coroutineContext = defaults.interceptorCoroutineContext;
            }
            if ((i & 4) != 0) {
                coroutineContext2 = defaults.fetcherCoroutineContext;
            }
            if ((i & 8) != 0) {
                coroutineContext3 = defaults.decoderCoroutineContext;
            }
            if ((i & 16) != 0) {
                cachePolicy = defaults.memoryCachePolicy;
            }
            if ((i & 32) != 0) {
                cachePolicy2 = defaults.diskCachePolicy;
            }
            if ((i & 64) != 0) {
                cachePolicy3 = defaults.networkCachePolicy;
            }
            if ((i & 128) != 0) {
                function1 = defaults.placeholderFactory;
            }
            if ((i & 256) != 0) {
                function12 = defaults.errorFactory;
            }
            if ((i & 512) != 0) {
                function13 = defaults.fallbackFactory;
            }
            if ((i & 1024) != 0) {
                precision = defaults.precision;
            }
            if ((i & 2048) != 0) {
                extras = defaults.extras;
            }
            Precision precision2 = precision;
            Extras extras2 = extras;
            Function1 function14 = function12;
            Function1 function15 = function13;
            CachePolicy cachePolicy4 = cachePolicy3;
            Function1 function16 = function1;
            CachePolicy cachePolicy5 = cachePolicy;
            CachePolicy cachePolicy6 = cachePolicy2;
            return defaults.copy(fileSystem, coroutineContext, coroutineContext2, coroutineContext3, cachePolicy5, cachePolicy6, cachePolicy4, function16, function14, function15, precision2, extras2);
        }

        public Defaults(FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras) {
            this.fileSystem = fileSystem;
            this.interceptorCoroutineContext = coroutineContext;
            this.fetcherCoroutineContext = coroutineContext2;
            this.decoderCoroutineContext = coroutineContext3;
            this.memoryCachePolicy = cachePolicy;
            this.diskCachePolicy = cachePolicy2;
            this.networkCachePolicy = cachePolicy3;
            this.placeholderFactory = function1;
            this.errorFactory = function12;
            this.fallbackFactory = function13;
            this.sizeResolver = sizeResolver;
            this.scale = scale;
            this.precision = precision;
            this.extras = extras;
        }

        public Defaults() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Builder {
        private final Context context;
        private Object data;
        private CoroutineContext decoderCoroutineContext;
        private Decoder.Factory decoderFactory;
        private Defaults defaults;
        private String diskCacheKey;
        private CachePolicy diskCachePolicy;
        private Function1 errorFactory;
        private Function1 fallbackFactory;
        private CoroutineContext fetcherCoroutineContext;
        private Pair fetcherFactory;
        private FileSystem fileSystem;
        private CoroutineContext interceptorCoroutineContext;
        private Object lazyExtras;
        private Object lazyMemoryCacheKeyExtras;
        private Listener listener;
        private String memoryCacheKey;
        private boolean memoryCacheKeyExtrasAreMutable;
        private CachePolicy memoryCachePolicy;
        private CachePolicy networkCachePolicy;
        private Function1 placeholderFactory;
        private MemoryCache.Key placeholderMemoryCacheKey;
        private Precision precision;
        private Scale scale;
        private SizeResolver sizeResolver;
        private Target target;

        public Builder(ImageRequest imageRequest, Context context) {
            this.context = context;
            this.defaults = imageRequest.getDefaults();
            this.data = imageRequest.getData();
            this.target = imageRequest.getTarget();
            this.listener = imageRequest.getListener();
            this.memoryCacheKey = imageRequest.getMemoryCacheKey();
            this.lazyMemoryCacheKeyExtras = imageRequest.getMemoryCacheKeyExtras();
            this.diskCacheKey = imageRequest.getDiskCacheKey();
            this.fileSystem = imageRequest.getDefined().getFileSystem();
            this.fetcherFactory = imageRequest.getFetcherFactory();
            this.decoderFactory = imageRequest.getDecoderFactory();
            this.interceptorCoroutineContext = imageRequest.getDefined().getInterceptorCoroutineContext();
            this.fetcherCoroutineContext = imageRequest.getDefined().getFetcherCoroutineContext();
            this.decoderCoroutineContext = imageRequest.getDefined().getDecoderCoroutineContext();
            this.memoryCachePolicy = imageRequest.getDefined().getMemoryCachePolicy();
            this.diskCachePolicy = imageRequest.getDefined().getDiskCachePolicy();
            this.networkCachePolicy = imageRequest.getDefined().getNetworkCachePolicy();
            this.placeholderMemoryCacheKey = imageRequest.getPlaceholderMemoryCacheKey();
            this.placeholderFactory = imageRequest.getDefined().getPlaceholderFactory();
            this.errorFactory = imageRequest.getDefined().getErrorFactory();
            this.fallbackFactory = imageRequest.getDefined().getFallbackFactory();
            this.sizeResolver = imageRequest.getDefined().getSizeResolver();
            this.scale = imageRequest.getDefined().getScale();
            this.precision = imageRequest.getDefined().getPrecision();
            this.lazyExtras = imageRequest.getExtras();
        }

        private final Map<String, String> getMemoryCacheKeyExtras() {
            Object obj = this.lazyMemoryCacheKeyExtras;
            if (!Intrinsics.areEqual(obj, Boolean.valueOf(this.memoryCacheKeyExtrasAreMutable))) {
                if (!(obj instanceof Map)) {
                    throw new AssertionError();
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap((Map) obj);
                this.lazyMemoryCacheKeyExtras = linkedHashMap;
                this.memoryCacheKeyExtrasAreMutable = true;
                obj = linkedHashMap;
            }
            obj.getClass();
            return TypeIntrinsics.asMutableMap(obj);
        }

        public static /* synthetic */ Builder listener$default(Builder builder, Function1 function1, Function1 function12, Function2 function2, Function2 function22, int i, Object obj) {
            if ((i & 1) != 0) {
                function1 = new Function1() { // from class: coil3.request.ImageRequest$Builder$listener$1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((ImageRequest) obj2);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ImageRequest imageRequest) {
                    }
                };
            }
            if ((i & 2) != 0) {
                function12 = new Function1() { // from class: coil3.request.ImageRequest$Builder$listener$2
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((ImageRequest) obj2);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ImageRequest imageRequest) {
                    }
                };
            }
            if ((i & 4) != 0) {
                function2 = new Function2() { // from class: coil3.request.ImageRequest$Builder$listener$3
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                        invoke((ImageRequest) obj2, (ErrorResult) obj3);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ImageRequest imageRequest, ErrorResult errorResult) {
                    }
                };
            }
            if ((i & 8) != 0) {
                function22 = new Function2() { // from class: coil3.request.ImageRequest$Builder$listener$4
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                        invoke((ImageRequest) obj2, (SuccessResult) obj3);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(ImageRequest imageRequest, SuccessResult successResult) {
                    }
                };
            }
            return builder.listener(new ImageRequest$Builder$listener$5(function1, function12, function2, function22));
        }

        public static /* synthetic */ Builder target$default(Builder builder, Function1 function1, Function1 function12, Function1 function13, int i, Object obj) {
            if ((i & 1) != 0) {
                function1 = new Function1() { // from class: coil3.request.ImageRequest$Builder$target$1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((Image) obj2);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Image image) {
                    }
                };
            }
            if ((i & 2) != 0) {
                function12 = new Function1() { // from class: coil3.request.ImageRequest$Builder$target$2
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((Image) obj2);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Image image) {
                    }
                };
            }
            if ((i & 4) != 0) {
                function13 = new Function1() { // from class: coil3.request.ImageRequest$Builder$target$3
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((Image) obj2);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Image image) {
                    }
                };
            }
            return builder.target(new ImageRequest$Builder$target$4(function1, function12, function13));
        }

        public final ImageRequest build() {
            Map map;
            Extras extras;
            Context context = this.context;
            Object obj = this.data;
            if (obj == null) {
                obj = NullRequestData.INSTANCE;
            }
            Target target = this.target;
            Listener listener = this.listener;
            String str = this.memoryCacheKey;
            Object obj2 = this.lazyMemoryCacheKeyExtras;
            if (Intrinsics.areEqual(obj2, Boolean.valueOf(this.memoryCacheKeyExtrasAreMutable))) {
                obj2.getClass();
                map = Collections_jvmCommonKt.toImmutableMap(TypeIntrinsics.asMutableMap(obj2));
            } else {
                if (!(obj2 instanceof Map)) {
                    throw new AssertionError();
                }
                map = (Map) obj2;
            }
            map.getClass();
            String str2 = this.diskCacheKey;
            FileSystem fileSystem = this.fileSystem;
            if (fileSystem == null) {
                fileSystem = this.defaults.getFileSystem();
            }
            Pair pair = this.fetcherFactory;
            Decoder.Factory factory = this.decoderFactory;
            CachePolicy cachePolicy = this.memoryCachePolicy;
            if (cachePolicy == null) {
                cachePolicy = this.defaults.getMemoryCachePolicy();
            }
            CachePolicy cachePolicy2 = cachePolicy;
            CachePolicy cachePolicy3 = this.diskCachePolicy;
            if (cachePolicy3 == null) {
                cachePolicy3 = this.defaults.getDiskCachePolicy();
            }
            CachePolicy cachePolicy4 = cachePolicy3;
            CachePolicy cachePolicy5 = this.networkCachePolicy;
            if (cachePolicy5 == null) {
                cachePolicy5 = this.defaults.getNetworkCachePolicy();
            }
            CachePolicy cachePolicy6 = cachePolicy5;
            CoroutineContext coroutineContext = this.interceptorCoroutineContext;
            if (coroutineContext == null) {
                coroutineContext = this.defaults.getInterceptorCoroutineContext();
            }
            CoroutineContext coroutineContext2 = this.fetcherCoroutineContext;
            if (coroutineContext2 == null) {
                coroutineContext2 = this.defaults.getFetcherCoroutineContext();
            }
            CoroutineContext coroutineContext3 = this.decoderCoroutineContext;
            if (coroutineContext3 == null) {
                coroutineContext3 = this.defaults.getDecoderCoroutineContext();
            }
            MemoryCache.Key key = this.placeholderMemoryCacheKey;
            Function1 function1 = this.placeholderFactory;
            if (function1 == null) {
                function1 = this.defaults.getPlaceholderFactory();
            }
            Function1 function12 = function1;
            Function1 function13 = this.errorFactory;
            if (function13 == null) {
                function13 = this.defaults.getErrorFactory();
            }
            Function1 function14 = function13;
            Function1 function15 = this.fallbackFactory;
            if (function15 == null) {
                function15 = this.defaults.getFallbackFactory();
            }
            Function1 function16 = function15;
            SizeResolver sizeResolver = this.sizeResolver;
            if (sizeResolver == null) {
                sizeResolver = this.defaults.getSizeResolver();
            }
            SizeResolver sizeResolver2 = sizeResolver;
            Scale scale = this.scale;
            if (scale == null) {
                scale = this.defaults.getScale();
            }
            Scale scale2 = scale;
            Precision precision = this.precision;
            if (precision == null) {
                precision = this.defaults.getPrecision();
            }
            Precision precision2 = precision;
            Object obj3 = this.lazyExtras;
            Object obj4 = obj;
            if (obj3 instanceof Extras.Builder) {
                extras = ((Extras.Builder) obj3).build();
            } else {
                if (!(obj3 instanceof Extras)) {
                    throw new AssertionError();
                }
                extras = (Extras) obj3;
            }
            return new ImageRequest(context, obj4, target, listener, str, map, str2, fileSystem, pair, factory, coroutineContext, coroutineContext2, coroutineContext3, cachePolicy2, cachePolicy4, cachePolicy6, key, function12, function14, function16, sizeResolver2, scale2, precision2, extras, new Defined(this.fileSystem, this.interceptorCoroutineContext, this.fetcherCoroutineContext, this.decoderCoroutineContext, this.memoryCachePolicy, this.diskCachePolicy, this.networkCachePolicy, this.placeholderFactory, this.errorFactory, this.fallbackFactory, this.sizeResolver, this.scale, this.precision), this.defaults, null);
        }

        public final Builder coroutineContext(CoroutineContext coroutineContext) {
            this.interceptorCoroutineContext = coroutineContext;
            this.fetcherCoroutineContext = coroutineContext;
            this.decoderCoroutineContext = coroutineContext;
            return this;
        }

        public final Builder data(Object obj) {
            this.data = obj;
            return this;
        }

        public final Builder decoderCoroutineContext(CoroutineContext coroutineContext) {
            this.decoderCoroutineContext = coroutineContext;
            return this;
        }

        public final Builder decoderFactory(Decoder.Factory factory) {
            this.decoderFactory = factory;
            return this;
        }

        public final Builder defaults(Defaults defaults) {
            this.defaults = defaults;
            return this;
        }

        public final Builder diskCacheKey(String str) {
            this.diskCacheKey = str;
            return this;
        }

        public final Builder diskCachePolicy(CachePolicy cachePolicy) {
            this.diskCachePolicy = cachePolicy;
            return this;
        }

        public final Builder error(Image image) {
            return error(new ImageLoader$Builder$$ExternalSyntheticLambda3(image, 4));
        }

        public final Builder fallback(Image image) {
            return fallback(new ImageLoader$Builder$$ExternalSyntheticLambda3(image, 3));
        }

        public final Builder fetcherCoroutineContext(CoroutineContext coroutineContext) {
            this.fetcherCoroutineContext = coroutineContext;
            return this;
        }

        public final <T> Builder fetcherFactory(Fetcher.Factory<T> factory, KClass kClass) {
            this.fetcherFactory = new Pair(factory, kClass);
            return this;
        }

        public final Builder fileSystem(FileSystem fileSystem) {
            this.fileSystem = fileSystem;
            return this;
        }

        public final Extras.Builder getExtras() {
            Object obj = this.lazyExtras;
            if (obj instanceof Extras.Builder) {
                return (Extras.Builder) obj;
            }
            if (!(obj instanceof Extras)) {
                throw new AssertionError();
            }
            Extras.Builder newBuilder = ((Extras) obj).newBuilder();
            this.lazyExtras = newBuilder;
            return newBuilder;
        }

        public final Builder interceptorCoroutineContext(CoroutineContext coroutineContext) {
            this.interceptorCoroutineContext = coroutineContext;
            return this;
        }

        public final Builder listener(Function1 function1, Function1 function12, Function2 function2, Function2 function22) {
            return listener(new ImageRequest$Builder$listener$5(function1, function12, function2, function22));
        }

        public final Builder memoryCacheKey(MemoryCache.Key key) {
            memoryCacheKey(key != null ? key.getKey() : null);
            Map<String, String> extras = key != null ? key.getExtras() : null;
            if (extras == null) {
                extras = EmptyMap.INSTANCE;
            }
            memoryCacheKeyExtras(extras);
            return this;
        }

        public final Builder memoryCacheKeyExtra(String str, String str2) {
            if (str2 != null) {
                getMemoryCacheKeyExtras().put(str, str2);
                return this;
            }
            getMemoryCacheKeyExtras().remove(str);
            return this;
        }

        public final Builder memoryCacheKeyExtras(Map<String, String> map) {
            this.lazyMemoryCacheKeyExtras = MapsKt__MapsKt.toMutableMap(map);
            this.memoryCacheKeyExtrasAreMutable = true;
            return this;
        }

        public final Builder memoryCachePolicy(CachePolicy cachePolicy) {
            this.memoryCachePolicy = cachePolicy;
            return this;
        }

        public final Builder networkCachePolicy(CachePolicy cachePolicy) {
            this.networkCachePolicy = cachePolicy;
            return this;
        }

        public final Builder placeholder(Image image) {
            return placeholder(new ImageLoader$Builder$$ExternalSyntheticLambda3(image, 5));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Builder placeholderMemoryCacheKey(String str) {
            MemoryCache.Key key = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            if (str != null) {
                key = new MemoryCache.Key(str, objArr2 == true ? 1 : 0, 2, objArr == true ? 1 : 0);
            }
            return placeholderMemoryCacheKey(key);
        }

        public final Builder precision(Precision precision) {
            this.precision = precision;
            return this;
        }

        public final Builder scale(Scale scale) {
            this.scale = scale;
            return this;
        }

        public final Builder size(Dimension dimension, Dimension dimension2) {
            return size(new Size(dimension, dimension2));
        }

        public final Builder target(Function1 function1, Function1 function12, Function1 function13) {
            return target(new ImageRequest$Builder$target$4(function1, function12, function13));
        }

        public final <T> Builder fetcherFactory(Fetcher.Factory<T> factory) {
            throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
        }

        public final Builder listener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public final Builder size(int i, int i2) {
            return size(SizeKt.Size(i, i2));
        }

        public final Builder target(Target target) {
            this.target = target;
            return this;
        }

        public final Builder error(Function1 function1) {
            this.errorFactory = function1;
            return this;
        }

        public final Builder fallback(Function1 function1) {
            this.fallbackFactory = function1;
            return this;
        }

        public final Builder placeholder(Function1 function1) {
            this.placeholderFactory = function1;
            return this;
        }

        public final Builder size(int i) {
            return size(SizeKt.Size(i, i));
        }

        public final Builder size(Size size) {
            return size(SizeResolverKt.SizeResolver(size));
        }

        public final Builder size(SizeResolver sizeResolver) {
            this.sizeResolver = sizeResolver;
            return this;
        }

        public final Builder placeholderMemoryCacheKey(MemoryCache.Key key) {
            this.placeholderMemoryCacheKey = key;
            return this;
        }

        public final Builder memoryCacheKey(String str) {
            this.memoryCacheKey = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Image error$lambda$0(Image image, ImageRequest imageRequest) {
            return image;
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
            this.context = context;
            this.defaults = Defaults.DEFAULT;
            this.data = null;
            this.target = null;
            this.listener = null;
            this.memoryCacheKey = null;
            this.lazyMemoryCacheKeyExtras = EmptyMap.INSTANCE;
            this.diskCacheKey = null;
            this.fileSystem = null;
            this.fetcherFactory = null;
            this.decoderFactory = null;
            this.interceptorCoroutineContext = null;
            this.fetcherCoroutineContext = null;
            this.decoderCoroutineContext = null;
            this.memoryCachePolicy = null;
            this.diskCachePolicy = null;
            this.networkCachePolicy = null;
            this.placeholderMemoryCacheKey = null;
            this.placeholderFactory = UtilsKt.getEMPTY_IMAGE_FACTORY();
            this.errorFactory = UtilsKt.getEMPTY_IMAGE_FACTORY();
            this.fallbackFactory = UtilsKt.getEMPTY_IMAGE_FACTORY();
            this.sizeResolver = null;
            this.scale = null;
            this.precision = null;
            this.lazyExtras = Extras.EMPTY;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(ImageRequest imageRequest) {
            this(imageRequest, null, 2, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Builder(ImageRequest imageRequest, Context context, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(imageRequest, (i & 2) != 0 ? imageRequest.getContext() : context);
        }
    }

    public final Builder newBuilder(Context context) {
        return new Builder(this, context);
    }

    public /* synthetic */ ImageRequest(Context context, Object obj, Target target, Listener listener, String str, Map map, String str2, FileSystem fileSystem, Pair pair, Decoder.Factory factory, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, MemoryCache.Key key, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras, Defined defined, Defaults defaults, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, obj, target, listener, str, map, str2, fileSystem, pair, factory, coroutineContext, coroutineContext2, coroutineContext3, cachePolicy, cachePolicy2, cachePolicy3, key, function1, function12, function13, sizeResolver, scale, precision, extras, defined, defaults);
    }
}

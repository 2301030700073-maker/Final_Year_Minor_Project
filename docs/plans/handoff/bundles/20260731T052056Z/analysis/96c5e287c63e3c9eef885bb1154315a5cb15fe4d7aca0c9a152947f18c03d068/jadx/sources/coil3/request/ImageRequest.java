package coil3.request;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import coil3.Extras;
import coil3.size.Precision;
import coil3.size.RealSizeResolver;
import coil3.size.Scale;
import coil3.size.SizeResolver;
import coil3.target.Target;
import coil3.util.UtilsKt$EMPTY_IMAGE_FACTORY$1;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okio.FileSystem;
import okio.JvmSystemFileSystem;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageRequest {
    public final Context context;
    public final Object data;
    public final CoroutineContext decoderCoroutineContext;
    public final Defaults defaults;
    public final Defined defined;
    public final CachePolicy diskCachePolicy;
    public final Function1 errorFactory;
    public final Extras extras;
    public final Function1 fallbackFactory;
    public final CoroutineContext fetcherCoroutineContext;
    public final FileSystem fileSystem;
    public final CoroutineContext interceptorCoroutineContext;
    public final Listener listener;
    public final Map memoryCacheKeyExtras;
    public final CachePolicy memoryCachePolicy;
    public final CachePolicy networkCachePolicy;
    public final Function1 placeholderFactory;
    public final Precision precision;
    public final Scale scale;
    public final SizeResolver sizeResolver;
    public final Target target;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Defaults {
        public static final Defaults DEFAULT;
        public final CoroutineContext decoderCoroutineContext;
        public final CachePolicy diskCachePolicy;
        public final Function1 errorFactory;
        public final Extras extras;
        public final Function1 fallbackFactory;
        public final CoroutineContext fetcherCoroutineContext;
        public final FileSystem fileSystem;
        public final CoroutineContext interceptorCoroutineContext;
        public final CachePolicy memoryCachePolicy;
        public final CachePolicy networkCachePolicy;
        public final Function1 placeholderFactory;
        public final Precision precision;
        public final Scale scale;
        public final SizeResolver sizeResolver;

        static {
            JvmSystemFileSystem jvmSystemFileSystem = FileSystem.SYSTEM;
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
            CachePolicy cachePolicy = CachePolicy.ENABLED;
            RealSizeResolver realSizeResolver = SizeResolver.ORIGINAL;
            Scale scale = Scale.FIT;
            Precision precision = Precision.EXACT;
            Extras extras = Extras.EMPTY;
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
            UtilsKt$EMPTY_IMAGE_FACTORY$1 utilsKt$EMPTY_IMAGE_FACTORY$1 = UtilsKt$EMPTY_IMAGE_FACTORY$1.INSTANCE;
            DEFAULT = new Defaults(jvmSystemFileSystem, emptyCoroutineContext, defaultIoScheduler, defaultIoScheduler, cachePolicy, cachePolicy, cachePolicy, utilsKt$EMPTY_IMAGE_FACTORY$1, utilsKt$EMPTY_IMAGE_FACTORY$1, utilsKt$EMPTY_IMAGE_FACTORY$1, realSizeResolver, scale, precision, extras);
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

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Defaults)) {
                return false;
            }
            Defaults defaults = (Defaults) obj;
            return Intrinsics.areEqual(this.fileSystem, defaults.fileSystem) && Intrinsics.areEqual(this.interceptorCoroutineContext, defaults.interceptorCoroutineContext) && Intrinsics.areEqual(this.fetcherCoroutineContext, defaults.fetcherCoroutineContext) && Intrinsics.areEqual(this.decoderCoroutineContext, defaults.decoderCoroutineContext) && this.memoryCachePolicy == defaults.memoryCachePolicy && this.diskCachePolicy == defaults.diskCachePolicy && this.networkCachePolicy == defaults.networkCachePolicy && Intrinsics.areEqual(this.placeholderFactory, defaults.placeholderFactory) && Intrinsics.areEqual(this.errorFactory, defaults.errorFactory) && Intrinsics.areEqual(this.fallbackFactory, defaults.fallbackFactory) && Intrinsics.areEqual(this.sizeResolver, defaults.sizeResolver) && this.scale == defaults.scale && this.precision == defaults.precision && Intrinsics.areEqual(this.extras, defaults.extras);
        }

        public final int hashCode() {
            return this.extras.data.hashCode() + ((this.precision.hashCode() + ((this.scale.hashCode() + ((this.sizeResolver.hashCode() + ((this.fallbackFactory.hashCode() + ((this.errorFactory.hashCode() + ((this.placeholderFactory.hashCode() + ((this.networkCachePolicy.hashCode() + ((this.diskCachePolicy.hashCode() + ((this.memoryCachePolicy.hashCode() + ((this.decoderCoroutineContext.hashCode() + ((this.fetcherCoroutineContext.hashCode() + ((this.interceptorCoroutineContext.hashCode() + (this.fileSystem.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "Defaults(fileSystem=" + this.fileSystem + ", interceptorCoroutineContext=" + this.interceptorCoroutineContext + ", fetcherCoroutineContext=" + this.fetcherCoroutineContext + ", decoderCoroutineContext=" + this.decoderCoroutineContext + ", memoryCachePolicy=" + this.memoryCachePolicy + ", diskCachePolicy=" + this.diskCachePolicy + ", networkCachePolicy=" + this.networkCachePolicy + ", placeholderFactory=" + this.placeholderFactory + ", errorFactory=" + this.errorFactory + ", fallbackFactory=" + this.fallbackFactory + ", sizeResolver=" + this.sizeResolver + ", scale=" + this.scale + ", precision=" + this.precision + ", extras=" + this.extras + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Defined {
        public final CoroutineContext decoderCoroutineContext;
        public final Function1 errorFactory;
        public final CoroutineContext fetcherCoroutineContext;
        public final CoroutineContext interceptorCoroutineContext;
        public final Function1 placeholderFactory;
        public final Precision precision;
        public final Scale scale;
        public final SizeResolver sizeResolver;

        public Defined(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, Function1 function1, Function1 function12, SizeResolver sizeResolver, Scale scale, Precision precision) {
            this.interceptorCoroutineContext = coroutineContext;
            this.fetcherCoroutineContext = coroutineContext2;
            this.decoderCoroutineContext = coroutineContext3;
            this.placeholderFactory = function1;
            this.errorFactory = function12;
            this.sizeResolver = sizeResolver;
            this.scale = scale;
            this.precision = precision;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Defined)) {
                return false;
            }
            Defined defined = (Defined) obj;
            return Intrinsics.areEqual(this.interceptorCoroutineContext, defined.interceptorCoroutineContext) && Intrinsics.areEqual(this.fetcherCoroutineContext, defined.fetcherCoroutineContext) && Intrinsics.areEqual(this.decoderCoroutineContext, defined.decoderCoroutineContext) && this.placeholderFactory.equals(defined.placeholderFactory) && this.errorFactory.equals(defined.errorFactory) && Intrinsics.areEqual(this.sizeResolver, defined.sizeResolver) && this.scale == defined.scale && this.precision == defined.precision;
        }

        public final int hashCode() {
            CoroutineContext coroutineContext = this.interceptorCoroutineContext;
            int hashCode = (coroutineContext == null ? 0 : coroutineContext.hashCode()) * 31;
            CoroutineContext coroutineContext2 = this.fetcherCoroutineContext;
            int hashCode2 = (hashCode + (coroutineContext2 == null ? 0 : coroutineContext2.hashCode())) * 31;
            CoroutineContext coroutineContext3 = this.decoderCoroutineContext;
            int hashCode3 = (UtilsKt$EMPTY_IMAGE_FACTORY$1.INSTANCE.hashCode() + ((this.errorFactory.hashCode() + ((this.placeholderFactory.hashCode() + ((hashCode2 + (coroutineContext3 == null ? 0 : coroutineContext3.hashCode())) * 923521)) * 31)) * 31)) * 31;
            SizeResolver sizeResolver = this.sizeResolver;
            int hashCode4 = (hashCode3 + (sizeResolver == null ? 0 : sizeResolver.hashCode())) * 31;
            Scale scale = this.scale;
            int hashCode5 = (hashCode4 + (scale == null ? 0 : scale.hashCode())) * 31;
            Precision precision = this.precision;
            return hashCode5 + (precision != null ? precision.hashCode() : 0);
        }

        public final String toString() {
            return "Defined(fileSystem=null, interceptorCoroutineContext=" + this.interceptorCoroutineContext + ", fetcherCoroutineContext=" + this.fetcherCoroutineContext + ", decoderCoroutineContext=" + this.decoderCoroutineContext + ", memoryCachePolicy=null, diskCachePolicy=null, networkCachePolicy=null, placeholderFactory=" + this.placeholderFactory + ", errorFactory=" + this.errorFactory + ", fallbackFactory=" + UtilsKt$EMPTY_IMAGE_FACTORY$1.INSTANCE + ", sizeResolver=" + this.sizeResolver + ", scale=" + this.scale + ", precision=" + this.precision + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Listener {
        void onError(ImageRequest imageRequest, ErrorResult errorResult);

        void onSuccess(ImageRequest imageRequest, SuccessResult successResult);
    }

    public ImageRequest(Context context, Object obj, Target target, Listener listener, Map map, FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras, Defined defined, Defaults defaults) {
        this.context = context;
        this.data = obj;
        this.target = target;
        this.listener = listener;
        this.memoryCacheKeyExtras = map;
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
        this.defined = defined;
        this.defaults = defaults;
    }

    public static Builder newBuilder$default(ImageRequest imageRequest) {
        Context context = imageRequest.context;
        imageRequest.getClass();
        return new Builder(imageRequest, context);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageRequest)) {
            return false;
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        return Intrinsics.areEqual(this.context, imageRequest.context) && this.data.equals(imageRequest.data) && Intrinsics.areEqual(this.target, imageRequest.target) && Intrinsics.areEqual(this.listener, imageRequest.listener) && this.memoryCacheKeyExtras.equals(imageRequest.memoryCacheKeyExtras) && Intrinsics.areEqual(this.fileSystem, imageRequest.fileSystem) && Intrinsics.areEqual(this.interceptorCoroutineContext, imageRequest.interceptorCoroutineContext) && Intrinsics.areEqual(this.fetcherCoroutineContext, imageRequest.fetcherCoroutineContext) && Intrinsics.areEqual(this.decoderCoroutineContext, imageRequest.decoderCoroutineContext) && this.memoryCachePolicy == imageRequest.memoryCachePolicy && this.diskCachePolicy == imageRequest.diskCachePolicy && this.networkCachePolicy == imageRequest.networkCachePolicy && Intrinsics.areEqual(this.placeholderFactory, imageRequest.placeholderFactory) && Intrinsics.areEqual(this.errorFactory, imageRequest.errorFactory) && Intrinsics.areEqual(this.fallbackFactory, imageRequest.fallbackFactory) && Intrinsics.areEqual(this.sizeResolver, imageRequest.sizeResolver) && this.scale == imageRequest.scale && this.precision == imageRequest.precision && this.extras.equals(imageRequest.extras) && this.defined.equals(imageRequest.defined) && Intrinsics.areEqual(this.defaults, imageRequest.defaults);
    }

    public final int hashCode() {
        int hashCode = (this.data.hashCode() + (this.context.hashCode() * 31)) * 31;
        Target target = this.target;
        int hashCode2 = (hashCode + (target == null ? 0 : target.hashCode())) * 31;
        Listener listener = this.listener;
        return this.defaults.hashCode() + ((this.defined.hashCode() + ((this.extras.data.hashCode() + ((this.precision.hashCode() + ((this.scale.hashCode() + ((this.sizeResolver.hashCode() + ((this.fallbackFactory.hashCode() + ((this.errorFactory.hashCode() + ((this.placeholderFactory.hashCode() + ((this.networkCachePolicy.hashCode() + ((this.diskCachePolicy.hashCode() + ((this.memoryCachePolicy.hashCode() + ((this.decoderCoroutineContext.hashCode() + ((this.fetcherCoroutineContext.hashCode() + ((this.interceptorCoroutineContext.hashCode() + ((this.fileSystem.hashCode() + ((this.memoryCacheKeyExtras.hashCode() + ((hashCode2 + (listener != null ? listener.hashCode() : 0)) * 961)) * 961)) * 29791)) * 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ImageRequest(context=" + this.context + ", data=" + this.data + ", target=" + this.target + ", listener=" + this.listener + ", memoryCacheKey=null, memoryCacheKeyExtras=" + this.memoryCacheKeyExtras + ", diskCacheKey=null, fileSystem=" + this.fileSystem + ", fetcherFactory=null, decoderFactory=null, interceptorCoroutineContext=" + this.interceptorCoroutineContext + ", fetcherCoroutineContext=" + this.fetcherCoroutineContext + ", decoderCoroutineContext=" + this.decoderCoroutineContext + ", memoryCachePolicy=" + this.memoryCachePolicy + ", diskCachePolicy=" + this.diskCachePolicy + ", networkCachePolicy=" + this.networkCachePolicy + ", placeholderMemoryCacheKey=null, placeholderFactory=" + this.placeholderFactory + ", errorFactory=" + this.errorFactory + ", fallbackFactory=" + this.fallbackFactory + ", sizeResolver=" + this.sizeResolver + ", scale=" + this.scale + ", precision=" + this.precision + ", extras=" + this.extras + ", defined=" + this.defined + ", defaults=" + this.defaults + ")";
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public final Context context;
        public Object data;
        public CoroutineContext decoderCoroutineContext;
        public Defaults defaults;
        public Function1 errorFactory;
        public CoroutineContext fetcherCoroutineContext;
        public CoroutineContext interceptorCoroutineContext;
        public Object lazyExtras;
        public Map lazyMemoryCacheKeyExtras;
        public Listener listener;
        public boolean memoryCacheKeyExtrasAreMutable;
        public Function1 placeholderFactory;
        public Precision precision;
        public Scale scale;
        public SizeResolver sizeResolver;
        public Target target;

        public Builder(ImageRequest imageRequest, Context context) {
            this.context = context;
            this.defaults = imageRequest.defaults;
            this.data = imageRequest.data;
            this.target = imageRequest.target;
            this.listener = imageRequest.listener;
            this.lazyMemoryCacheKeyExtras = imageRequest.memoryCacheKeyExtras;
            Defined defined = imageRequest.defined;
            this.interceptorCoroutineContext = defined.interceptorCoroutineContext;
            this.fetcherCoroutineContext = defined.fetcherCoroutineContext;
            this.decoderCoroutineContext = defined.decoderCoroutineContext;
            this.placeholderFactory = defined.placeholderFactory;
            this.errorFactory = defined.errorFactory;
            this.sizeResolver = defined.sizeResolver;
            this.scale = defined.scale;
            this.precision = defined.precision;
            this.lazyExtras = imageRequest.extras;
        }

        public final ImageRequest build() {
            Extras extras;
            Object obj = this.data;
            if (obj == null) {
                obj = NullRequestData.INSTANCE;
            }
            Object obj2 = obj;
            Target target = this.target;
            Listener listener = this.listener;
            Map map = this.lazyMemoryCacheKeyExtras;
            if (Intrinsics.areEqual(map, Boolean.valueOf(this.memoryCacheKeyExtrasAreMutable))) {
                map.getClass();
                map = ExceptionsKt.toImmutableMap(TypeIntrinsics.asMutableMap(map));
            } else if (!Animation.CC.m23m((Object) map)) {
                throw new AssertionError();
            }
            Map map2 = map;
            map2.getClass();
            Defaults defaults = this.defaults;
            FileSystem fileSystem = defaults.fileSystem;
            CachePolicy cachePolicy = defaults.memoryCachePolicy;
            CachePolicy cachePolicy2 = defaults.diskCachePolicy;
            CachePolicy cachePolicy3 = defaults.networkCachePolicy;
            CoroutineContext coroutineContext = this.interceptorCoroutineContext;
            if (coroutineContext == null) {
                coroutineContext = defaults.interceptorCoroutineContext;
            }
            CoroutineContext coroutineContext2 = coroutineContext;
            CoroutineContext coroutineContext3 = this.fetcherCoroutineContext;
            if (coroutineContext3 == null) {
                coroutineContext3 = defaults.fetcherCoroutineContext;
            }
            CoroutineContext coroutineContext4 = coroutineContext3;
            CoroutineContext coroutineContext5 = this.decoderCoroutineContext;
            if (coroutineContext5 == null) {
                coroutineContext5 = defaults.decoderCoroutineContext;
            }
            CoroutineContext coroutineContext6 = coroutineContext5;
            Function1 function1 = this.placeholderFactory;
            Function1 function12 = this.errorFactory;
            SizeResolver sizeResolver = this.sizeResolver;
            if (sizeResolver == null) {
                sizeResolver = defaults.sizeResolver;
            }
            SizeResolver sizeResolver2 = sizeResolver;
            Scale scale = this.scale;
            if (scale == null) {
                scale = defaults.scale;
            }
            Scale scale2 = scale;
            Precision precision = this.precision;
            if (precision == null) {
                precision = defaults.precision;
            }
            Precision precision2 = precision;
            Object obj3 = this.lazyExtras;
            if (obj3 instanceof Extras.Builder) {
                extras = new Extras(ExceptionsKt.toImmutableMap(((Extras.Builder) obj3).data));
            } else {
                if (!(obj3 instanceof Extras)) {
                    throw new AssertionError();
                }
                extras = (Extras) obj3;
            }
            return new ImageRequest(this.context, obj2, target, listener, map2, fileSystem, coroutineContext2, coroutineContext4, coroutineContext6, cachePolicy, cachePolicy2, cachePolicy3, function1, function12, UtilsKt$EMPTY_IMAGE_FACTORY$1.INSTANCE, sizeResolver2, scale2, precision2, extras, new Defined(this.interceptorCoroutineContext, this.fetcherCoroutineContext, this.decoderCoroutineContext, this.placeholderFactory, this.errorFactory, this.sizeResolver, this.scale, this.precision), this.defaults);
        }

        public final Extras.Builder getExtras() {
            Object obj = this.lazyExtras;
            if (obj instanceof Extras.Builder) {
                return (Extras.Builder) obj;
            }
            if (!(obj instanceof Extras)) {
                throw new AssertionError();
            }
            Extras.Builder builder = new Extras.Builder((Extras) obj);
            this.lazyExtras = builder;
            return builder;
        }

        public Builder(Context context) {
            this.context = context;
            this.defaults = Defaults.DEFAULT;
            this.data = null;
            this.target = null;
            this.listener = null;
            this.lazyMemoryCacheKeyExtras = EmptyMap.INSTANCE;
            this.interceptorCoroutineContext = null;
            this.fetcherCoroutineContext = null;
            this.decoderCoroutineContext = null;
            UtilsKt$EMPTY_IMAGE_FACTORY$1 utilsKt$EMPTY_IMAGE_FACTORY$1 = UtilsKt$EMPTY_IMAGE_FACTORY$1.INSTANCE;
            this.placeholderFactory = utilsKt$EMPTY_IMAGE_FACTORY$1;
            this.errorFactory = utilsKt$EMPTY_IMAGE_FACTORY$1;
            this.sizeResolver = null;
            this.scale = null;
            this.precision = null;
            this.lazyExtras = Extras.EMPTY;
        }
    }
}

package coil3.request;

import android.content.Context;
import androidx.compose.ui.Modifier;
import coil3.Extras;
import coil3.size.Precision;
import coil3.size.RealSizeResolver;
import coil3.size.Scale;
import coil3.size.SizeResolver;
import coil3.target.Target;
import coil3.util.UtilsKt;
import coil3.util.UtilsKt$EMPTY_IMAGE_FACTORY$1;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.FileSystem;
import okio.JvmSystemFileSystem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImageRequest {
    public final Context context;
    public final Object data;
    public final CoroutineContext decoderCoroutineContext;
    public final Defaults defaults;
    public final Defined defined;
    public final String diskCacheKey;
    public final CachePolicy diskCachePolicy;
    public final Function1 errorFactory;
    public final Extras extras;
    public final Function1 fallbackFactory;
    public final CoroutineContext fetcherCoroutineContext;
    public final FileSystem fileSystem;
    public final CoroutineContext interceptorCoroutineContext;
    public final String memoryCacheKey;
    public final Map memoryCacheKeyExtras;
    public final CachePolicy memoryCachePolicy;
    public final CachePolicy networkCachePolicy;
    public final Function1 placeholderFactory;
    public final Precision precision;
    public final Scale scale;
    public final SizeResolver sizeResolver;
    public final Target target;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            RealSizeResolver realSizeResolver = SizeResolver.ORIGINAL;
            Precision precision = Precision.EXACT;
            Extras extras = Extras.EMPTY;
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
            CachePolicy cachePolicy = CachePolicy.ENABLED;
            UtilsKt$EMPTY_IMAGE_FACTORY$1 utilsKt$EMPTY_IMAGE_FACTORY$1 = UtilsKt$EMPTY_IMAGE_FACTORY$1.INSTANCE;
            DEFAULT = new Defaults(jvmSystemFileSystem, emptyCoroutineContext, defaultIoScheduler, defaultIoScheduler, cachePolicy, cachePolicy, cachePolicy, utilsKt$EMPTY_IMAGE_FACTORY$1, utilsKt$EMPTY_IMAGE_FACTORY$1, utilsKt$EMPTY_IMAGE_FACTORY$1, realSizeResolver, Scale.FIT, precision, extras);
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Defined {
        public final Function1 errorFactory;
        public final Function1 fallbackFactory;
        public final Function1 placeholderFactory;
        public final Precision precision;
        public final Scale scale;
        public final SizeResolver sizeResolver;

        public Defined(Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision) {
            this.placeholderFactory = function1;
            this.errorFactory = function12;
            this.fallbackFactory = function13;
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
            return Intrinsics.areEqual(this.placeholderFactory, defined.placeholderFactory) && Intrinsics.areEqual(this.errorFactory, defined.errorFactory) && Intrinsics.areEqual(this.fallbackFactory, defined.fallbackFactory) && Intrinsics.areEqual(this.sizeResolver, defined.sizeResolver) && this.scale == defined.scale && this.precision == defined.precision;
        }

        public final int hashCode() {
            Function1 function1 = this.placeholderFactory;
            int hashCode = (function1 == null ? 0 : function1.hashCode()) * 31;
            Function1 function12 = this.errorFactory;
            int hashCode2 = (hashCode + (function12 == null ? 0 : function12.hashCode())) * 31;
            Function1 function13 = this.fallbackFactory;
            int hashCode3 = (hashCode2 + (function13 == null ? 0 : function13.hashCode())) * 31;
            SizeResolver sizeResolver = this.sizeResolver;
            int hashCode4 = (hashCode3 + (sizeResolver == null ? 0 : sizeResolver.hashCode())) * 31;
            Scale scale = this.scale;
            int hashCode5 = (hashCode4 + (scale == null ? 0 : scale.hashCode())) * 31;
            Precision precision = this.precision;
            return hashCode5 + (precision != null ? precision.hashCode() : 0);
        }

        public final String toString() {
            return "Defined(fileSystem=null, interceptorCoroutineContext=null, fetcherCoroutineContext=null, decoderCoroutineContext=null, memoryCachePolicy=null, diskCachePolicy=null, networkCachePolicy=null, placeholderFactory=" + this.placeholderFactory + ", errorFactory=" + this.errorFactory + ", fallbackFactory=" + this.fallbackFactory + ", sizeResolver=" + this.sizeResolver + ", scale=" + this.scale + ", precision=" + this.precision + ")";
        }
    }

    public ImageRequest(Context context, Object obj, Target target, String str, Map map, String str2, FileSystem fileSystem, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, CoroutineContext coroutineContext3, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Function1 function1, Function1 function12, Function1 function13, SizeResolver sizeResolver, Scale scale, Precision precision, Extras extras, Defined defined, Defaults defaults) {
        this.context = context;
        this.data = obj;
        this.target = target;
        this.memoryCacheKey = str;
        this.memoryCacheKeyExtras = map;
        this.diskCacheKey = str2;
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageRequest)) {
            return false;
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        return Intrinsics.areEqual(this.context, imageRequest.context) && this.data.equals(imageRequest.data) && Intrinsics.areEqual(this.target, imageRequest.target) && Intrinsics.areEqual(this.memoryCacheKey, imageRequest.memoryCacheKey) && this.memoryCacheKeyExtras.equals(imageRequest.memoryCacheKeyExtras) && Intrinsics.areEqual(this.diskCacheKey, imageRequest.diskCacheKey) && Intrinsics.areEqual(this.fileSystem, imageRequest.fileSystem) && Intrinsics.areEqual(this.interceptorCoroutineContext, imageRequest.interceptorCoroutineContext) && Intrinsics.areEqual(this.fetcherCoroutineContext, imageRequest.fetcherCoroutineContext) && Intrinsics.areEqual(this.decoderCoroutineContext, imageRequest.decoderCoroutineContext) && this.memoryCachePolicy == imageRequest.memoryCachePolicy && this.diskCachePolicy == imageRequest.diskCachePolicy && this.networkCachePolicy == imageRequest.networkCachePolicy && Intrinsics.areEqual(this.placeholderFactory, imageRequest.placeholderFactory) && Intrinsics.areEqual(this.errorFactory, imageRequest.errorFactory) && Intrinsics.areEqual(this.fallbackFactory, imageRequest.fallbackFactory) && Intrinsics.areEqual(this.sizeResolver, imageRequest.sizeResolver) && this.scale == imageRequest.scale && this.precision == imageRequest.precision && this.extras.equals(imageRequest.extras) && this.defined.equals(imageRequest.defined) && Intrinsics.areEqual(this.defaults, imageRequest.defaults);
    }

    public final int hashCode() {
        int hashCode = (this.data.hashCode() + (this.context.hashCode() * 31)) * 31;
        Target target = this.target;
        int hashCode2 = (hashCode + (target == null ? 0 : target.hashCode())) * 961;
        String str = this.memoryCacheKey;
        int hashCode3 = (this.memoryCacheKeyExtras.hashCode() + ((hashCode2 + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        String str2 = this.diskCacheKey;
        return this.defaults.hashCode() + ((this.defined.hashCode() + ((this.extras.data.hashCode() + ((this.precision.hashCode() + ((this.scale.hashCode() + ((this.sizeResolver.hashCode() + ((this.fallbackFactory.hashCode() + ((this.errorFactory.hashCode() + ((this.placeholderFactory.hashCode() + ((this.networkCachePolicy.hashCode() + ((this.diskCachePolicy.hashCode() + ((this.memoryCachePolicy.hashCode() + ((this.decoderCoroutineContext.hashCode() + ((this.fetcherCoroutineContext.hashCode() + ((this.interceptorCoroutineContext.hashCode() + ((this.fileSystem.hashCode() + ((hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 29791)) * 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ImageRequest(context=" + this.context + ", data=" + this.data + ", target=" + this.target + ", listener=null, memoryCacheKey=" + this.memoryCacheKey + ", memoryCacheKeyExtras=" + this.memoryCacheKeyExtras + ", diskCacheKey=" + this.diskCacheKey + ", fileSystem=" + this.fileSystem + ", fetcherFactory=null, decoderFactory=null, interceptorCoroutineContext=" + this.interceptorCoroutineContext + ", fetcherCoroutineContext=" + this.fetcherCoroutineContext + ", decoderCoroutineContext=" + this.decoderCoroutineContext + ", memoryCachePolicy=" + this.memoryCachePolicy + ", diskCachePolicy=" + this.diskCachePolicy + ", networkCachePolicy=" + this.networkCachePolicy + ", placeholderMemoryCacheKey=null, placeholderFactory=" + this.placeholderFactory + ", errorFactory=" + this.errorFactory + ", fallbackFactory=" + this.fallbackFactory + ", sizeResolver=" + this.sizeResolver + ", scale=" + this.scale + ", precision=" + this.precision + ", extras=" + this.extras + ", defined=" + this.defined + ", defaults=" + this.defaults + ")";
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public final Context context;
        public Object data;
        public Defaults defaults;
        public String diskCacheKey;
        public Function1 errorFactory;
        public final Function1 fallbackFactory;
        public Object lazyExtras;
        public Map lazyMemoryCacheKeyExtras;
        public String memoryCacheKey;
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
            this.memoryCacheKey = imageRequest.memoryCacheKey;
            this.lazyMemoryCacheKeyExtras = imageRequest.memoryCacheKeyExtras;
            this.diskCacheKey = imageRequest.diskCacheKey;
            Defined defined = imageRequest.defined;
            this.placeholderFactory = defined.placeholderFactory;
            this.errorFactory = defined.errorFactory;
            this.fallbackFactory = defined.fallbackFactory;
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
            String str = this.memoryCacheKey;
            Map map = this.lazyMemoryCacheKeyExtras;
            if (Intrinsics.areEqual(map, Boolean.valueOf(this.memoryCacheKeyExtrasAreMutable))) {
                map.getClass();
                map = UtilsKt.toImmutableMap(TypeIntrinsics.asMutableMap(map));
            } else if (!Modifier.CC.m182m((Object) map)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m();
                return null;
            }
            Map map2 = map;
            map2.getClass();
            String str2 = this.diskCacheKey;
            Defaults defaults = this.defaults;
            FileSystem fileSystem = defaults.fileSystem;
            CachePolicy cachePolicy = defaults.memoryCachePolicy;
            CachePolicy cachePolicy2 = defaults.diskCachePolicy;
            CachePolicy cachePolicy3 = defaults.networkCachePolicy;
            CoroutineContext coroutineContext = defaults.interceptorCoroutineContext;
            CoroutineContext coroutineContext2 = defaults.fetcherCoroutineContext;
            CoroutineContext coroutineContext3 = defaults.decoderCoroutineContext;
            Function1 function1 = this.placeholderFactory;
            if (function1 == null) {
                function1 = defaults.placeholderFactory;
            }
            Function1 function12 = function1;
            Function1 function13 = this.errorFactory;
            if (function13 == null) {
                function13 = defaults.errorFactory;
            }
            Function1 function14 = function13;
            Function1 function15 = this.fallbackFactory;
            if (function15 == null) {
                function15 = defaults.fallbackFactory;
            }
            Function1 function16 = function15;
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
                extras = new Extras(UtilsKt.toImmutableMap(((Extras.Builder) obj3).data));
            } else {
                if (!(obj3 instanceof Extras)) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m();
                    return null;
                }
                extras = (Extras) obj3;
            }
            return new ImageRequest(this.context, obj2, target, str, map2, str2, fileSystem, coroutineContext, coroutineContext2, coroutineContext3, cachePolicy, cachePolicy2, cachePolicy3, function12, function14, function16, sizeResolver2, scale2, precision2, extras, new Defined(this.placeholderFactory, this.errorFactory, this.fallbackFactory, this.sizeResolver, this.scale, this.precision), this.defaults);
        }

        public Builder(Context context) {
            this.context = context;
            this.defaults = Defaults.DEFAULT;
            this.data = null;
            this.target = null;
            this.memoryCacheKey = null;
            this.lazyMemoryCacheKeyExtras = EmptyMap.INSTANCE;
            this.diskCacheKey = null;
            UtilsKt$EMPTY_IMAGE_FACTORY$1 utilsKt$EMPTY_IMAGE_FACTORY$1 = UtilsKt$EMPTY_IMAGE_FACTORY$1.INSTANCE;
            this.placeholderFactory = utilsKt$EMPTY_IMAGE_FACTORY$1;
            this.errorFactory = utilsKt$EMPTY_IMAGE_FACTORY$1;
            this.fallbackFactory = utilsKt$EMPTY_IMAGE_FACTORY$1;
            this.sizeResolver = null;
            this.scale = null;
            this.precision = null;
            this.lazyExtras = Extras.EMPTY;
        }
    }
}

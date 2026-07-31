package coil3.util;

import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.Image;
import coil3.Uri;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.decode.DataSource;
import coil3.decode.Decoder;
import coil3.intercept.Interceptor;
import coil3.intercept.RealInterceptorChain;
import coil3.key.Keyer;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.NullRequestDataException;
import coil3.request.Options;
import coil3.size.ViewSizeResolver;
import coil3.util.Logger;
import java.io.Closeable;
import java.util.List;
import kotlin.Pair;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UtilsKt {
    private static final Function1 EMPTY_IMAGE_FACTORY = new Function1() { // from class: coil3.util.UtilsKt$EMPTY_IMAGE_FACTORY$1
        @Override // kotlin.jvm.functions.Function1
        public final Void invoke(ImageRequest imageRequest) {
            return null;
        }
    };
    public static final String MIME_TYPE_HEIC = "image/heic";
    public static final String MIME_TYPE_HEIF = "image/heif";
    public static final String MIME_TYPE_JPEG = "image/jpeg";
    public static final String MIME_TYPE_WEBP = "image/webp";
    public static final String MIME_TYPE_XML = "text/xml";
    public static final String SCHEME_FILE = "file";

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DataSource.values().length];
            try {
                iArr[DataSource.MEMORY_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DataSource.MEMORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DataSource.DISK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DataSource.NETWORK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final ErrorResult ErrorResult(ImageRequest imageRequest, Throwable th) {
        Image error;
        if (th instanceof NullRequestDataException) {
            error = imageRequest.fallback();
            if (error == null) {
                error = imageRequest.error();
            }
        } else {
            error = imageRequest.error();
        }
        return new ErrorResult(error, imageRequest, th);
    }

    public static final ComponentRegistry.Builder addFirst(ComponentRegistry.Builder builder, Pair pair) {
        if (pair != null) {
            builder.getLazyFetcherFactories$coil_core().add(0, new UtilsKt$$ExternalSyntheticLambda1(pair, 0));
        }
        return builder;
    }

    public static final void closeQuietly(Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final CoroutineDispatcher getDispatcher(CoroutineContext coroutineContext) {
        return (CoroutineDispatcher) coroutineContext.get(CoroutineDispatcher.Key);
    }

    public static final Function1 getEMPTY_IMAGE_FACTORY() {
        return EMPTY_IMAGE_FACTORY;
    }

    public static final String getEmoji(DataSource dataSource) {
        int i = WhenMappings.$EnumSwitchMapping$0[dataSource.ordinal()];
        if (i == 1 || i == 2) {
            return "🧠";
        }
        if (i == 3) {
            return "💾";
        }
        if (i == 4) {
            return "☁️";
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static final EventListener getEventListener(Interceptor.Chain chain) {
        return chain instanceof RealInterceptorChain ? ((RealInterceptorChain) chain).getEventListener() : EventListener.NONE;
    }

    public static final boolean isFileUri(Uri uri) {
        return ((uri.getScheme() != null && !Intrinsics.areEqual(uri.getScheme(), SCHEME_FILE)) || uri.getPath() == null || Utils_androidKt.isAssetUri(uri)) ? false : true;
    }

    public static final boolean isMinOrMax(int i) {
        return i == Integer.MIN_VALUE || i == Integer.MAX_VALUE;
    }

    public static final boolean isPlaceholderCached(Interceptor.Chain chain) {
        return (chain instanceof RealInterceptorChain) && ((RealInterceptorChain) chain).isPlaceholderCached();
    }

    public static final String key(ComponentRegistry componentRegistry, Object obj, Options options, Logger logger, String str) {
        List<Pair> keyers = componentRegistry.getKeyers();
        int size = keyers.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            Pair pair = keyers.get(i);
            Keyer keyer = (Keyer) pair.first;
            if (((ClassReference) ((KClass) pair.second)).isInstance(obj)) {
                keyer.getClass();
                String key = keyer.key(obj, options);
                if (key != null) {
                    return key;
                }
                z = true;
            }
        }
        if (!z && logger != null) {
            Logger.Level level = Logger.Level.Warn;
            if (logger.getMinLevel().compareTo(level) <= 0) {
                logger.log(str, level, ViewSizeResolver.CC.m("No keyer is registered for data with type '", Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName(), "'. Register Keyer<", Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName(), "> in the component registry to cache the output image in the memory cache."), null);
            }
        }
        return null;
    }

    public static final void closeQuietly(AutoCloseable autoCloseable) {
        try {
            ViewSizeResolver.CC.m(autoCloseable);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static final ComponentRegistry.Builder addFirst(ComponentRegistry.Builder builder, Decoder.Factory factory) {
        if (factory != null) {
            builder.getLazyDecoderFactories$coil_core().add(0, new UtilsKt$$ExternalSyntheticLambda2(factory, 0));
        }
        return builder;
    }

    public static /* synthetic */ void getDispatcher$annotations(CoroutineContext coroutineContext) {
    }
}

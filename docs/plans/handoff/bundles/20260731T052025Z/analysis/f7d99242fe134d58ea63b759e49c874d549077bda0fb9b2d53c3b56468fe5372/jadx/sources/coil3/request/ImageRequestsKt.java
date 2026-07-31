package coil3.request;

import coil3.Extras;
import coil3.ExtrasKt;
import coil3.ImageLoader;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.request.ImageRequest;
import coil3.size.Size;
import coil3.size.SizeKt;
import coil3.transform.Transformation;
import coil3.util.Collections_jvmCommonKt;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageRequestsKt {
    public static final int DEFAULT_CROSSFADE_MILLIS = 200;
    private static final Extras.Key<List<Transformation>> transformationsKey = new Extras.Key<>(EmptyList.INSTANCE);
    private static final Extras.Key<Size> maxBitmapSizeKey = new Extras.Key<>(SizeKt.Size(4096, 4096));
    private static final Extras.Key<Boolean> addLastModifiedToFileCacheKeyKey = new Extras.Key<>(Boolean.FALSE);
    private static final Extras.Key<Boolean> allowConversionToBitmapKey = new Extras.Key<>(Boolean.TRUE);

    public static final ImageRequest.Builder addLastModifiedToFileCacheKey(ImageRequest.Builder builder, boolean z) {
        builder.getExtras().set(addLastModifiedToFileCacheKeyKey, Boolean.valueOf(z));
        return builder;
    }

    public static final ImageRequest.Builder allowConversionToBitmap(ImageRequest.Builder builder, boolean z) {
        builder.getExtras().set(allowConversionToBitmapKey, Boolean.valueOf(z));
        return builder;
    }

    public static final ImageRequest.Builder crossfade(ImageRequest.Builder builder, boolean z) {
        return ImageRequests_androidKt.crossfade(builder, z ? 200 : 0);
    }

    public static final boolean getAddLastModifiedToFileCacheKey(ImageRequest imageRequest) {
        return ((Boolean) ExtrasKt.getExtra(imageRequest, addLastModifiedToFileCacheKeyKey)).booleanValue();
    }

    public static final boolean getAllowConversionToBitmap(ImageRequest imageRequest) {
        return ((Boolean) ExtrasKt.getExtra(imageRequest, allowConversionToBitmapKey)).booleanValue();
    }

    public static final Size getMaxBitmapSize(ImageRequest imageRequest) {
        return (Size) ExtrasKt.getExtra(imageRequest, maxBitmapSizeKey);
    }

    public static final List<Transformation> getTransformations(ImageRequest imageRequest) {
        return (List) ExtrasKt.getExtra(imageRequest, transformationsKey);
    }

    public static final ImageRequest.Builder maxBitmapSize(ImageRequest.Builder builder, Size size) {
        builder.getExtras().set(maxBitmapSizeKey, size);
        return builder;
    }

    public static final ImageRequest.Builder transformations(ImageRequest.Builder builder, List<? extends Transformation> list) {
        builder.getExtras().set(transformationsKey, Collections_jvmCommonKt.toImmutableList(list));
        builder.memoryCacheKeyExtra("coil#transformations", CollectionsKt.joinToString$default(list, null, null, null, new DiskLruCache$$ExternalSyntheticLambda0(29, new Ref$IntRef()), 31));
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence transformations$lambda$0$0(Ref$IntRef ref$IntRef, Transformation transformation) {
        int i = ref$IntRef.element;
        ref$IntRef.element = i + 1;
        return i + ":" + transformation.getCacheKey();
    }

    public static final Size getMaxBitmapSize(Options options) {
        return (Size) ExtrasKt.getExtra(options, maxBitmapSizeKey);
    }

    public static final List<Transformation> getTransformations(Options options) {
        return (List) ExtrasKt.getExtra(options, transformationsKey);
    }

    public static final Extras.Key<Size> getMaxBitmapSize(Extras.Key.Companion companion) {
        return maxBitmapSizeKey;
    }

    public static final Extras.Key<List<Transformation>> getTransformations(Extras.Key.Companion companion) {
        return transformationsKey;
    }

    public static final ImageLoader.Builder maxBitmapSize(ImageLoader.Builder builder, Size size) {
        builder.getExtras().set(maxBitmapSizeKey, size);
        return builder;
    }

    public static final ImageLoader.Builder crossfade(ImageLoader.Builder builder, boolean z) {
        return ImageRequests_androidKt.crossfade(builder, z ? 200 : 0);
    }

    public static final boolean getAddLastModifiedToFileCacheKey(Options options) {
        return ((Boolean) ExtrasKt.getExtra(options, addLastModifiedToFileCacheKeyKey)).booleanValue();
    }

    public static final boolean getAllowConversionToBitmap(Options options) {
        return ((Boolean) ExtrasKt.getExtra(options, allowConversionToBitmapKey)).booleanValue();
    }

    public static final ImageLoader.Builder addLastModifiedToFileCacheKey(ImageLoader.Builder builder, boolean z) {
        builder.getExtras().set(addLastModifiedToFileCacheKeyKey, Boolean.valueOf(z));
        return builder;
    }

    public static final ImageLoader.Builder allowConversionToBitmap(ImageLoader.Builder builder, boolean z) {
        builder.getExtras().set(allowConversionToBitmapKey, Boolean.valueOf(z));
        return builder;
    }

    public static final Extras.Key<Boolean> getAddLastModifiedToFileCacheKey(Extras.Key.Companion companion) {
        return addLastModifiedToFileCacheKeyKey;
    }

    public static final Extras.Key<Boolean> getAllowConversionToBitmap(Extras.Key.Companion companion) {
        return allowConversionToBitmapKey;
    }

    public static final ImageRequest.Builder transformations(ImageRequest.Builder builder, Transformation... transformationArr) {
        return transformations(builder, (List<? extends Transformation>) ArraysKt___ArraysKt.toList(transformationArr));
    }
}

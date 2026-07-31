package coil3.request;

import androidx.compose.animation.core.Animation;
import coil3.Extras;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.request.ImageRequest;
import coil3.size.Dimension;
import coil3.size.Size;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.TypeIntrinsics;
import org.wikipedia.views.imageservice.DimImageTransformation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ImageRequestsKt {
    public static final Extras.Key addLastModifiedToFileCacheKeyKey;
    public static final Extras.Key allowConversionToBitmapKey;
    public static final Extras.Key maxBitmapSizeKey;
    public static final Extras.Key transformationsKey = new Extras.Key(EmptyList.INSTANCE);

    static {
        Dimension.Pixels.m784constructorimpl(4096);
        Dimension.Pixels pixels = new Dimension.Pixels(4096);
        Dimension.Pixels.m784constructorimpl(4096);
        maxBitmapSizeKey = new Extras.Key(new Size(pixels, new Dimension.Pixels(4096)));
        addLastModifiedToFileCacheKeyKey = new Extras.Key(Boolean.FALSE);
        allowConversionToBitmapKey = new Extras.Key(Boolean.TRUE);
    }

    public static final void transformations(ImageRequest.Builder builder, DimImageTransformation... dimImageTransformationArr) {
        List list = ArraysKt___ArraysKt.toList(dimImageTransformationArr);
        Extras.Builder extras = builder.getExtras();
        List immutableList = ExceptionsKt.toImmutableList(list);
        LinkedHashMap linkedHashMap = extras.data;
        Extras.Key key = transformationsKey;
        if (immutableList != null) {
            linkedHashMap.put(key, immutableList);
        } else {
            linkedHashMap.remove(key);
        }
        String joinToString$default = CollectionsKt.joinToString$default(list, null, null, null, new DiskLruCache$$ExternalSyntheticLambda0(20, new Ref$IntRef()), 31);
        Map map = builder.lazyMemoryCacheKeyExtras;
        if (!Intrinsics.areEqual(map, Boolean.valueOf(builder.memoryCacheKeyExtrasAreMutable))) {
            if (!Animation.CC.m23m((Object) map)) {
                throw new AssertionError();
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(map);
            builder.lazyMemoryCacheKeyExtras = linkedHashMap2;
            builder.memoryCacheKeyExtrasAreMutable = true;
            map = linkedHashMap2;
        }
        map.getClass();
        TypeIntrinsics.asMutableMap(map).put("coil#transformations", joinToString$default);
    }
}

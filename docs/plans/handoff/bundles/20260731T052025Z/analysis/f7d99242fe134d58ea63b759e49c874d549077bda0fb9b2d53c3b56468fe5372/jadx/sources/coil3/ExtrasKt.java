package coil3;

import coil3.Extras;
import coil3.request.ImageRequest;
import coil3.request.Options;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExtrasKt {
    public static final <T> T getExtra(ImageRequest imageRequest, Extras.Key<T> key) {
        T t = (T) imageRequest.getExtras().get(key);
        if (t != null) {
            return t;
        }
        T t2 = (T) imageRequest.getDefaults().getExtras().get(key);
        return t2 == null ? key.getDefault() : t2;
    }

    public static final <T> T getOrDefault(Extras extras, Extras.Key<T> key) {
        T t = (T) extras.get(key);
        return t == null ? key.getDefault() : t;
    }

    public static final Extras orEmpty(Extras extras) {
        return extras == null ? Extras.EMPTY : extras;
    }

    public static final Extras plus(Extras extras, Extras extras2) {
        return new Extras.Builder(MapsKt__MapsKt.plus(extras.asMap(), extras2.asMap())).build();
    }

    public static final <T> T getExtra(Options options, Extras.Key<T> key) {
        T t = (T) options.getExtras().get(key);
        return t == null ? key.getDefault() : t;
    }
}

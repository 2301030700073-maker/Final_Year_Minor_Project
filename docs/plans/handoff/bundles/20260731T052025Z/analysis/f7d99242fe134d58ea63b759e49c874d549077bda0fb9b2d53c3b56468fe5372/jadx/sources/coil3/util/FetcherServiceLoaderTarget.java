package coil3.util;

import coil3.fetch.Fetcher;
import kotlin.reflect.KClass;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface FetcherServiceLoaderTarget<T> {
    Fetcher.Factory<T> factory();

    int priority();

    KClass type();
}

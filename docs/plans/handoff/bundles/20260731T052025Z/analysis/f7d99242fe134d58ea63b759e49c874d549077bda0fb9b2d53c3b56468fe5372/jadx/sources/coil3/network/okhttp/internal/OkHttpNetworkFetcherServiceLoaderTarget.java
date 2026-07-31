package coil3.network.okhttp.internal;

import coil3.Uri;
import coil3.fetch.Fetcher;
import coil3.network.okhttp.OkHttpNetworkFetcher;
import coil3.util.FetcherServiceLoaderTarget;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OkHttpNetworkFetcherServiceLoaderTarget implements FetcherServiceLoaderTarget<Uri> {
    @Override // coil3.util.FetcherServiceLoaderTarget
    public int priority() {
        return 2;
    }

    @Override // coil3.util.FetcherServiceLoaderTarget
    public KClass type() {
        return Reflection.getOrCreateKotlinClass(Uri.class);
    }

    @Override // coil3.util.FetcherServiceLoaderTarget
    public Fetcher.Factory<Uri> factory() {
        return OkHttpNetworkFetcher.factory();
    }
}

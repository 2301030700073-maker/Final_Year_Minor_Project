package coil3.video.internal;

import android.media.MediaDataSource;
import coil3.fetch.Fetcher;
import coil3.util.FetcherServiceLoaderTarget;
import coil3.video.MediaDataSourceFetcher;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MediaDataSourceFetcherServiceLoaderTarget implements FetcherServiceLoaderTarget<MediaDataSource> {
    @Override // coil3.util.FetcherServiceLoaderTarget
    public Fetcher.Factory<MediaDataSource> factory() {
        return new MediaDataSourceFetcher.Factory();
    }

    @Override // coil3.util.FetcherServiceLoaderTarget
    public final /* synthetic */ int priority() {
        return 0;
    }

    @Override // coil3.util.FetcherServiceLoaderTarget
    public KClass type() {
        return Reflection.getOrCreateKotlinClass(MediaDataSource.class);
    }
}

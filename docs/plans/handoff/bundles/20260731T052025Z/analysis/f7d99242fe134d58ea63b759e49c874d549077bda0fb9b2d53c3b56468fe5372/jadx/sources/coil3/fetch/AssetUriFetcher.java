package coil3.fetch;

import coil3.ImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.decode.AssetMetadata;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import coil3.util.MimeTypeMap;
import coil3.util.Utils_androidKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import okio.Okio;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AssetUriFetcher implements Fetcher {
    private final Uri data;
    private final Options options;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(Uri uri, Options options, ImageLoader imageLoader) {
            if (Utils_androidKt.isAssetUri(uri)) {
                return new AssetUriFetcher(uri, options);
            }
            return null;
        }
    }

    public AssetUriFetcher(Uri uri, Options options) {
        this.data = uri;
        this.options = options;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        String joinToString$default = CollectionsKt.joinToString$default(CollectionsKt.drop(1, UriKt.getPathSegments(this.data)), "/", null, null, null, 62);
        return new SourceFetchResult(ImageSourceKt.ImageSource(new RealBufferedSource(Okio.source(this.options.getContext().getAssets().open(joinToString$default))), this.options.getFileSystem(), new AssetMetadata(joinToString$default)), MimeTypeMap.INSTANCE.getMimeTypeFromUrl(joinToString$default), DataSource.DISK);
    }
}

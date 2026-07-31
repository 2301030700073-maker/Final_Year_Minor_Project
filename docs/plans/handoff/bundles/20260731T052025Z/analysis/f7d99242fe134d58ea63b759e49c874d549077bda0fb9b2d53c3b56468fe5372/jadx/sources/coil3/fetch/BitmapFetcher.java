package coil3.fetch;

import android.graphics.Bitmap;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.decode.DataSource;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BitmapFetcher implements Fetcher {
    private final Bitmap data;

    public BitmapFetcher(Bitmap bitmap) {
        this.data = bitmap;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        return new ImageFetchResult(Image_androidKt.asImage$default(this.data, false, 1, null), false, DataSource.MEMORY);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<Bitmap> {
        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(Bitmap bitmap, Options options, ImageLoader imageLoader) {
            return new BitmapFetcher(bitmap);
        }
    }
}

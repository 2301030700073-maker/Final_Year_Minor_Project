package coil3.fetch;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.decode.DataSource;
import coil3.fetch.Fetcher;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.util.DrawableUtils;
import coil3.util.Utils_androidKt;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DrawableFetcher implements Fetcher {
    private final Drawable data;
    private final Options options;

    public DrawableFetcher(Drawable drawable, Options options) {
        this.data = drawable;
        this.options = options;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        Drawable drawable;
        boolean isVector = Utils_androidKt.isVector(this.data);
        if (isVector) {
            drawable = new BitmapDrawable(this.options.getContext().getResources(), DrawableUtils.INSTANCE.convertToBitmap(this.data, ImageRequests_androidKt.getBitmapConfig(this.options), this.options.getSize(), this.options.getScale(), ImageRequestsKt.getMaxBitmapSize(this.options), this.options.getPrecision() == Precision.INEXACT));
        } else {
            drawable = this.data;
        }
        return new ImageFetchResult(Image_androidKt.asImage(drawable), isVector, DataSource.MEMORY);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<Drawable> {
        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(Drawable drawable, Options options, ImageLoader imageLoader) {
            return new DrawableFetcher(drawable, options);
        }
    }
}

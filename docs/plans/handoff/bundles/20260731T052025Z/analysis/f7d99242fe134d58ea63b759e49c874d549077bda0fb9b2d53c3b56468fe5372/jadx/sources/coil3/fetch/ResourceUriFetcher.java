package coil3.fetch;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.Uri;
import coil3.UriKt;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.decode.ResourceMetadata;
import coil3.fetch.Fetcher;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.util.ContextsKt;
import coil3.util.DrawableUtils;
import coil3.util.MimeTypeMap;
import coil3.util.UtilsKt;
import coil3.util.Utils_androidKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceUriFetcher implements Fetcher {
    private final Uri data;
    private final Options options;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<Uri> {
        private final boolean isApplicable(Uri uri) {
            return Intrinsics.areEqual(uri.getScheme(), "android.resource");
        }

        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(Uri uri, Options options, ImageLoader imageLoader) {
            if (isApplicable(uri)) {
                return new ResourceUriFetcher(uri, options);
            }
            return null;
        }
    }

    public ResourceUriFetcher(Uri uri, Options options) {
        this.data = uri;
        this.options = options;
    }

    private final Void throwInvalidUriException(Uri uri) {
        throw new IllegalStateException("Invalid android.resource URI: " + uri);
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        Integer intOrNull;
        String authority = this.data.getAuthority();
        if (authority != null) {
            if (StringsKt.isBlank(authority)) {
                authority = null;
            }
            if (authority != null) {
                String str = (String) CollectionsKt.lastOrNull(UriKt.getPathSegments(this.data));
                if (str == null || (intOrNull = StringsKt__StringsJVMKt.toIntOrNull(str)) == null) {
                    throwInvalidUriException(this.data);
                    _UtilJvmKt$$ExternalSyntheticLambda0.m();
                    return null;
                }
                int intValue = intOrNull.intValue();
                Context context = this.options.getContext();
                Resources resources = authority.equals(context.getPackageName()) ? context.getResources() : context.getPackageManager().getResourcesForApplication(authority);
                TypedValue typedValue = new TypedValue();
                resources.getValue(intValue, typedValue, true);
                String mimeTypeFromUrl = MimeTypeMap.INSTANCE.getMimeTypeFromUrl(typedValue.string.toString());
                if (!Intrinsics.areEqual(mimeTypeFromUrl, UtilsKt.MIME_TYPE_XML)) {
                    TypedValue typedValue2 = new TypedValue();
                    return new SourceFetchResult(ImageSourceKt.ImageSource(new RealBufferedSource(Okio.source(resources.openRawResource(intValue, typedValue2))), this.options.getFileSystem(), new ResourceMetadata(authority, intValue, typedValue2.density)), mimeTypeFromUrl, DataSource.DISK);
                }
                Drawable drawableCompat = authority.equals(context.getPackageName()) ? ContextsKt.getDrawableCompat(context, intValue) : ContextsKt.getXmlDrawableCompat(context, resources, intValue);
                boolean isVector = Utils_androidKt.isVector(drawableCompat);
                if (isVector) {
                    drawableCompat = new BitmapDrawable(context.getResources(), DrawableUtils.INSTANCE.convertToBitmap(drawableCompat, ImageRequests_androidKt.getBitmapConfig(this.options), this.options.getSize(), this.options.getScale(), ImageRequestsKt.getMaxBitmapSize(this.options), this.options.getPrecision() == Precision.INEXACT));
                }
                return new ImageFetchResult(Image_androidKt.asImage(drawableCompat), isVector, DataSource.DISK);
            }
        }
        throwInvalidUriException(this.data);
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return null;
    }
}

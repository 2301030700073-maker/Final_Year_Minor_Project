package coil3.fetch;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import coil3.ImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.Uri_androidKt;
import coil3.decode.ContentMetadata;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import coil3.size.Dimension;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentUriFetcher implements Fetcher {
    private final Uri data;
    private final Options options;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<Uri> {
        private final boolean isApplicable(Uri uri) {
            return Intrinsics.areEqual(uri.getScheme(), "content");
        }

        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(Uri uri, Options options, ImageLoader imageLoader) {
            if (isApplicable(uri)) {
                return new ContentUriFetcher(uri, options);
            }
            return null;
        }
    }

    public ContentUriFetcher(Uri uri, Options options) {
        this.data = uri;
        this.options = options;
    }

    private final Bundle newMusicThumbnailSizeOptions() {
        Dimension width = this.options.getSize().getWidth();
        Dimension.Pixels pixels = width instanceof Dimension.Pixels ? (Dimension.Pixels) width : null;
        if (pixels != null) {
            int m908unboximpl = pixels.m908unboximpl();
            Dimension height = this.options.getSize().getHeight();
            Dimension.Pixels pixels2 = height instanceof Dimension.Pixels ? (Dimension.Pixels) height : null;
            if (pixels2 != null) {
                int m908unboximpl2 = pixels2.m908unboximpl();
                Bundle bundle = new Bundle(1);
                bundle.putParcelable("android.content.extra.SIZE", new Point(m908unboximpl, m908unboximpl2));
                return bundle;
            }
        }
        return null;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        AssetFileDescriptor openAssetFileDescriptor;
        android.net.Uri androidUri = Uri_androidKt.toAndroidUri(this.data);
        ContentResolver contentResolver = this.options.getContext().getContentResolver();
        if (isContactPhotoUri$coil_core(this.data)) {
            openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(androidUri, "r");
            if (openAssetFileDescriptor == null) {
                UriKt$$ExternalSyntheticBUOutline0.m(androidUri, "'.", "Unable to find a contact photo associated with '");
                return null;
            }
        } else if (Build.VERSION.SDK_INT < 29 || !isMusicThumbnailUri$coil_core(this.data)) {
            openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(androidUri, "r");
            if (openAssetFileDescriptor == null) {
                UriKt$$ExternalSyntheticBUOutline0.m(androidUri, "'.", "Unable to open '");
                return null;
            }
        } else {
            openAssetFileDescriptor = contentResolver.openTypedAssetFile(androidUri, "image/*", newMusicThumbnailSizeOptions(), null);
            if (openAssetFileDescriptor == null) {
                UriKt$$ExternalSyntheticBUOutline0.m(androidUri, "'.", "Unable to find a music thumbnail associated with '");
                return null;
            }
        }
        return new SourceFetchResult(ImageSourceKt.ImageSource(new RealBufferedSource(Okio.source(openAssetFileDescriptor.createInputStream())), this.options.getFileSystem(), new ContentMetadata(this.data, openAssetFileDescriptor)), contentResolver.getType(androidUri), DataSource.DISK);
    }

    public final boolean isContactPhotoUri$coil_core(Uri uri) {
        return Intrinsics.areEqual(uri.getAuthority(), "com.android.contacts") && Intrinsics.areEqual(CollectionsKt.lastOrNull(UriKt.getPathSegments(uri)), "display_photo");
    }

    public final boolean isMusicThumbnailUri$coil_core(Uri uri) {
        List<String> pathSegments;
        int size;
        return Intrinsics.areEqual(uri.getAuthority(), "media") && (size = (pathSegments = UriKt.getPathSegments(uri)).size()) >= 3 && Intrinsics.areEqual(pathSegments.get(size + (-3)), "audio") && Intrinsics.areEqual(pathSegments.get(size + (-2)), "albums");
    }
}

package coil3.decode;

import android.content.res.AssetFileDescriptor;
import coil3.Uri;
import coil3.decode.ImageSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentMetadata extends ImageSource.Metadata {
    private final AssetFileDescriptor assetFileDescriptor;
    private final Uri uri;

    public ContentMetadata(Uri uri, AssetFileDescriptor assetFileDescriptor) {
        this.uri = uri;
        this.assetFileDescriptor = assetFileDescriptor;
    }

    public final AssetFileDescriptor getAssetFileDescriptor() {
        return this.assetFileDescriptor;
    }

    public final Uri getUri() {
        return this.uri;
    }
}

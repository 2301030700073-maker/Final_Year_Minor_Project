package coil3.decode;

import coil3.decode.ImageSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AssetMetadata extends ImageSource.Metadata {
    private final String filePath;

    public AssetMetadata(String str) {
        this.filePath = str;
    }

    public final String getFilePath() {
        return this.filePath;
    }
}

package coil3.decode;

import coil3.decode.ImageSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceMetadata extends ImageSource.Metadata {
    private final int density;
    private final String packageName;
    private final int resId;

    public ResourceMetadata(String str, int i, int i2) {
        this.packageName = str;
        this.resId = i;
        this.density = i2;
    }

    public final int getDensity() {
        return this.density;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final int getResId() {
        return this.resId;
    }
}

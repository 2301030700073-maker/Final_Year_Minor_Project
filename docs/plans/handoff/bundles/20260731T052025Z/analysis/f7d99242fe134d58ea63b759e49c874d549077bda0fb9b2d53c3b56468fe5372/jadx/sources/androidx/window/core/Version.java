package androidx.window.core;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import java.math.BigInteger;
import kotlin.SynchronizedLazyImpl;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Version implements Comparable {
    public static final Version VERSION_0_1;
    public final SynchronizedLazyImpl bigInteger$delegate = new SynchronizedLazyImpl(new ImageLoader$Builder$$ExternalSyntheticLambda1(23, this));
    public final String description;
    public final int major;
    public final int minor;
    public final int patch;

    static {
        new Version(0, 0, 0, "");
        VERSION_0_1 = new Version(0, 1, 0, "");
        new Version(1, 0, 0, "");
    }

    public Version(int i, int i2, int i3, String str) {
        this.major = i;
        this.minor = i2;
        this.patch = i3;
        this.description = str;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Version version = (Version) obj;
        version.getClass();
        Object value = this.bigInteger$delegate.getValue();
        value.getClass();
        Object value2 = version.bigInteger$delegate.getValue();
        value2.getClass();
        return ((BigInteger) value).compareTo((BigInteger) value2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return this.major == version.major && this.minor == version.minor && this.patch == version.patch;
    }

    public final int hashCode() {
        return ((((527 + this.major) * 31) + this.minor) * 31) + this.patch;
    }

    public final String toString() {
        String str = this.description;
        String concat = !StringsKt.isBlank(str) ? "-".concat(str) : "";
        StringBuilder sb = new StringBuilder();
        sb.append(this.major);
        sb.append('.');
        sb.append(this.minor);
        sb.append('.');
        return CameraDevices$CC.m(sb, this.patch, concat);
    }
}

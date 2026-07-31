package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import java.util.Arrays;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmMetadataVersion extends BinaryVersion {
    public static final JvmMetadataVersion INSTANCE;
    public static final JvmMetadataVersion INSTANCE_NEXT;
    public final boolean isStrictSemantics;

    static {
        JvmMetadataVersion jvmMetadataVersion = new JvmMetadataVersion(new int[]{1, 8, 0}, false);
        INSTANCE = jvmMetadataVersion;
        int i = jvmMetadataVersion.minor;
        int i2 = jvmMetadataVersion.major;
        INSTANCE_NEXT = (i2 == 1 && i == 9) ? new JvmMetadataVersion(new int[]{2, 0, 0}, false) : new JvmMetadataVersion(new int[]{i2, i + 1, 0}, false);
        new JvmMetadataVersion(new int[0], false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmMetadataVersion(int[] iArr, boolean z) {
        super(Arrays.copyOf(iArr, iArr.length));
        iArr.getClass();
        this.isStrictSemantics = z;
    }

    public final boolean isCompatible(JvmMetadataVersion jvmMetadataVersion) {
        jvmMetadataVersion.getClass();
        JvmMetadataVersion jvmMetadataVersion2 = INSTANCE;
        int i = this.minor;
        int i2 = this.major;
        if (i2 == 2 && i == 0 && jvmMetadataVersion2.major == 1 && jvmMetadataVersion2.minor == 8) {
            return true;
        }
        if (!this.isStrictSemantics) {
            jvmMetadataVersion2 = INSTANCE_NEXT;
        }
        int i3 = jvmMetadataVersion2.major;
        int i4 = jvmMetadataVersion.major;
        if (i3 > i4 || (i3 >= i4 && jvmMetadataVersion2.minor > jvmMetadataVersion.minor)) {
            jvmMetadataVersion = jvmMetadataVersion2;
        }
        boolean z = false;
        if ((i2 == 1 && i == 0) || i2 == 0) {
            return false;
        }
        int i5 = jvmMetadataVersion.major;
        if (i2 > i5 || (i2 >= i5 && i > jvmMetadataVersion.minor)) {
            z = true;
        }
        return !z;
    }
}

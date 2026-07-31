package androidx.camera.core.internal.compat.quirk;

import androidx.camera.core.impl.Quirk;
import java.util.Arrays;
import java.util.HashSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IncorrectJpegMetadataQuirk implements Quirk {
    public static final HashSet SAMSUNG_DEVICES = new HashSet(Arrays.asList("A24", "BEYOND0", "BEYOND2"));
}

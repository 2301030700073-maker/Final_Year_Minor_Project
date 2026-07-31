package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk;
import java.util.Set;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JpegCaptureDownsizingQuirk implements SoftwareJpegEncodingPreferredQuirk {
    public static final JpegCaptureDownsizingQuirk INSTANCE = new JpegCaptureDownsizingQuirk();
    public static final Set KNOWN_AFFECTED_FRONT_CAMERA_DEVICES = Validate.setOf("redmi note 8 pro");
}

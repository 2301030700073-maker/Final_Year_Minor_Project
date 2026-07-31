package androidx.camera.camera2.compat;

import android.hardware.camera2.CaptureRequest;
import androidx.core.widget.NestedScrollView;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api35Compat {
    public static final void setFlashStrengthLevel(LinkedHashMap linkedHashMap, int i) {
        linkedHashMap.put(CaptureRequest.FLASH_STRENGTH_LEVEL, Integer.valueOf(i));
    }

    public static void setFrameContentVelocity(NestedScrollView nestedScrollView, float f) {
        try {
            nestedScrollView.setFrameContentVelocity(f);
        } catch (LinkageError unused) {
        }
    }
}

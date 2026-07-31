package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk;
import androidx.camera.core.impl.Quirks;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MaxPreviewSize {
    public final ExtraCroppingQuirk extraCroppingQuirk;

    public MaxPreviewSize(int i) {
        switch (i) {
            case 1:
                Quirks quirks = DeviceQuirks.all;
                this.extraCroppingQuirk = (ExtraCroppingQuirk) DeviceQuirks.getAll().get(ExtraCroppingQuirk.class);
                break;
            default:
                this.extraCroppingQuirk = (ExtraCroppingQuirk) DeviceQuirks.getAll().get(ExtraCroppingQuirk.class);
                break;
        }
    }
}

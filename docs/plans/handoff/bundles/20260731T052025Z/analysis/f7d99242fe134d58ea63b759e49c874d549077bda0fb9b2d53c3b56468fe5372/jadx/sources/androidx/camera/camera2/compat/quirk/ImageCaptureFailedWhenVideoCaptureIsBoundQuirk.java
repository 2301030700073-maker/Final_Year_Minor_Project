package androidx.camera.camera2.compat.quirk;

import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Quirk;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageCaptureFailedWhenVideoCaptureIsBoundQuirk implements CaptureIntentPreviewQuirk, Quirk {
    @Override // androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk
    public final boolean workaroundByCaptureIntentPreview() {
        return ActionBar.isBluStudioX10() || ActionBar.isItelW6004() || ActionBar.isVivo1805() || ActionBar.isPositivoTwist2Pro();
    }
}

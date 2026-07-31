package app.k9mail.ui.utils.itemtouchhelper;

import android.view.animation.Interpolator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ItemTouchHelper$Callback$$ExternalSyntheticLambda0 implements Interpolator {
    public final /* synthetic */ int $r8$classId;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        switch (this.$r8$classId) {
            case 0:
                return f * f * f * f * f;
            default:
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }
}

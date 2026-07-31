package androidx.core.view;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowInsetsControllerCompat$Impl35 extends WindowInsetsControllerCompat$Impl31 {
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl30, kotlin.math.MathKt
    public final boolean isAppearanceLightStatusBars() {
        return (this.mInsetsController.getSystemBarsAppearance() & 8) != 0;
    }

    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl30, kotlin.math.MathKt
    public final void setAppearanceLightNavigationBars(boolean z) {
        this.mInsetsController.setSystemBarsAppearance(z ? 16 : 0, 16);
    }

    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl30, kotlin.math.MathKt
    public final void setAppearanceLightStatusBars(boolean z) {
        this.mInsetsController.setSystemBarsAppearance(z ? 8 : 0, 8);
    }
}

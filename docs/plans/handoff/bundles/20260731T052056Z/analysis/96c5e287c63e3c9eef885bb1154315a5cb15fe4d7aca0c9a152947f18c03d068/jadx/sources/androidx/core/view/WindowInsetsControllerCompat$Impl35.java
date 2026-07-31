package androidx.core.view;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WindowInsetsControllerCompat$Impl35 extends WindowInsetsControllerCompat$Impl31 {
    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl30, coil3.util.UtilsKt
    public final boolean isAppearanceLightStatusBars() {
        return (this.mInsetsController.getSystemBarsAppearance() & 8) != 0;
    }

    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl30, coil3.util.UtilsKt
    public final void setAppearanceLightNavigationBars(boolean z) {
        this.mInsetsController.setSystemBarsAppearance(z ? 16 : 0, 16);
    }

    @Override // androidx.core.view.WindowInsetsControllerCompat$Impl30, coil3.util.UtilsKt
    public final void setAppearanceLightStatusBars(boolean z) {
        this.mInsetsController.setSystemBarsAppearance(z ? 8 : 0, 8);
    }
}

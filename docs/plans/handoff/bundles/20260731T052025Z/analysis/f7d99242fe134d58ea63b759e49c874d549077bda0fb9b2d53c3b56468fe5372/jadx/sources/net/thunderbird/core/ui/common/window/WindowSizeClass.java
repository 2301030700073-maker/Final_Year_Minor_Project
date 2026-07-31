package net.thunderbird.core.ui.common.window;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowSizeClass {
    public final WindowHeightSizeClass heightSizeClass;
    public final WindowWidthSizeClass widthSizeClass;

    public WindowSizeClass(WindowHeightSizeClass windowHeightSizeClass, WindowWidthSizeClass windowWidthSizeClass) {
        this.heightSizeClass = windowHeightSizeClass;
        this.widthSizeClass = windowWidthSizeClass;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowSizeClass)) {
            return false;
        }
        WindowSizeClass windowSizeClass = (WindowSizeClass) obj;
        return this.heightSizeClass == windowSizeClass.heightSizeClass && this.widthSizeClass == windowSizeClass.widthSizeClass;
    }

    public final int hashCode() {
        return this.widthSizeClass.hashCode() + (this.heightSizeClass.hashCode() * 31);
    }

    public final String toString() {
        return "WindowSizeClass(heightSizeClass=" + this.heightSizeClass + ", widthSizeClass=" + this.widthSizeClass + ")";
    }
}

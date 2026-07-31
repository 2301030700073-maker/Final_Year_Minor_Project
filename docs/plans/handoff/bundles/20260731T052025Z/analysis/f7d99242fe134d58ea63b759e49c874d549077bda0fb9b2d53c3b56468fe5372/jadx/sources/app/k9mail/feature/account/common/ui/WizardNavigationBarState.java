package app.k9mail.feature.account.common.ui;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WizardNavigationBarState {
    public final boolean isBackEnabled;
    public final boolean isNextEnabled;
    public final boolean showBack;
    public final boolean showNext;

    public WizardNavigationBarState(int i, boolean z, boolean z2, boolean z3) {
        boolean z4 = (i & 1) != 0;
        z = (i & 2) != 0 ? true : z;
        z2 = (i & 4) != 0 ? true : z2;
        z3 = (i & 8) != 0 ? true : z3;
        this.isNextEnabled = z4;
        this.showNext = z;
        this.isBackEnabled = z2;
        this.showBack = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WizardNavigationBarState)) {
            return false;
        }
        WizardNavigationBarState wizardNavigationBarState = (WizardNavigationBarState) obj;
        return this.isNextEnabled == wizardNavigationBarState.isNextEnabled && this.showNext == wizardNavigationBarState.showNext && this.isBackEnabled == wizardNavigationBarState.isBackEnabled && this.showBack == wizardNavigationBarState.showBack;
    }

    public final int hashCode() {
        return ((((((this.isNextEnabled ? 1231 : 1237) * 31) + (this.showNext ? 1231 : 1237)) * 31) + (this.isBackEnabled ? 1231 : 1237)) * 31) + (this.showBack ? 1231 : 1237);
    }

    public final String toString() {
        return "WizardNavigationBarState(isNextEnabled=" + this.isNextEnabled + ", showNext=" + this.showNext + ", isBackEnabled=" + this.isBackEnabled + ", showBack=" + this.showBack + ")";
    }
}

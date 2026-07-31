package net.thunderbird.core.common.mail.html;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HtmlSettings {
    public final boolean useDarkMode;
    public final boolean useFixedWidthFont;

    public HtmlSettings(boolean z, boolean z2) {
        this.useDarkMode = z;
        this.useFixedWidthFont = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HtmlSettings)) {
            return false;
        }
        HtmlSettings htmlSettings = (HtmlSettings) obj;
        return this.useDarkMode == htmlSettings.useDarkMode && this.useFixedWidthFont == htmlSettings.useFixedWidthFont;
    }

    public final int hashCode() {
        return ((this.useDarkMode ? 1231 : 1237) * 31) + (this.useFixedWidthFont ? 1231 : 1237);
    }

    public final String toString() {
        return "HtmlSettings(useDarkMode=" + this.useDarkMode + ", useFixedWidthFont=" + this.useFixedWidthFont + ")";
    }
}

package app.k9mail.feature.settings.p000import.ui;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppVersion {
    public final int minVersionCode;
    public final String packageName;

    public AppVersion(String str, int i) {
        this.packageName = str;
        this.minVersionCode = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppVersion)) {
            return false;
        }
        AppVersion appVersion = (AppVersion) obj;
        return this.packageName.equals(appVersion.packageName) && this.minVersionCode == appVersion.minVersionCode;
    }

    public final int hashCode() {
        return (this.packageName.hashCode() * 31) + this.minVersionCode;
    }

    public final String toString() {
        return "AppVersion(packageName=" + this.packageName + ", minVersionCode=" + this.minVersionCode + ")";
    }
}

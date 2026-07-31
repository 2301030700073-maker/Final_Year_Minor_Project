package net.thunderbird.core.preference.privacy;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PrivacySettings {
    public final boolean isHideTimeZone;
    public final boolean isHideUserAgent;

    public PrivacySettings(boolean z, boolean z2) {
        this.isHideTimeZone = z;
        this.isHideUserAgent = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrivacySettings)) {
            return false;
        }
        PrivacySettings privacySettings = (PrivacySettings) obj;
        return this.isHideTimeZone == privacySettings.isHideTimeZone && this.isHideUserAgent == privacySettings.isHideUserAgent;
    }

    public final int hashCode() {
        return ((this.isHideTimeZone ? 1231 : 1237) * 31) + (this.isHideUserAgent ? 1231 : 1237);
    }

    public final String toString() {
        return "PrivacySettings(isHideTimeZone=" + this.isHideTimeZone + ", isHideUserAgent=" + this.isHideUserAgent + ")";
    }
}

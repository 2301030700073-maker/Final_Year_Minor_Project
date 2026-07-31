package net.thunderbird.feature.thundermail.internal.common.ui;

import android.content.Intent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface ThundermailContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LaunchOAuth implements ThundermailContract$Effect {
        public final Intent intent;

        public LaunchOAuth(Intent intent) {
            this.intent = intent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LaunchOAuth) && this.intent.equals(((LaunchOAuth) obj).intent);
        }

        public final int hashCode() {
            return this.intent.hashCode();
        }

        public final String toString() {
            return "LaunchOAuth(intent=" + this.intent + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateToIncomingServerSettings implements ThundermailContract$Effect {
        public static final NavigateToIncomingServerSettings INSTANCE = new NavigateToIncomingServerSettings();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateToIncomingServerSettings);
        }

        public final int hashCode() {
            return 117682521;
        }

        public final String toString() {
            return "NavigateToIncomingServerSettings";
        }
    }
}

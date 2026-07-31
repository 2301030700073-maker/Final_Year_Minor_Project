package net.thunderbird.feature.account.settings.impl.ui.search;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SearchSettingsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackPressed implements SearchSettingsContract$Event {
        public static final OnBackPressed INSTANCE = new OnBackPressed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackPressed);
        }

        public final int hashCode() {
            return 1027276801;
        }

        public final String toString() {
            return "OnBackPressed";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnServerSearchLimitChange implements SearchSettingsContract$Event {
        public final int serverSearchLimit;

        public OnServerSearchLimitChange(int i) {
            this.serverSearchLimit = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnServerSearchLimitChange) && this.serverSearchLimit == ((OnServerSearchLimitChange) obj).serverSearchLimit;
        }

        public final int hashCode() {
            return this.serverSearchLimit;
        }

        public final String toString() {
            return CameraDevices$CC.m(this.serverSearchLimit, "OnServerSearchLimitChange(serverSearchLimit=", ")");
        }
    }
}

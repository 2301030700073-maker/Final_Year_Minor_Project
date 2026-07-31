package app.k9mail.feature.account.setup.ui.specialfolders;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SpecialFoldersContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateBack implements SpecialFoldersContract$Effect {
        public static final NavigateBack INSTANCE = new NavigateBack();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateBack);
        }

        public final int hashCode() {
            return -28332781;
        }

        public final String toString() {
            return "NavigateBack";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateNext implements SpecialFoldersContract$Effect {
        public final boolean isManualSetup;

        public NavigateNext(boolean z) {
            this.isManualSetup = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NavigateNext) && this.isManualSetup == ((NavigateNext) obj).isManualSetup;
        }

        public final int hashCode() {
            return this.isManualSetup ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("NavigateNext(isManualSetup=", ")", this.isManualSetup);
        }
    }
}

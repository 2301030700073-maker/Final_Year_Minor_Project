package app.k9mail.feature.account.setup.ui.autodiscovery;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AccountAutoDiscoveryContract$Effect {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateBack extends AccountAutoDiscoveryContract$Effect {
        public static final NavigateBack INSTANCE = new NavigateBack();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NavigateBack);
        }

        public final int hashCode() {
            return 1757497262;
        }

        public final String toString() {
            return "NavigateBack";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class NavigateNext extends AccountAutoDiscoveryContract$Effect {
        public final AccountAutoDiscoveryContract$AutoDiscoveryUiResult result;

        public NavigateNext(AccountAutoDiscoveryContract$AutoDiscoveryUiResult accountAutoDiscoveryContract$AutoDiscoveryUiResult) {
            this.result = accountAutoDiscoveryContract$AutoDiscoveryUiResult;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NavigateNext) && this.result.equals(((NavigateNext) obj).result);
        }

        public final int hashCode() {
            return this.result.hashCode();
        }

        public final String toString() {
            return "NavigateNext(result=" + this.result + ")";
        }
    }
}

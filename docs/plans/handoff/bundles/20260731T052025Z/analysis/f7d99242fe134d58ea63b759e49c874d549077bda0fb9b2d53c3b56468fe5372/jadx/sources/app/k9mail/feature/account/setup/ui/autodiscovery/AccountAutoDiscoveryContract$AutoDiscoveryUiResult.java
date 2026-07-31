package app.k9mail.feature.account.setup.ui.autodiscovery;

import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountAutoDiscoveryContract$AutoDiscoveryUiResult {
    public final IncomingProtocolType incomingProtocolType;
    public final boolean isAutomaticConfig;

    public AccountAutoDiscoveryContract$AutoDiscoveryUiResult(boolean z, IncomingProtocolType incomingProtocolType) {
        this.isAutomaticConfig = z;
        this.incomingProtocolType = incomingProtocolType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountAutoDiscoveryContract$AutoDiscoveryUiResult)) {
            return false;
        }
        AccountAutoDiscoveryContract$AutoDiscoveryUiResult accountAutoDiscoveryContract$AutoDiscoveryUiResult = (AccountAutoDiscoveryContract$AutoDiscoveryUiResult) obj;
        return this.isAutomaticConfig == accountAutoDiscoveryContract$AutoDiscoveryUiResult.isAutomaticConfig && this.incomingProtocolType == accountAutoDiscoveryContract$AutoDiscoveryUiResult.incomingProtocolType;
    }

    public final int hashCode() {
        int i = (this.isAutomaticConfig ? 1231 : 1237) * 31;
        IncomingProtocolType incomingProtocolType = this.incomingProtocolType;
        return i + (incomingProtocolType == null ? 0 : incomingProtocolType.hashCode());
    }

    public final String toString() {
        return "AutoDiscoveryUiResult(isAutomaticConfig=" + this.isAutomaticConfig + ", incomingProtocolType=" + this.incomingProtocolType + ")";
    }
}

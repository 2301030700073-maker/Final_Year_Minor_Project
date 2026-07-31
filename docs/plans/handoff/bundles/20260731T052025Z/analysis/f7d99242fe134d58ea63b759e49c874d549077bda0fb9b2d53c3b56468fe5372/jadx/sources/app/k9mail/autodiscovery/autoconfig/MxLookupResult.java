package app.k9mail.autodiscovery.autoconfig;

import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MxLookupResult {
    public final boolean isTrusted;
    public final ArrayList mxNames;

    public MxLookupResult(ArrayList arrayList, boolean z) {
        this.mxNames = arrayList;
        this.isTrusted = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MxLookupResult)) {
            return false;
        }
        MxLookupResult mxLookupResult = (MxLookupResult) obj;
        return this.mxNames.equals(mxLookupResult.mxNames) && this.isTrusted == mxLookupResult.isTrusted;
    }

    public final int hashCode() {
        return (this.mxNames.hashCode() * 31) + (this.isTrusted ? 1231 : 1237);
    }

    public final String toString() {
        return "MxLookupResult(mxNames=" + this.mxNames + ", isTrusted=" + this.isTrusted + ")";
    }
}

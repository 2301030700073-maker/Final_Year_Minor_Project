package okhttp3;

import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new CertificatePinner(CollectionsKt.toSet(new ArrayList()), null);
    public final AppKt certificateChainCleaner;
    public final Set pins;

    public CertificatePinner(Set set, AppKt appKt) {
        this.pins = set;
        this.certificateChainCleaner = appKt;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CertificatePinner)) {
            return false;
        }
        CertificatePinner certificatePinner = (CertificatePinner) obj;
        return certificatePinner.pins.equals(this.pins) && Intrinsics.areEqual(certificatePinner.certificateChainCleaner, this.certificateChainCleaner);
    }

    public final int hashCode() {
        int hashCode = (this.pins.hashCode() + 1517) * 41;
        AppKt appKt = this.certificateChainCleaner;
        return hashCode + (appKt != null ? appKt.hashCode() : 0);
    }
}

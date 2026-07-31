package okhttp3;

import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new CertificatePinner(CollectionsKt.toSet(new ArrayList()), null);
    public final UuidKt certificateChainCleaner;
    public final Set pins;

    public CertificatePinner(Set set, UuidKt uuidKt) {
        this.pins = set;
        this.certificateChainCleaner = uuidKt;
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
        UuidKt uuidKt = this.certificateChainCleaner;
        return hashCode + (uuidKt != null ? uuidKt.hashCode() : 0);
    }
}

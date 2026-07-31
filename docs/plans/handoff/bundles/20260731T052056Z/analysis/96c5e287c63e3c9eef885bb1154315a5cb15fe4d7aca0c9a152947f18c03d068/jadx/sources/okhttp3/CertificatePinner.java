package okhttp3;

import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new CertificatePinner(CollectionsKt.toSet(new ArrayList()), null);
    public final Headers.Companion certificateChainCleaner;
    public final Set pins;

    public CertificatePinner(Set set, Headers.Companion companion) {
        this.pins = set;
        this.certificateChainCleaner = companion;
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
        Headers.Companion companion = this.certificateChainCleaner;
        return hashCode + (companion != null ? companion.hashCode() : 0);
    }
}

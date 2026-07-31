package okhttp3.tls.internal.der;

import androidx.compose.ui.Modifier;
import java.math.BigInteger;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TbsCertificate {
    public final List extensions;
    public final List issuer;
    public final BitString issuerUniqueID;
    public final BigInteger serialNumber;
    public final AlgorithmIdentifier signature;
    public final List subject;
    public final SubjectPublicKeyInfo subjectPublicKeyInfo;
    public final BitString subjectUniqueID;
    public final Validity validity;
    public final long version;

    public TbsCertificate(long j, BigInteger bigInteger, AlgorithmIdentifier algorithmIdentifier, List list, Validity validity, List list2, SubjectPublicKeyInfo subjectPublicKeyInfo, BitString bitString, BitString bitString2, List list3) {
        subjectPublicKeyInfo.getClass();
        this.version = j;
        this.serialNumber = bigInteger;
        this.signature = algorithmIdentifier;
        this.issuer = list;
        this.validity = validity;
        this.subject = list2;
        this.subjectPublicKeyInfo = subjectPublicKeyInfo;
        this.issuerUniqueID = bitString;
        this.subjectUniqueID = bitString2;
        this.extensions = list3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TbsCertificate)) {
            return false;
        }
        TbsCertificate tbsCertificate = (TbsCertificate) obj;
        return this.version == tbsCertificate.version && this.serialNumber.equals(tbsCertificate.serialNumber) && this.signature.equals(tbsCertificate.signature) && this.issuer.equals(tbsCertificate.issuer) && this.validity.equals(tbsCertificate.validity) && this.subject.equals(tbsCertificate.subject) && Intrinsics.areEqual(this.subjectPublicKeyInfo, tbsCertificate.subjectPublicKeyInfo) && Intrinsics.areEqual(this.issuerUniqueID, tbsCertificate.issuerUniqueID) && Intrinsics.areEqual(this.subjectUniqueID, tbsCertificate.subjectUniqueID) && this.extensions.equals(tbsCertificate.extensions);
    }

    public final int hashCode() {
        int hashCode = (this.subjectPublicKeyInfo.hashCode() + Modifier.CC.m((this.validity.hashCode() + Modifier.CC.m((this.signature.hashCode() + ((this.serialNumber.hashCode() + (((int) this.version) * 31)) * 31)) * 31, 31, this.issuer)) * 31, 31, this.subject)) * 31;
        BitString bitString = this.issuerUniqueID;
        int hashCode2 = (hashCode + (bitString != null ? bitString.hashCode() : 0)) * 31;
        BitString bitString2 = this.subjectUniqueID;
        return this.extensions.hashCode() + ((hashCode2 + (bitString2 != null ? bitString2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "TbsCertificate(version=" + this.version + ", serialNumber=" + this.serialNumber + ", signature=" + this.signature + ", issuer=" + this.issuer + ", validity=" + this.validity + ", subject=" + this.subject + ", subjectPublicKeyInfo=" + this.subjectPublicKeyInfo + ", issuerUniqueID=" + this.issuerUniqueID + ", subjectUniqueID=" + this.subjectUniqueID + ", extensions=" + this.extensions + ')';
    }
}

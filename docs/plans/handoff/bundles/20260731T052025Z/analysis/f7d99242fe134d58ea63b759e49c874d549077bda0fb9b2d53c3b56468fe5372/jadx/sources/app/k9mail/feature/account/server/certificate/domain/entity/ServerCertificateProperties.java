package app.k9mail.feature.account.server.certificate.domain.entity;

import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import okio.ByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerCertificateProperties {
    public final ByteString fingerprintSha1;
    public final ByteString fingerprintSha256;
    public final ByteString fingerprintSha512;
    public final String issuer;
    public final String notValidAfter;
    public final String notValidBefore;
    public final String subject;
    public final ArrayList subjectAlternativeNames;

    public ServerCertificateProperties(ArrayList arrayList, String str, String str2, String str3, String str4, ByteString byteString, ByteString byteString2, ByteString byteString3) {
        this.subjectAlternativeNames = arrayList;
        this.notValidBefore = str;
        this.notValidAfter = str2;
        this.subject = str3;
        this.issuer = str4;
        this.fingerprintSha1 = byteString;
        this.fingerprintSha256 = byteString2;
        this.fingerprintSha512 = byteString3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerCertificateProperties)) {
            return false;
        }
        ServerCertificateProperties serverCertificateProperties = (ServerCertificateProperties) obj;
        return this.subjectAlternativeNames.equals(serverCertificateProperties.subjectAlternativeNames) && this.notValidBefore.equals(serverCertificateProperties.notValidBefore) && this.notValidAfter.equals(serverCertificateProperties.notValidAfter) && this.subject.equals(serverCertificateProperties.subject) && this.issuer.equals(serverCertificateProperties.issuer) && this.fingerprintSha1.equals(serverCertificateProperties.fingerprintSha1) && this.fingerprintSha256.equals(serverCertificateProperties.fingerprintSha256) && this.fingerprintSha512.equals(serverCertificateProperties.fingerprintSha512);
    }

    public final int hashCode() {
        return this.fingerprintSha512.hashCode() + ((this.fingerprintSha256.hashCode() + ((this.fingerprintSha1.hashCode() + Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(this.subjectAlternativeNames.hashCode() * 31, this.notValidBefore, 31), this.notValidAfter, 31), this.subject, 31), this.issuer, 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ServerCertificateProperties(subjectAlternativeNames=");
        sb.append(this.subjectAlternativeNames);
        sb.append(", notValidBefore=");
        sb.append(this.notValidBefore);
        sb.append(", notValidAfter=");
        Modifier.CC.m(sb, this.notValidAfter, ", subject=", this.subject, ", issuer=");
        sb.append(this.issuer);
        sb.append(", fingerprintSha1=");
        sb.append(this.fingerprintSha1);
        sb.append(", fingerprintSha256=");
        sb.append(this.fingerprintSha256);
        sb.append(", fingerprintSha512=");
        sb.append(this.fingerprintSha512);
        sb.append(")");
        return sb.toString();
    }
}

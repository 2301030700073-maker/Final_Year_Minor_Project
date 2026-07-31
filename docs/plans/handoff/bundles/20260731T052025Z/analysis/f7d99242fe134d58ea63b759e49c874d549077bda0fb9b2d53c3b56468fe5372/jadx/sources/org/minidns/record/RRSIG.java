package org.minidns.record;

import j$.util.DesugarTimeZone;
import java.io.DataOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.minidns.constants.DnssecConstants;
import org.minidns.dnsname.DnsName;
import org.minidns.record.Record;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RRSIG extends Data {
    public final DnssecConstants.SignatureAlgorithm algorithm;
    public final byte algorithmByte;
    public transient String base64SignatureCache;
    public final int keyTag;
    public final byte labels;
    public final long originalTtl;
    public final byte[] signature;
    public final Date signatureExpiration;
    public final Date signatureInception;
    public final DnsName signerName;
    public final Record.TYPE typeCovered;

    public RRSIG(Record.TYPE type, byte b, byte b2, long j, Date date, Date date2, int i, DnsName dnsName, byte[] bArr) {
        this.typeCovered = type;
        this.algorithmByte = b;
        this.algorithm = DnssecConstants.SignatureAlgorithm.forByte(b);
        this.labels = b2;
        this.originalTtl = j;
        this.signatureExpiration = date;
        this.signatureInception = date2;
        this.keyTag = i;
        this.signerName = dnsName;
        this.signature = bArr;
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        writePartialSignature(dataOutputStream);
        dataOutputStream.write(this.signature);
    }

    public final String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        StringBuilder sb = new StringBuilder();
        sb.append(this.typeCovered);
        sb.append(' ');
        sb.append(this.algorithm);
        sb.append(' ');
        sb.append((int) this.labels);
        sb.append(' ');
        sb.append(this.originalTtl);
        sb.append(' ');
        sb.append(simpleDateFormat.format(this.signatureExpiration));
        sb.append(' ');
        sb.append(simpleDateFormat.format(this.signatureInception));
        sb.append(' ');
        sb.append(this.keyTag);
        sb.append(' ');
        sb.append((CharSequence) this.signerName);
        sb.append(". ");
        if (this.base64SignatureCache == null) {
            this.base64SignatureCache = Base64.encodeToString(this.signature);
        }
        sb.append(this.base64SignatureCache);
        return sb.toString();
    }

    public final void writePartialSignature(DataOutputStream dataOutputStream) {
        dataOutputStream.writeShort(this.typeCovered.value);
        dataOutputStream.writeByte(this.algorithmByte);
        dataOutputStream.writeByte(this.labels);
        dataOutputStream.writeInt((int) this.originalTtl);
        dataOutputStream.writeInt((int) (this.signatureExpiration.getTime() / 1000));
        dataOutputStream.writeInt((int) (this.signatureInception.getTime() / 1000));
        dataOutputStream.writeShort(this.keyTag);
        this.signerName.writeToStream(dataOutputStream);
    }
}

package org.minidns.record;

import java.io.DataOutputStream;
import org.minidns.dnsname.DnsName;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SOA extends Data {
    public final int expire;
    public final long minimum;
    public final DnsName mname;
    public final int refresh;
    public final int retry;
    public final DnsName rname;
    public final long serial;

    public SOA(DnsName dnsName, DnsName dnsName2, long j, int i, int i2, int i3, long j2) {
        this.mname = dnsName;
        this.rname = dnsName2;
        this.serial = j;
        this.refresh = i;
        this.retry = i2;
        this.expire = i3;
        this.minimum = j2;
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        this.mname.writeToStream(dataOutputStream);
        this.rname.writeToStream(dataOutputStream);
        dataOutputStream.writeInt((int) this.serial);
        dataOutputStream.writeInt(this.refresh);
        dataOutputStream.writeInt(this.retry);
        dataOutputStream.writeInt(this.expire);
        dataOutputStream.writeInt((int) this.minimum);
    }

    public final String toString() {
        return ((CharSequence) this.mname) + ". " + ((CharSequence) this.rname) + ". " + this.serial + ' ' + this.refresh + ' ' + this.retry + ' ' + this.expire + ' ' + this.minimum;
    }
}

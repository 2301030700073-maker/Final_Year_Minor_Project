package org.minidns.record;

import java.io.DataOutputStream;
import org.minidns.dnsname.DnsName;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SRV extends RRWithTarget implements Comparable {
    public final int port;
    public final int priority;
    public final int weight;

    public SRV(int i, int i2, int i3, DnsName dnsName) {
        super(dnsName);
        this.priority = i;
        this.weight = i2;
        this.port = i3;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        SRV srv = (SRV) obj;
        int i = srv.priority - this.priority;
        return i == 0 ? this.weight - srv.weight : i;
    }

    @Override // org.minidns.record.RRWithTarget, org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.writeShort(this.priority);
        dataOutputStream.writeShort(this.weight);
        dataOutputStream.writeShort(this.port);
        super.serialize(dataOutputStream);
    }

    @Override // org.minidns.record.RRWithTarget
    public final String toString() {
        return this.priority + " " + this.weight + " " + this.port + " " + String.valueOf(this.target) + ".";
    }
}

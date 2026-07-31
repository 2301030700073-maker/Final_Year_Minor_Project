package org.minidns.record;

import java.io.DataOutputStream;
import org.minidns.dnsname.DnsName;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MX extends Data {
    public final int priority;
    public final DnsName target;

    public MX(int i, DnsName dnsName) {
        this.priority = i;
        this.target = dnsName;
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.writeShort(this.priority);
        this.target.writeToStream(dataOutputStream);
    }

    public final String toString() {
        return this.priority + " " + String.valueOf(this.target) + ".";
    }
}

package org.minidns.record;

import java.io.DataOutputStream;
import org.minidns.dnsname.DnsName;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class RRWithTarget extends Data {
    public final DnsName target;

    public RRWithTarget(DnsName dnsName) {
        this.target = dnsName;
    }

    @Override // org.minidns.record.Data
    public void serialize(DataOutputStream dataOutputStream) {
        this.target.writeToStream(dataOutputStream);
    }

    public String toString() {
        return String.valueOf(this.target).concat(".");
    }
}

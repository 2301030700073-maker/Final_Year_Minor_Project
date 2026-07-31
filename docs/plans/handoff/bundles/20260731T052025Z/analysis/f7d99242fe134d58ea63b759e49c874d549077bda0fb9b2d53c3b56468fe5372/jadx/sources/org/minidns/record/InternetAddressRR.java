package org.minidns.record;

import java.io.DataOutputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class InternetAddressRR extends Data {
    public transient InetAddress inetAddress;
    public final byte[] ip;

    public InternetAddressRR(byte[] bArr) {
        this.ip = bArr;
    }

    public final InetAddress getInetAddress() {
        if (this.inetAddress == null) {
            try {
                this.inetAddress = InetAddress.getByAddress(this.ip);
            } catch (UnknownHostException e) {
                throw new IllegalStateException(e);
            }
        }
        return this.inetAddress;
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.write(this.ip);
    }
}

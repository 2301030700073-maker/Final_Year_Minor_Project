package org.minidns.record;

import java.io.DataOutputStream;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OPENPGPKEY extends Data {
    public final byte[] publicKeyPacket;
    public transient String publicKeyPacketBase64Cache;

    public OPENPGPKEY(byte[] bArr) {
        this.publicKeyPacket = bArr;
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.write(this.publicKeyPacket);
    }

    public final String toString() {
        if (this.publicKeyPacketBase64Cache == null) {
            this.publicKeyPacketBase64Cache = Base64.encodeToString(this.publicKeyPacket);
        }
        return this.publicKeyPacketBase64Cache;
    }
}

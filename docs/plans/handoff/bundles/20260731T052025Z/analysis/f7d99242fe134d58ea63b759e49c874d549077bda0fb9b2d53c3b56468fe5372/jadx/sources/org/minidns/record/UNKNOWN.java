package org.minidns.record;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UNKNOWN extends Data {
    public final byte[] data;

    public UNKNOWN(DataInputStream dataInputStream, int i) {
        byte[] bArr = new byte[i];
        this.data = bArr;
        dataInputStream.readFully(bArr);
    }

    @Override // org.minidns.record.Data
    public final void serialize(DataOutputStream dataOutputStream) {
        dataOutputStream.write(this.data);
    }
}

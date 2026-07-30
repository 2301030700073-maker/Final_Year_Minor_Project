package com.facebook.ads.redexgen.core;

import java.io.ByteArrayInputStream;

/* renamed from: com.facebook.ads.redexgen.X.na, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2536na implements C1X {
    public ByteArrayInputStream A00;
    public final byte[] A01;

    public C2536na(byte[] bArr) {
        this.A01 = bArr;
    }

    @Override // com.facebook.ads.redexgen.core.C1X
    public final void AFr(int i) throws C2534nX {
        this.A00 = new ByteArrayInputStream(this.A01);
        this.A00.skip(i);
    }

    @Override // com.facebook.ads.redexgen.core.C1X
    public final void close() throws C2534nX {
    }

    @Override // com.facebook.ads.redexgen.core.C1X
    public final int length() throws C2534nX {
        return this.A01.length;
    }

    @Override // com.facebook.ads.redexgen.core.C1X
    public final int read(byte[] bArr) throws C2534nX {
        return this.A00.read(bArr, 0, bArr.length);
    }
}

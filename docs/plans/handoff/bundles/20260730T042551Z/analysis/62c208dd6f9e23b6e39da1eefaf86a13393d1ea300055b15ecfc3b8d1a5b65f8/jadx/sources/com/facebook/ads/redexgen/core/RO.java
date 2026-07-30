package com.facebook.ads.redexgen.core;

import android.database.Cursor;

/* loaded from: assets/audience_network.dex */
public final class RO implements InterfaceC1705Zo {
    public final Cursor A00;

    public final /* synthetic */ boolean A01() {
        return AbstractC1704Zn.A00(this);
    }

    public RO(Cursor cursor) {
        this.A00 = cursor;
    }

    public final C1701Zk A00() {
        C1701Zk A01;
        A01 = C10488n.A01(this.A00);
        return A01;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.A00.close();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1705Zo
    public final int getPosition() {
        return this.A00.getPosition();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1705Zo
    public final boolean moveToPosition(int i) {
        return this.A00.moveToPosition(i);
    }
}

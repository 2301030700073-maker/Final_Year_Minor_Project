package com.facebook.ads.redexgen.core;

import android.os.Parcel;

/* renamed from: com.facebook.ads.redexgen.X.Vi, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1598Vi {
    public final int A00;
    public final long A01;
    public final long A02;

    public C1598Vi(int i, long j, long j2) {
        this.A00 = i;
        this.A02 = j;
        this.A01 = j2;
    }

    public /* synthetic */ C1598Vi(int i, long j, long j2, C1597Vh c1597Vh) {
        this(i, j, j2);
    }

    public static C1598Vi A00(Parcel parcel) {
        return new C1598Vi(parcel.readInt(), parcel.readLong(), parcel.readLong());
    }

    public final void A01(Parcel parcel) {
        parcel.writeInt(this.A00);
        parcel.writeLong(this.A02);
        parcel.writeLong(this.A01);
    }
}

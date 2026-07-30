package com.facebook.ads.redexgen.core;

import android.os.Parcel;

/* renamed from: com.facebook.ads.redexgen.X.Vl, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1601Vl {
    public final int A00;
    public final long A01;

    public C1601Vl(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public /* synthetic */ C1601Vl(int i, long j, C1600Vk c1600Vk) {
        this(i, j);
    }

    public static C1601Vl A00(Parcel parcel) {
        return new C1601Vl(parcel.readInt(), parcel.readLong());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02(Parcel parcel) {
        parcel.writeInt(this.A00);
        parcel.writeLong(this.A01);
    }
}

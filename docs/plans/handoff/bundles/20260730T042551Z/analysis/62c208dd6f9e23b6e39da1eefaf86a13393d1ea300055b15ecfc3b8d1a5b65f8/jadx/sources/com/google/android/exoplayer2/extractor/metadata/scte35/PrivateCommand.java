package com.google.android.exoplayer2.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.core.AbstractC2094gE;
import com.facebook.ads.redexgen.core.C1596Vg;
import com.facebook.ads.redexgen.core.C2070fq;

/* loaded from: assets/audience_network.dex */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new C1596Vg();
    public final long A00;
    public final long A01;
    public final byte[] A02;

    public PrivateCommand(long j, byte[] bArr, long j2) {
        this.A01 = j2;
        this.A00 = j;
        this.A02 = bArr;
    }

    public PrivateCommand(Parcel parcel) {
        this.A01 = parcel.readLong();
        this.A00 = parcel.readLong();
        this.A02 = (byte[]) AbstractC2094gE.A0f(parcel.createByteArray());
    }

    public /* synthetic */ PrivateCommand(Parcel parcel, C1596Vg c1596Vg) {
        this(parcel);
    }

    public static PrivateCommand A00(C2070fq c2070fq, int i, long j) {
        long A0Q = c2070fq.A0Q();
        byte[] bArr = new byte[i - 4];
        c2070fq.A0k(bArr, 0, bArr.length);
        return new PrivateCommand(A0Q, bArr, j);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A01);
        parcel.writeLong(this.A00);
        parcel.writeByteArray(this.A02);
    }
}

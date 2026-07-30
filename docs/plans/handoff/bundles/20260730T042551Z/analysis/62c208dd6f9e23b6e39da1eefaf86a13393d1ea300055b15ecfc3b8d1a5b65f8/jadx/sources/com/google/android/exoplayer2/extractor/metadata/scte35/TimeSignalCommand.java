package com.google.android.exoplayer2.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.core.C1603Vn;
import com.facebook.ads.redexgen.core.C2070fq;
import com.facebook.ads.redexgen.core.C2084g4;

/* loaded from: assets/audience_network.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new C1603Vn();
    public final long A00;
    public final long A01;

    public TimeSignalCommand(long j, long j2) {
        this.A01 = j;
        this.A00 = j2;
    }

    public /* synthetic */ TimeSignalCommand(long j, long j2, C1603Vn c1603Vn) {
        this(j, j2);
    }

    public static long A00(C2070fq c2070fq, long j) {
        long A0I = c2070fq.A0I();
        if ((128 & A0I) == 0) {
            return -9223372036854775807L;
        }
        long ptsTime = 1 & A0I;
        long firstByte = c2070fq.A0Q();
        return (((ptsTime << 32) | firstByte) + j) & 8589934591L;
    }

    public static TimeSignalCommand A01(C2070fq c2070fq, long j, C2084g4 c2084g4) {
        long A00 = A00(c2070fq, j);
        return new TimeSignalCommand(A00, c2084g4.A06(A00));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A01);
        parcel.writeLong(this.A00);
    }
}

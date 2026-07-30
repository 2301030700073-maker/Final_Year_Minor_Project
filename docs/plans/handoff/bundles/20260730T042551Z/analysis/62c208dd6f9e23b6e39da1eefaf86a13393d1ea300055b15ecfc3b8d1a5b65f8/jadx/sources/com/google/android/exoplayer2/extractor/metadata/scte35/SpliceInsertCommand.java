package com.google.android.exoplayer2.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.core.C1597Vh;
import com.facebook.ads.redexgen.core.C1598Vi;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static String[] A0D = {"1gMfdHoLkKNhoCqhKe6qLfiJGSezJg8B", "zm2SBnMS5XNjZWSMsupBhea4HrWKdVyh", "faixS", "WVnIPxdl1TSIJGfqykPYzP6CfEVxBQdv", "xhcz4JkMNye8fJUllYlgDZiPzZjPPz0A", "Ic16CYMI8HSWlFRdvoHz5Qnkj4K9zu22", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "tI1rP6AVkVHBDDKgUCtZIqVKSC49N82u"};
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new C1597Vh();
    public final int A00;
    public final int A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final List<C1598Vi> A07;
    public final boolean A08;
    public final boolean A09;
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 27 out of bounds for length 20
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<C1598Vi> list, boolean z5, long j4, int i, int i2, int i3) {
        this.A06 = j;
        this.A0B = z;
        this.A09 = z2;
        this.A0A = z3;
        this.A0C = z4;
        this.A05 = j2;
        this.A04 = j3;
        this.A07 = Collections.unmodifiableList(list);
        this.A08 = z5;
        this.A03 = j4;
        this.A02 = i;
        this.A00 = i2;
        this.A01 = i3;
    }

    public SpliceInsertCommand(Parcel parcel) {
        this.A06 = parcel.readLong();
        this.A0B = parcel.readByte() == 1;
        this.A09 = parcel.readByte() == 1;
        this.A0A = parcel.readByte() == 1;
        this.A0C = parcel.readByte() == 1;
        this.A05 = parcel.readLong();
        this.A04 = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(C1598Vi.A00(parcel));
        }
        this.A07 = Collections.unmodifiableList(arrayList);
        int componentSpliceListSize = parcel.readByte();
        this.A08 = componentSpliceListSize == 1;
        this.A03 = parcel.readLong();
        int componentSpliceListSize2 = parcel.readInt();
        this.A02 = componentSpliceListSize2;
        int componentSpliceListSize3 = parcel.readInt();
        this.A00 = componentSpliceListSize3;
        int componentSpliceListSize4 = parcel.readInt();
        this.A01 = componentSpliceListSize4;
    }

    public /* synthetic */ SpliceInsertCommand(Parcel parcel, C1597Vh c1597Vh) {
        this(parcel);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007e, code lost:
    
        if (r3 != 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0080, code lost:
    
        r19 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cd, code lost:
    
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ca, code lost:
    
        if (r3 != 0) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.extractor.metadata.scte35.SpliceInsertCommand A00(com.facebook.ads.redexgen.core.C2070fq r31, long r32, com.facebook.ads.redexgen.core.C2084g4 r34) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.metadata.scte35.SpliceInsertCommand.A00(com.facebook.ads.redexgen.X.fq, long, com.facebook.ads.redexgen.X.g4):com.google.android.exoplayer2.extractor.metadata.scte35.SpliceInsertCommand");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A06);
        parcel.writeByte(this.A0B ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A09 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A0A ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A0C ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.A05);
        parcel.writeLong(this.A04);
        int size = this.A07.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.A07.get(i2).A01(parcel);
            String[] strArr = A0D;
            if (strArr[0].charAt(26) == strArr[3].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[0] = "acdZtyKQWwFOkb0LeuSSK6oVpigTtFwS";
            strArr2[3] = "oW2YHXdWM7oaa9PVsYpqNd9hNaJbSWC6";
        }
        parcel.writeByte(this.A08 ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.A03);
        parcel.writeInt(this.A02);
        if (A0D[4].charAt(28) != 'P') {
            throw new RuntimeException();
        }
        A0D[7] = "buqtg1B9heztt2PcICLF7S0iD4uzSUde";
        parcel.writeInt(this.A00);
        parcel.writeInt(this.A01);
    }
}

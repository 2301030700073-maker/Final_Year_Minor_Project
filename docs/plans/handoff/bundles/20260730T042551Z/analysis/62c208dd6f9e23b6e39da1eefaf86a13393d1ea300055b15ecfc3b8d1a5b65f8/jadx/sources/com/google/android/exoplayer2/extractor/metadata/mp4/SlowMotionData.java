package com.google.android.exoplayer2.extractor.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.core.AbstractC1436Or;
import com.facebook.ads.redexgen.core.AbstractC1468Px;
import com.facebook.ads.redexgen.core.AbstractC2011es;
import com.facebook.ads.redexgen.core.AbstractC2094gE;
import com.facebook.ads.redexgen.core.C1592Vb;
import com.facebook.ads.redexgen.core.VZ;
import com.facebook.ads.redexgen.core.ZM;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.exoplayer2.Metadata;
import com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public final class SlowMotionData implements Metadata.Entry {
    public static byte[] A01;
    public static String[] A02 = {"QneAKI9PIM", "yoq5fLNoJvvIfWsSArbDwAVHgL4cfD3x", "DEnpAxNcVV0KxvrkmrA16C6", "rYGo6FyG3VpfVhdbf", "ESLXNZ85GxDn7OTIMgmY1xCTg7yuSttb", "43Du7OpOKhG7qpXEERKpVYsGVuzq74rE", "MBlgY8r1gru2ziOOgwe3iuRtWj5tg95u", "rYYfFodHjk"};
    public static final Parcelable.Creator<SlowMotionData> CREATOR;
    public final List<Segment> A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = (byte) ((copyOfRange[i4] - i3) - 30);
            if (A02[4].charAt(6) != '8') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[6] = "q08QO6YxduDhnFTWTBqq3CqSQkm7K3gf";
            strArr[1] = "QsiZfi4nc4NkSm3MBWcK7QuHRja9ywKv";
            copyOfRange[i4] = b;
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-117, -92, -89, -81, -123, -89, -84, -95, -89, -90, 114, 88, -85, -99, -97, -91, -99, -90, -84, -85, 117};
    }

    @Override // com.google.android.exoplayer2.Metadata.Entry
    public final /* synthetic */ byte[] A9Q() {
        return AbstractC1468Px.A01(this);
    }

    @Override // com.google.android.exoplayer2.Metadata.Entry
    public final /* synthetic */ ZM A9R() {
        return AbstractC1468Px.A00(this);
    }

    static {
        A01();
        CREATOR = new VZ();
    }

    public static final class Segment implements Parcelable {
        public static byte[] A03;
        public static final Comparator<Segment> A04;
        public static final Parcelable.Creator<Segment> CREATOR;
        public final int A00;
        public final long A01;
        public final long A02;

        public static String A01(int i, int i2, int i3) {
            byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
            for (int i4 = 0; i4 < copyOfRange.length; i4++) {
                copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 45);
            }
            return new String(copyOfRange);
        }

        public static void A02() {
            A03 = new byte[]{20, 34, 32, 42, 34, 41, 51, 125, 103, 52, 51, 38, 53, 51, 19, 46, 42, 34, 10, 52, 122, 98, 35, 107, 103, 34, 41, 35, 19, 46, 42, 34, 10, 52, 122, 98, 35, 107, 103, 52, 55, 34, 34, 35, 3, 46, 49, 46, 52, 40, 53, 122, 98, 35};
        }

        static {
            A02();
            A04 = new Comparator() { // from class: com.facebook.ads.redexgen.X.Va
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int A05;
                    A05 = AbstractC2389l7.A01().A07(r2.A02, r3.A02).A07(r2.A01, r3.A01).A06(((SlowMotionData.Segment) obj).A00, ((SlowMotionData.Segment) obj2).A00).A05();
                    return A05;
                }
            };
            CREATOR = new C1592Vb();
        }

        public Segment(long j, long j2, int i) {
            AbstractC2011es.A07(j < j2);
            this.A02 = j;
            this.A01 = j2;
            this.A00 = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Segment segment = (Segment) obj;
            return this.A02 == segment.A02 && this.A01 == segment.A01 && this.A00 == segment.A00;
        }

        public final int hashCode() {
            return AbstractC1436Or.A00(Long.valueOf(this.A02), Long.valueOf(this.A01), Integer.valueOf(this.A00));
        }

        public final String toString() {
            return AbstractC2094gE.A0n(A01(0, 54, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE), Long.valueOf(this.A02), Long.valueOf(this.A01), Integer.valueOf(this.A00));
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.A02);
            parcel.writeLong(this.A01);
            parcel.writeInt(this.A00);
        }
    }

    public SlowMotionData(List<Segment> segments) {
        this.A00 = segments;
        AbstractC2011es.A07(!A02(segments));
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0015 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A02(java.util.List<com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData.Segment> r7) {
        /*
            boolean r0 = r7.isEmpty()
            r6 = 0
            if (r0 == 0) goto L8
            return r6
        L8:
            java.lang.Object r0 = r7.get(r6)
            com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData$Segment r0 = (com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData.Segment) r0
            long r3 = r0.A01
            r5 = 1
        L11:
            int r0 = r7.size()
            if (r5 >= r0) goto L30
            java.lang.Object r0 = r7.get(r5)
            com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData$Segment r0 = (com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData.Segment) r0
            long r1 = r0.A02
            int r0 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r0 >= 0) goto L25
            r0 = 1
            return r0
        L25:
            java.lang.Object r0 = r7.get(r5)
            com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData$Segment r0 = (com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData.Segment) r0
            long r3 = r0.A01
            int r5 = r5 + 1
            goto L11
        L30:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.metadata.mp4.SlowMotionData.A02(java.util.List):boolean");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.A00.equals(((SlowMotionData) obj).A00);
    }

    public final int hashCode() {
        return this.A00.hashCode();
    }

    public final String toString() {
        return A00(0, 21, 26) + this.A00;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.A00);
    }
}

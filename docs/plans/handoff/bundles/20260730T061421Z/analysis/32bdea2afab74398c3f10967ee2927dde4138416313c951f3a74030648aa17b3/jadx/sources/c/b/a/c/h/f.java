package c.b.a.c.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.ExperimentTokens;

/* loaded from: classes.dex */
public final class f implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        String str = null;
        byte[] bArr = null;
        byte[][] bArr2 = null;
        byte[][] bArr3 = null;
        byte[][] bArr4 = null;
        byte[][] bArr5 = null;
        int[] iArr = null;
        byte[][] bArr6 = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 3:
                    bArr = c.b.a.c.b.a.T0(parcel, readInt);
                    break;
                case 4:
                    bArr2 = c.b.a.c.b.a.U0(parcel, readInt);
                    break;
                case 5:
                    bArr3 = c.b.a.c.b.a.U0(parcel, readInt);
                    break;
                case 6:
                    bArr4 = c.b.a.c.b.a.U0(parcel, readInt);
                    break;
                case 7:
                    bArr5 = c.b.a.c.b.a.U0(parcel, readInt);
                    break;
                case 8:
                    iArr = c.b.a.c.b.a.V0(parcel, readInt);
                    break;
                case 9:
                    bArr6 = c.b.a.c.b.a.U0(parcel, readInt);
                    break;
                default:
                    c.b.a.c.b.a.A0(parcel, readInt);
                    break;
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new ExperimentTokens(str, bArr, bArr2, bArr3, bArr4, bArr5, iArr, bArr6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ExperimentTokens[i];
    }
}

package c.b.a.c.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.clearcut.internal.PlayLoggerContext;
import com.google.android.gms.phenotype.ExperimentTokens;

/* loaded from: classes.dex */
public final class i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        PlayLoggerContext playLoggerContext = null;
        byte[] bArr = null;
        int[] iArr = null;
        String[] strArr = null;
        int[] iArr2 = null;
        byte[][] bArr2 = null;
        ExperimentTokens[] experimentTokensArr = null;
        boolean z = true;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    playLoggerContext = (PlayLoggerContext) c.b.a.c.b.a.P(parcel, readInt, PlayLoggerContext.CREATOR);
                    break;
                case 3:
                    bArr = c.b.a.c.b.a.T0(parcel, readInt);
                    break;
                case 4:
                    iArr = c.b.a.c.b.a.V0(parcel, readInt);
                    break;
                case 5:
                    strArr = c.b.a.c.b.a.u0(parcel, readInt);
                    break;
                case 6:
                    iArr2 = c.b.a.c.b.a.V0(parcel, readInt);
                    break;
                case 7:
                    bArr2 = c.b.a.c.b.a.U0(parcel, readInt);
                    break;
                case 8:
                    z = c.b.a.c.b.a.J0(parcel, readInt);
                    break;
                case 9:
                    experimentTokensArr = (ExperimentTokens[]) c.b.a.c.b.a.F0(parcel, readInt, ExperimentTokens.CREATOR);
                    break;
                default:
                    c.b.a.c.b.a.A0(parcel, readInt);
                    break;
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new LogEventParcelable(playLoggerContext, bArr, iArr, strArr, iArr2, bArr2, z, experimentTokensArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new LogEventParcelable[i];
    }
}

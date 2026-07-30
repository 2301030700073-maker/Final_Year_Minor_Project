package c.b.a.c.a.a.a;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = a.K(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        int i = 0;
        long j = 0;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.K0(parcel, readInt);
                    break;
                case 2:
                    str = a.Q0(parcel, readInt);
                    break;
                case 3:
                    str2 = a.Q0(parcel, readInt);
                    break;
                case 4:
                    str3 = a.Q0(parcel, readInt);
                    break;
                case 5:
                    str4 = a.Q0(parcel, readInt);
                    break;
                case 6:
                    uri = (Uri) a.P(parcel, readInt, Uri.CREATOR);
                    break;
                case 7:
                    str5 = a.Q0(parcel, readInt);
                    break;
                case 8:
                    j = a.L0(parcel, readInt);
                    break;
                case 9:
                    str6 = a.Q0(parcel, readInt);
                    break;
                case 10:
                    arrayList = a.G0(parcel, readInt, Scope.CREATOR);
                    break;
                case 11:
                    str7 = a.Q0(parcel, readInt);
                    break;
                case 12:
                    str8 = a.Q0(parcel, readInt);
                    break;
                default:
                    a.A0(parcel, readInt);
                    break;
            }
        }
        a.w0(parcel, K);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}

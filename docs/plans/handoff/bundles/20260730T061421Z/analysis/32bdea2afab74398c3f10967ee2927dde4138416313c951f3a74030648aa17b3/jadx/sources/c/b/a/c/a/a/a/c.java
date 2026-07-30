package c.b.a.c.a.a.a;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzo;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int K = a.K(parcel);
        ArrayList<zzo> arrayList = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        ArrayList arrayList2 = null;
        Account account = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.K0(parcel, readInt);
                    break;
                case 2:
                    arrayList2 = a.G0(parcel, readInt, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) a.P(parcel, readInt, Account.CREATOR);
                    break;
                case 4:
                    z = a.J0(parcel, readInt);
                    break;
                case 5:
                    z2 = a.J0(parcel, readInt);
                    break;
                case 6:
                    z3 = a.J0(parcel, readInt);
                    break;
                case 7:
                    str = a.Q0(parcel, readInt);
                    break;
                case 8:
                    str2 = a.Q0(parcel, readInt);
                    break;
                case 9:
                    arrayList = a.G0(parcel, readInt, zzo.CREATOR);
                    break;
                default:
                    a.A0(parcel, readInt);
                    break;
            }
        }
        a.w0(parcel, K);
        HashMap hashMap = new HashMap();
        if (arrayList != null) {
            for (zzo zzoVar : arrayList) {
                hashMap.put(Integer.valueOf(zzoVar.f3347b), zzoVar);
            }
        }
        return new GoogleSignInOptions(i, arrayList2, account, z, z2, z3, str, str2, hashMap);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}

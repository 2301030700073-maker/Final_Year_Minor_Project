package c.b.a.c.d.j;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.zzav;

/* loaded from: classes.dex */
public final class r implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        Account account = null;
        int i = 0;
        int i2 = 0;
        GoogleSignInAccount googleSignInAccount = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i3 == 2) {
                account = (Account) c.b.a.c.b.a.P(parcel, readInt, Account.CREATOR);
            } else if (i3 == 3) {
                i2 = c.b.a.c.b.a.K0(parcel, readInt);
            } else if (i3 != 4) {
                c.b.a.c.b.a.A0(parcel, readInt);
            } else {
                googleSignInAccount = (GoogleSignInAccount) c.b.a.c.b.a.P(parcel, readInt, GoogleSignInAccount.CREATOR);
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new zzav(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzav[i];
    }
}

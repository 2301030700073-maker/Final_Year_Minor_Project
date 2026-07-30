package c.b.a.c.d.j;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.GetServiceRequest;

/* loaded from: classes.dex */
public final class y implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int K = c.b.a.c.b.a.K(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        Feature[] featureArr = null;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 2:
                    i2 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 3:
                    i3 = c.b.a.c.b.a.K0(parcel, readInt);
                    break;
                case 4:
                    str = c.b.a.c.b.a.Q0(parcel, readInt);
                    break;
                case 5:
                    iBinder = c.b.a.c.b.a.R0(parcel, readInt);
                    break;
                case 6:
                    scopeArr = (Scope[]) c.b.a.c.b.a.F0(parcel, readInt, Scope.CREATOR);
                    break;
                case 7:
                    bundle = c.b.a.c.b.a.S0(parcel, readInt);
                    break;
                case 8:
                    account = (Account) c.b.a.c.b.a.P(parcel, readInt, Account.CREATOR);
                    break;
                case 9:
                default:
                    c.b.a.c.b.a.A0(parcel, readInt);
                    break;
                case 10:
                    featureArr = (Feature[]) c.b.a.c.b.a.F0(parcel, readInt, Feature.CREATOR);
                    break;
            }
        }
        c.b.a.c.b.a.w0(parcel, K);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}

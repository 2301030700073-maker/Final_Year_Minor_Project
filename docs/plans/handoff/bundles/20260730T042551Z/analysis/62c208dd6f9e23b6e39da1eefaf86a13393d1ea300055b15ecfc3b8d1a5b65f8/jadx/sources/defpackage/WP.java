package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cloudmessaging.zzd;

/* loaded from: classes.dex */
public final class WP implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new zzd(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzd[i];
    }
}

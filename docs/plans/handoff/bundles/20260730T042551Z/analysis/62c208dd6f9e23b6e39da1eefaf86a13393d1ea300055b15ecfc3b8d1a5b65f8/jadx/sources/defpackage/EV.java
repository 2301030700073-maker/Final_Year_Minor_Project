package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;

/* loaded from: classes.dex */
public final class EV extends zza {
    public EV(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final InterfaceC0456Qm n(BinderC3652rv binderC3652rv, String str, int i, BinderC3652rv binderC3652rv2) {
        Parcel zza = zza();
        zzc.zze(zza, binderC3652rv);
        zza.writeString(str);
        zza.writeInt(i);
        zzc.zze(zza, binderC3652rv2);
        return V1.m2504new(zzB(2, zza));
    }

    public final InterfaceC0456Qm o(BinderC3652rv binderC3652rv, String str, int i, BinderC3652rv binderC3652rv2) {
        Parcel zza = zza();
        zzc.zze(zza, binderC3652rv);
        zza.writeString(str);
        zza.writeInt(i);
        zzc.zze(zza, binderC3652rv2);
        return V1.m2504new(zzB(3, zza));
    }
}

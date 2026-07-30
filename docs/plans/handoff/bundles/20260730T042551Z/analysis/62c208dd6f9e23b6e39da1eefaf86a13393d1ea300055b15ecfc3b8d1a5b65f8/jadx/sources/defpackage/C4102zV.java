package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;

/* renamed from: zV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4102zV extends zza {
    public C4102zV(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final InterfaceC0456Qm n(BinderC3652rv binderC3652rv, String str, int i) {
        Parcel zza = zza();
        zzc.zze(zza, binderC3652rv);
        zza.writeString(str);
        zza.writeInt(i);
        return V1.m2504new(zzB(2, zza));
    }

    public final InterfaceC0456Qm o(BinderC3652rv binderC3652rv, String str, int i, BinderC3652rv binderC3652rv2) {
        Parcel zza = zza();
        zzc.zze(zza, binderC3652rv);
        zza.writeString(str);
        zza.writeInt(i);
        zzc.zze(zza, binderC3652rv2);
        return V1.m2504new(zzB(8, zza));
    }

    public final InterfaceC0456Qm p(BinderC3652rv binderC3652rv, String str, int i) {
        Parcel zza = zza();
        zzc.zze(zza, binderC3652rv);
        zza.writeString(str);
        zza.writeInt(i);
        return V1.m2504new(zzB(4, zza));
    }

    public final InterfaceC0456Qm q(BinderC3652rv binderC3652rv, String str, boolean z, long j) {
        Parcel zza = zza();
        zzc.zze(zza, binderC3652rv);
        zza.writeString(str);
        zza.writeInt(z ? 1 : 0);
        zza.writeLong(j);
        return V1.m2504new(zzB(7, zza));
    }
}

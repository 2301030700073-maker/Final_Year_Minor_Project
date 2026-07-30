package defpackage;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.location.zzb;
import com.google.android.gms.internal.location.zzc;

/* renamed from: lQ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractBinderC3272lQ extends zzb implements InterfaceC3390nQ {
    public AbstractBinderC3272lQ() {
        super("com.google.android.gms.location.ILocationListener");
    }

    public static InterfaceC3390nQ zzb(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return queryLocalInterface instanceof InterfaceC3390nQ ? (InterfaceC3390nQ) queryLocalInterface : new C2869hQ(iBinder);
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        zzd((Location) zzc.zzb(parcel, Location.CREATOR));
        return true;
    }
}

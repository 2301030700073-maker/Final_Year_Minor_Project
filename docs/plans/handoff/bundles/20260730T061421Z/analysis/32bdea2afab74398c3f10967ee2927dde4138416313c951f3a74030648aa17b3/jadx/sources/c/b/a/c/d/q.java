package c.b.a.c.d;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import c.b.a.c.f.C0437k;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzfa;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class q extends zzfa implements zzaa {

    /* renamed from: a, reason: collision with root package name */
    public int f2994a;

    public q(byte[] bArr) {
        attachInterface(this, "com.google.android.gms.common.internal.ICertData");
        c.b.a.c.b.a.C0(bArr.length == 25);
        this.f2994a = Arrays.hashCode(bArr);
    }

    public static byte[] b(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static zzaa zza(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof zzaa ? (zzaa) queryLocalInterface : new zzac(iBinder);
    }

    public abstract byte[] a();

    public boolean equals(Object obj) {
        IObjectWrapper zzb;
        if (obj != null && (obj instanceof zzaa)) {
            try {
                zzaa zzaaVar = (zzaa) obj;
                if (zzaaVar.zzc() == this.f2994a && (zzb = zzaaVar.zzb()) != null) {
                    return Arrays.equals(a(), (byte[]) zzn.zza(zzb));
                }
                return false;
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f2994a;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            IObjectWrapper zzb = zzb();
            parcel2.writeNoException();
            C0437k.b(parcel2, zzb);
            return true;
        }
        if (i != 2) {
            return false;
        }
        int zzc = zzc();
        parcel2.writeNoException();
        parcel2.writeInt(zzc);
        return true;
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final IObjectWrapper zzb() {
        return new zzn(a());
    }

    @Override // com.google.android.gms.common.internal.zzaa
    public final int zzc() {
        return this.f2994a;
    }
}

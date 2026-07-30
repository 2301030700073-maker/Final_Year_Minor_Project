package c.b.a.c.c.f;

import android.os.Parcel;
import c.b.a.c.f.C0437k;
import com.google.android.gms.clearcut.internal.zzo;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzfa;

/* loaded from: classes.dex */
public class c extends zzfa implements zzo {
    public c(b bVar) {
        attachInterface(this, "com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                ((e) this).f2861a.d((Status) C0437k.a(parcel, Status.CREATOR));
                return true;
            case 2:
                throw new UnsupportedOperationException();
            case 3:
                parcel.readLong();
                throw new UnsupportedOperationException();
            case 4:
                throw new UnsupportedOperationException();
            case 5:
                parcel.readLong();
                throw new UnsupportedOperationException();
            case 6:
                throw new UnsupportedOperationException();
            case 7:
                throw new UnsupportedOperationException();
            case 8:
                throw new UnsupportedOperationException();
            case 9:
                throw new UnsupportedOperationException();
            default:
                return false;
        }
    }
}

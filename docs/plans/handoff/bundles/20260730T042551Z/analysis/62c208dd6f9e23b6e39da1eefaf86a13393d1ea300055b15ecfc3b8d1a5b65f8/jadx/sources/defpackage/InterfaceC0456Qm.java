package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.common.zzb;

/* renamed from: Qm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0456Qm extends IInterface {

    /* renamed from: Qm$do, reason: invalid class name */
    public static abstract class Cdo extends zzb implements InterfaceC0456Qm {
        public Cdo() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static InterfaceC0456Qm n(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof InterfaceC0456Qm ? (InterfaceC0456Qm) queryLocalInterface : new XP(iBinder);
        }
    }
}

package defpackage;

import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import com.google.android.gms.cloudmessaging.zzd;
import j$.util.Objects;

/* renamed from: yV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4043yV {

    /* renamed from: do, reason: not valid java name */
    public final Messenger f16793do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzd f16794do;

    public C4043yV(IBinder iBinder) {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if (Objects.equals(interfaceDescriptor, "android.os.IMessenger")) {
            this.f16793do = new Messenger(iBinder);
            this.f16794do = null;
        } else {
            if (!Objects.equals(interfaceDescriptor, "com.google.android.gms.iid.IMessengerCompat")) {
                "Invalid interface descriptor: ".concat(String.valueOf(interfaceDescriptor));
                throw new RemoteException();
            }
            this.f16794do = new zzd(iBinder);
            this.f16793do = null;
        }
    }
}

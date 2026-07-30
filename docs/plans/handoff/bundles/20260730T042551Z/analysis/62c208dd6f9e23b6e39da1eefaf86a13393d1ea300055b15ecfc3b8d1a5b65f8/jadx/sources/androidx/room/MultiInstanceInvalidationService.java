package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import defpackage.AbstractBinderC0434Pm;
import defpackage.InterfaceC0412Om;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: for, reason: not valid java name */
    public int f7700for = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap<Integer, String> f7699do = new HashMap<>();

    /* renamed from: do, reason: not valid java name */
    public final Cdo f7697do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f7698do = new Cif();

    /* renamed from: androidx.room.MultiInstanceInvalidationService$do, reason: invalid class name */
    public class Cdo extends RemoteCallbackList<InterfaceC0412Om> {
        public Cdo() {
        }

        @Override // android.os.RemoteCallbackList
        public final void onCallbackDied(InterfaceC0412Om interfaceC0412Om, Object obj) {
            MultiInstanceInvalidationService.this.f7699do.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    /* renamed from: androidx.room.MultiInstanceInvalidationService$if, reason: invalid class name */
    public class Cif extends AbstractBinderC0434Pm {
        public Cif() {
        }

        public final void n(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f7697do) {
                String str = MultiInstanceInvalidationService.this.f7699do.get(Integer.valueOf(i));
                if (str == null) {
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.f7697do.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    try {
                        int intValue = ((Integer) MultiInstanceInvalidationService.this.f7697do.getBroadcastCookie(i2)).intValue();
                        String str2 = MultiInstanceInvalidationService.this.f7699do.get(Integer.valueOf(intValue));
                        if (i != intValue && str.equals(str2)) {
                            try {
                                MultiInstanceInvalidationService.this.f7697do.getBroadcastItem(i2).mo1551super(strArr);
                            } catch (RemoteException unused) {
                            }
                        }
                    } finally {
                        MultiInstanceInvalidationService.this.f7697do.finishBroadcast();
                    }
                }
            }
        }

        public final int o(InterfaceC0412Om interfaceC0412Om, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f7697do) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i = multiInstanceInvalidationService.f7700for + 1;
                multiInstanceInvalidationService.f7700for = i;
                if (multiInstanceInvalidationService.f7697do.register(interfaceC0412Om, Integer.valueOf(i))) {
                    MultiInstanceInvalidationService.this.f7699do.put(Integer.valueOf(i), str);
                    return i;
                }
                MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                multiInstanceInvalidationService2.f7700for--;
                return 0;
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f7698do;
    }
}

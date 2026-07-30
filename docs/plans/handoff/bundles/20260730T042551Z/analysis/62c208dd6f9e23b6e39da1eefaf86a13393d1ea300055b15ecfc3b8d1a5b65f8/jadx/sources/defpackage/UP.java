package defpackage;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@VisibleForTesting
/* loaded from: classes.dex */
public final class UP extends Thread {

    /* renamed from: do, reason: not valid java name */
    public final long f3865do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakReference<AdvertisingIdClient> f3866do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CountDownLatch f3867do = new CountDownLatch(1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3868do = false;

    public UP(AdvertisingIdClient advertisingIdClient, long j) {
        this.f3866do = new WeakReference<>(advertisingIdClient);
        this.f3865do = j;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        AdvertisingIdClient advertisingIdClient;
        WeakReference<AdvertisingIdClient> weakReference = this.f3866do;
        try {
            if (this.f3867do.await(this.f3865do, TimeUnit.MILLISECONDS) || (advertisingIdClient = weakReference.get()) == null) {
                return;
            }
            advertisingIdClient.zza();
            this.f3868do = true;
        } catch (InterruptedException unused) {
            AdvertisingIdClient advertisingIdClient2 = weakReference.get();
            if (advertisingIdClient2 != null) {
                advertisingIdClient2.zza();
                this.f3868do = true;
            }
        }
    }
}

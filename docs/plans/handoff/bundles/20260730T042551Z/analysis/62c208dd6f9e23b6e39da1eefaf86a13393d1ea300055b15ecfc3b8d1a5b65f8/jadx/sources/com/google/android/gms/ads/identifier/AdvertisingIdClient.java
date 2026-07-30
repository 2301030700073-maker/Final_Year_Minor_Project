package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import defpackage.UP;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

@KeepForSdk
/* loaded from: classes.dex */
public class AdvertisingIdClient {

    /* renamed from: do, reason: not valid java name */
    public final long f9562do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public UP f9563do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f9564do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public BlockingServiceConnection f9565do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzf f9566do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9567do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9568do;

    @KeepForSdkWithMembers
    public static final class Info {

        /* renamed from: do, reason: not valid java name */
        public final String f9569do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f9570do;

        @Deprecated
        public Info(String str, boolean z) {
            this.f9569do = str;
            this.f9570do = z;
        }

        public String getId() {
            return this.f9569do;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.f9570do;
        }

        public String toString() {
            String str = this.f9569do;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(this.f9570do);
            return sb.toString();
        }
    }

    @KeepForSdk
    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false, false);
    }

    @KeepForSdk
    public static Info getAdvertisingIdInfo(Context context) {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, true, false);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.m5540do(false);
            Info m5541for = advertisingIdClient.m5541for();
            m5539if(m5541for, SystemClock.elapsedRealtime() - elapsedRealtime, null);
            return m5541for;
        } finally {
        }
    }

    @KeepForSdk
    public static boolean getIsAdIdFakeForDebugLogging(Context context) {
        boolean zzd;
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, false, false);
        try {
            advertisingIdClient.m5540do(false);
            Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
            synchronized (advertisingIdClient) {
                if (!advertisingIdClient.f9568do) {
                    synchronized (advertisingIdClient.f9567do) {
                        UP up = advertisingIdClient.f9563do;
                        if (up == null || !up.f3868do) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        advertisingIdClient.m5540do(false);
                        if (!advertisingIdClient.f9568do) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                    }
                }
                Preconditions.checkNotNull(advertisingIdClient.f9565do);
                Preconditions.checkNotNull(advertisingIdClient.f9566do);
                try {
                    zzd = advertisingIdClient.f9566do.zzd();
                } catch (RemoteException unused) {
                    throw new IOException("Remote exception");
                }
            }
            advertisingIdClient.m5542new();
            return zzd;
        } finally {
            advertisingIdClient.zza();
        }
    }

    @VisibleForTesting
    /* renamed from: if, reason: not valid java name */
    public static void m5539if(Info info, long j, Throwable th) {
        if (Math.random() <= 0.0d) {
            HashMap hashMap = new HashMap();
            String str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
            hashMap.put("app_context", AppEventsConstants.EVENT_PARAM_VALUE_YES);
            if (info != null) {
                if (true != info.isLimitAdTrackingEnabled()) {
                    str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
                }
                hashMap.put("limit_ad_tracking", str);
                String id = info.getId();
                if (id != null) {
                    hashMap.put("ad_id_size", Integer.toString(id.length()));
                }
            }
            if (th != null) {
                hashMap.put("error", th.getClass().getName());
            }
            hashMap.put(ViewHierarchyConstants.TAG_KEY, "AdvertisingIdClient");
            hashMap.put("time_spent", Long.toString(j));
            new Cdo(hashMap).start();
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    @VisibleForTesting
    /* renamed from: do, reason: not valid java name */
    public final void m5540do(boolean z) {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f9568do) {
                zza();
            }
            Context context = this.f9564do;
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
                    throw new IOException("Google Play services not available");
                }
                BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    if (!ConnectionTracker.getInstance().bindService(context, intent, blockingServiceConnection, 1)) {
                        throw new IOException("Connection failure");
                    }
                    this.f9565do = blockingServiceConnection;
                    try {
                        this.f9566do = zze.zza(blockingServiceConnection.getServiceWithTimeout(10000L, TimeUnit.MILLISECONDS));
                        this.f9568do = true;
                        if (z) {
                            m5542new();
                        }
                    } catch (InterruptedException unused) {
                        throw new IOException("Interrupted exception");
                    } catch (Throwable th) {
                        throw new IOException(th);
                    }
                } finally {
                    IOException iOException = new IOException(th);
                }
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new GooglePlayServicesNotAvailableException(9);
            }
        }
    }

    public final void finalize() {
        zza();
        super.finalize();
    }

    /* renamed from: for, reason: not valid java name */
    public final Info m5541for() {
        Info info;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f9568do) {
                synchronized (this.f9567do) {
                    UP up = this.f9563do;
                    if (up == null || !up.f3868do) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m5540do(false);
                    if (!this.f9568do) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            Preconditions.checkNotNull(this.f9565do);
            Preconditions.checkNotNull(this.f9566do);
            try {
                info = new Info(this.f9566do.zzc(), this.f9566do.zze(true));
            } catch (RemoteException unused) {
                throw new IOException("Remote exception");
            }
        }
        m5542new();
        return info;
    }

    @KeepForSdk
    public Info getInfo() {
        return m5541for();
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5542new() {
        synchronized (this.f9567do) {
            UP up = this.f9563do;
            if (up != null) {
                up.f3867do.countDown();
                try {
                    this.f9563do.join();
                } catch (InterruptedException unused) {
                }
            }
            long j = this.f9562do;
            if (j > 0) {
                this.f9563do = new UP(this, j);
            }
        }
    }

    @KeepForSdk
    public void start() {
        m5540do(true);
    }

    public final void zza() {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f9564do == null || this.f9565do == null) {
                return;
            }
            try {
                if (this.f9568do) {
                    ConnectionTracker.getInstance().unbindService(this.f9564do, this.f9565do);
                }
            } catch (Throwable unused) {
            }
            this.f9568do = false;
            this.f9566do = null;
            this.f9565do = null;
        }
    }

    @VisibleForTesting
    public AdvertisingIdClient(Context context, long j, boolean z, boolean z2) {
        Context applicationContext;
        this.f9567do = new Object();
        Preconditions.checkNotNull(context);
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f9564do = context;
        this.f9568do = false;
        this.f9562do = j;
    }
}

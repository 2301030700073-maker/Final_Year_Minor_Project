package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import com.reactnativecommunity.netinfo.BroadcastReceiverConnectivityReceiver;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzee {
    private static zzee zza;
    private final Executor zzb;
    private final CopyOnWriteArrayList zzc;
    private final Object zzd;
    private int zze;
    private boolean zzf;

    private zzee(final Context context) {
        Executor zza2 = zzcw.zza();
        this.zzb = zza2;
        this.zzc = new CopyOnWriteArrayList();
        this.zzd = new Object();
        this.zze = 0;
        zza2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeb
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(BroadcastReceiverConnectivityReceiver.CONNECTIVITY_ACTION);
                context.registerReceiver(new zzed(zzee.this, null), intentFilter);
            }
        });
    }

    public static synchronized zzee zza(Context context) {
        zzee zzeeVar;
        synchronized (zzee.class) {
            if (zza == null) {
                zza = new zzee(context);
            }
            zzeeVar = zza;
        }
        return zzeeVar;
    }

    private final void zzg() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.zzc;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzea zzeaVar = (zzea) it.next();
            if (zzeaVar.zza()) {
                copyOnWriteArrayList.remove(zzeaVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final void zze(int i) {
        zzg();
        synchronized (this.zzd) {
            if (this.zzf && this.zze == i) {
                return;
            }
            this.zzf = true;
            this.zze = i;
            Iterator it = this.zzc.iterator();
            while (it.hasNext()) {
                ((zzea) it.next()).zzb();
            }
        }
    }

    public final void zzb(zzdy zzdyVar, Executor executor) {
        boolean z;
        zzg();
        zzea zzeaVar = new zzea(this, zzdyVar, executor);
        synchronized (this.zzd) {
            this.zzc.add(zzeaVar);
            z = this.zzf;
        }
        if (z) {
            zzeaVar.zzb();
        }
    }

    public final int zzc() {
        int i;
        synchronized (this.zzd) {
            i = this.zze;
        }
        return i;
    }

    final /* synthetic */ void zzd(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type != 1) {
                            if (type != 4 && type != 5) {
                                if (type != 6) {
                                    i = type != 9 ? 8 : 7;
                                }
                                i = 5;
                            }
                        }
                        i = 2;
                    }
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                            i = 3;
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            i = 4;
                            break;
                        case 13:
                            i = 5;
                            break;
                        case 16:
                        case 19:
                        default:
                            i = 6;
                            break;
                        case 18:
                            i = 2;
                            break;
                        case 20:
                            if (Build.VERSION.SDK_INT >= 29) {
                                i = 9;
                                break;
                            }
                            break;
                    }
                } else {
                    i = 1;
                }
            } catch (SecurityException unused) {
            }
        }
        if (Build.VERSION.SDK_INT < 31 || i != 5) {
            zze(i);
            return;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            if (telephonyManager == null) {
                throw null;
            }
            TelephonyManager telephonyManager2 = telephonyManager;
            zzdx zzdxVar = new zzdx(this);
            telephonyManager.registerTelephonyCallback(this.zzb, zzdxVar);
            telephonyManager.unregisterTelephonyCallback(zzdxVar);
        } catch (RuntimeException unused2) {
            zze(5);
        }
    }

    final /* synthetic */ Executor zzf() {
        return this.zzb;
    }
}

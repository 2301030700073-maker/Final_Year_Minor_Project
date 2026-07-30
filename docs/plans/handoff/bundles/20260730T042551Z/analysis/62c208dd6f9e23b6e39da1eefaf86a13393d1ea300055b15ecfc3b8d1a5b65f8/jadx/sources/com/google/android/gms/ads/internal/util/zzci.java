package com.google.android.gms.ads.internal.util;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import com.google.android.gms.internal.ads.zzbcl;
import defpackage.C3214kR;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class zzci {

    /* renamed from: do, reason: not valid java name */
    public Context f9800do;

    /* renamed from: if, reason: not valid java name */
    public boolean f9804if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9803do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakHashMap f9801do = new WeakHashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3214kR f9802do = new C3214kR(this);

    @SuppressLint({"UnprotectedReceiver"})
    public final synchronized void zzb(Context context) {
        if (this.f9803do) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.f9800do = applicationContext;
        if (applicationContext == null) {
            this.f9800do = context;
        }
        zzbcl.zza(this.f9800do);
        this.f9804if = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdU)).booleanValue();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkR)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            this.f9800do.registerReceiver(this.f9802do, intentFilter);
        } else {
            this.f9800do.registerReceiver(this.f9802do, intentFilter, 4);
        }
        this.f9803do = true;
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final synchronized void zzc(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.f9804if) {
            this.f9801do.put(broadcastReceiver, intentFilter);
            return;
        }
        zzbcl.zza(context);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkR)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.registerReceiver(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter, 4);
        }
    }

    public final synchronized void zzd(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.f9804if) {
            this.f9801do.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }
}

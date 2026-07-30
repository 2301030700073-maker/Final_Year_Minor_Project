package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.RemoteException;
import com.facebook.internal.NativeProtocol;
import defpackage.AbstractServiceConnectionC4046yc;
import defpackage.C3869vc;
import defpackage.C4105zc;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbdm {
    private C4105zc zza;
    private C3869vc zzb;
    private AbstractServiceConnectionC4046yc zzc;
    private zzbdl zzd;

    public static boolean zzg(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
            if (queryIntentActivities != null && resolveActivity != null) {
                for (int i = 0; i < queryIntentActivities.size(); i++) {
                    if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                        return resolveActivity.activityInfo.packageName.equals(zzhfk.zza(context));
                    }
                }
            }
        }
        return false;
    }

    public final C4105zc zza() {
        C3869vc c3869vc = this.zzb;
        if (c3869vc == null) {
            this.zza = null;
        } else if (this.zza == null) {
            this.zza = c3869vc.m8478for(null);
        }
        return this.zza;
    }

    public final void zzb(Activity activity) {
        String zza;
        if (this.zzb == null && (zza = zzhfk.zza(activity)) != null) {
            zzhfl zzhflVar = new zzhfl(this);
            this.zzc = zzhflVar;
            C3869vc.m8476do(activity, zza, zzhflVar);
        }
    }

    public final void zzc(C3869vc c3869vc) {
        this.zzb = c3869vc;
        c3869vc.getClass();
        try {
            c3869vc.f16096do.mo1209synchronized(0L);
        } catch (RemoteException unused) {
        }
        zzbdl zzbdlVar = this.zzd;
        if (zzbdlVar != null) {
            zzbdlVar.zza();
        }
    }

    public final void zzd() {
        this.zzb = null;
        this.zza = null;
    }

    public final void zze(zzbdl zzbdlVar) {
        this.zzd = zzbdlVar;
    }

    public final void zzf(Activity activity) {
        AbstractServiceConnectionC4046yc abstractServiceConnectionC4046yc = this.zzc;
        if (abstractServiceConnectionC4046yc == null) {
            return;
        }
        activity.unbindService(abstractServiceConnectionC4046yc);
        this.zzb = null;
        this.zza = null;
        this.zzc = null;
    }
}

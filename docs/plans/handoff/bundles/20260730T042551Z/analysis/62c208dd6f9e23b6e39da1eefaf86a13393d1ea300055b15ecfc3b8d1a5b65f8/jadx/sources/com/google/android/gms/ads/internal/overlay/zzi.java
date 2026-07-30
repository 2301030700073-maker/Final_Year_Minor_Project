package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.zzcex;
import defpackage.XR;

/* loaded from: classes.dex */
public final class zzi {
    public final int zza;
    public final ViewGroup.LayoutParams zzb;
    public final ViewGroup zzc;
    public final Context zzd;

    public zzi(zzcex zzcexVar) {
        this.zzb = zzcexVar.getLayoutParams();
        ViewParent parent = zzcexVar.getParent();
        this.zzd = zzcexVar.zzE();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new XR("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.zzc = viewGroup;
        this.zza = viewGroup.indexOfChild(zzcexVar.zzF());
        viewGroup.removeView(zzcexVar.zzF());
        zzcexVar.zzaq(true);
    }
}

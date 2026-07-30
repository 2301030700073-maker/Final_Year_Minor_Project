package com.google.android.gms.ads.internal.util.client;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
public final class zzs {
    public static Context zza(Context context) {
        try {
            return DynamiteModule.m5606for(context, DynamiteModule.f10180do, ModuleDescriptor.MODULE_ID).f10189do;
        } catch (Exception e) {
            throw new zzr(e);
        }
    }

    public static Object zzb(Context context, String str, zzq zzqVar) {
        try {
            try {
                return zzqVar.zza(DynamiteModule.m5606for(context, DynamiteModule.f10180do, ModuleDescriptor.MODULE_ID).m5610if(str));
            } catch (Exception e) {
                throw new zzr(e);
            }
        } catch (Exception e2) {
            throw new zzr(e2);
        }
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbes implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzg;
    private final Object zzb = new Object();
    private final ConditionVariable zzc = new ConditionVariable();
    private volatile boolean zzd = false;
    volatile boolean zza = false;
    private SharedPreferences zze = null;
    private Bundle zzf = new Bundle();
    private JSONObject zzh = new JSONObject();
    private boolean zzi = false;
    private boolean zzj = false;

    private final void zzg(final SharedPreferences sharedPreferences) {
        if (sharedPreferences != null) {
            try {
                this.zzh = new JSONObject((String) zzbew.zza(new zzgmv() { // from class: com.google.android.gms.internal.ads.zzbep
                    @Override // com.google.android.gms.internal.ads.zzgmv
                    public final /* synthetic */ Object zza() {
                        return sharedPreferences.getString("flag_configuration", "{}");
                    }
                }));
            } catch (JSONException unused) {
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzg(sharedPreferences);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x0113, code lost:
    
        if (new org.json.JSONObject((java.lang.String) com.google.android.gms.internal.ads.zzbew.zza(new com.google.android.gms.internal.ads.zzbeq(r3))).optBoolean("local_flags_enabled") != false) goto L61;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0119 A[Catch: all -> 0x0174, DONT_GENERATE, TRY_ENTER, TryCatch #0 {, blocks: (B:8:0x0008, B:10:0x000c, B:12:0x000e, B:14:0x0013, B:15:0x0015, B:17:0x0027, B:18:0x002b, B:20:0x002d, B:39:0x0097, B:40:0x009e, B:49:0x00cd, B:50:0x00d4, B:57:0x0119, B:58:0x0120, B:71:0x0162, B:72:0x0169, B:87:0x016c, B:88:0x0173, B:23:0x0042, B:26:0x004c, B:29:0x0055, B:31:0x0060, B:32:0x0068, B:34:0x006e, B:36:0x007e, B:38:0x0093, B:42:0x00a0, B:44:0x00a4, B:46:0x00b4, B:48:0x00c9, B:52:0x00d6, B:55:0x0115, B:60:0x0122, B:62:0x012f, B:64:0x013d, B:65:0x0146, B:67:0x0154, B:69:0x0158, B:70:0x015b, B:74:0x00e7, B:76:0x00f5, B:78:0x00fd, B:80:0x0108), top: B:7:0x0008, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0122 A[Catch: all -> 0x016b, TRY_ENTER, TryCatch #3 {all -> 0x016b, blocks: (B:23:0x0042, B:26:0x004c, B:29:0x0055, B:31:0x0060, B:32:0x0068, B:34:0x006e, B:36:0x007e, B:38:0x0093, B:42:0x00a0, B:44:0x00a4, B:46:0x00b4, B:48:0x00c9, B:52:0x00d6, B:55:0x0115, B:60:0x0122, B:62:0x012f, B:64:0x013d, B:65:0x0146, B:67:0x0154, B:69:0x0158, B:70:0x015b, B:74:0x00e7, B:76:0x00f5, B:78:0x00fd, B:80:0x0108), top: B:22:0x0042, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbes.zza(android.content.Context):void");
    }

    final boolean zzb() {
        return this.zzi;
    }

    public final boolean zzc() {
        return this.zzj;
    }

    public final Object zzd(final zzbel zzbelVar) {
        if (!this.zzc.block(5000L)) {
            synchronized (this.zzb) {
                if (!this.zza) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.zzd || this.zze == null || this.zzj) {
            synchronized (this.zzb) {
                if (this.zzd && this.zze != null && !this.zzj) {
                }
                return zzbelVar.zzf();
            }
        }
        if (zzbelVar.zzm() != 2) {
            return (zzbelVar.zzm() == 1 && this.zzh.has(zzbelVar.zze())) ? zzbelVar.zzc(this.zzh) : zzbew.zza(new zzgmv() { // from class: com.google.android.gms.internal.ads.zzber
                @Override // com.google.android.gms.internal.ads.zzgmv
                public final /* synthetic */ Object zza() {
                    return zzbes.this.zzf(zzbelVar);
                }
            });
        }
        Bundle bundle = this.zzf;
        return bundle == null ? zzbelVar.zzf() : zzbelVar.zza(bundle);
    }

    final /* synthetic */ Object zzf(zzbel zzbelVar) {
        return zzbelVar.zzd(this.zze);
    }

    public final Object zze(zzbel zzbelVar) {
        return (this.zzd || this.zza) ? zzd(zzbelVar) : zzbelVar.zzf();
    }
}

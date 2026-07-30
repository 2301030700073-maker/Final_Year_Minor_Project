package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.util.zzbz;
import com.google.android.gms.ads.internal.util.zzcb;
import com.google.android.gms.ads.internal.zzv;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: eR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class SharedPreferencesOnSharedPreferenceChangeListenerC2693eR implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzcb f12674do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f12675do;

    public SharedPreferencesOnSharedPreferenceChangeListenerC2693eR(zzcb zzcbVar, String str) {
        this.f12674do = zzcbVar;
        this.f12675do = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f12674do) {
            Iterator it = this.f12674do.f9795do.iterator();
            while (it.hasNext()) {
                zzbz zzbzVar = (zzbz) it.next();
                String str2 = this.f12675do;
                Map map = zzbzVar.zza;
                if (map.containsKey(str2) && ((Set) map.get(str2)).contains(str)) {
                    zzv.zzp().zzi().zzE(false);
                }
            }
        }
    }
}

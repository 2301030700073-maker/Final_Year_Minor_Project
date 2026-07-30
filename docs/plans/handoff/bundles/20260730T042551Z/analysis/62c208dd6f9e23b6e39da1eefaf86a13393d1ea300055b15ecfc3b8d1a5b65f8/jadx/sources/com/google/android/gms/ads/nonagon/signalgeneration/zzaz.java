package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbyy;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzaz {

    /* renamed from: do, reason: not valid java name */
    public final zzbyy f10017do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f10018do;

    /* renamed from: if, reason: not valid java name */
    public final String f10019if;

    public /* synthetic */ zzaz(zzax zzaxVar) {
        this.f10018do = zzaxVar.f10015do;
        this.f10019if = zzaxVar.f10016if;
        this.f10017do = zzaxVar.f10014do;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzbbq.zza.EnumC0054zza zza() {
        char c;
        String str = this.f10018do;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        return c != 0 ? c != 1 ? c != 2 ? c != 3 ? zzbbq.zza.EnumC0054zza.AD_INITIATER_UNSPECIFIED : zzbbq.zza.EnumC0054zza.REWARD_BASED_VIDEO_AD : zzbbq.zza.EnumC0054zza.AD_LOADER : zzbbq.zza.EnumC0054zza.INTERSTITIAL : zzbbq.zza.EnumC0054zza.BANNER;
    }

    public final String zzc() {
        return this.f10018do.toLowerCase(Locale.ROOT);
    }

    public final Set zze() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.f10018do.toLowerCase(Locale.ROOT));
        return hashSet;
    }
}

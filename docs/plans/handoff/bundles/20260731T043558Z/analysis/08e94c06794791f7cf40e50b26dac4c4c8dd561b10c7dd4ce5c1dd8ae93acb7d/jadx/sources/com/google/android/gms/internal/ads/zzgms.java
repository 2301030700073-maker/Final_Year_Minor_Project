package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgms {
    private final zzgmr zza;

    private zzgms(zzgmr zzgmrVar) {
        int i = zzglq.zzb;
        this.zza = zzgmrVar;
    }

    public static zzgms zza(final zzglr zzglrVar) {
        return new zzgms(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgmp
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final /* synthetic */ Iterator zza(zzgms zzgmsVar, CharSequence charSequence) {
                return new zzgmj(zzgmsVar, charSequence, zzglr.this);
            }
        });
    }

    public static zzgms zzb(Pattern pattern) {
        final zzglw zzglwVar = new zzglw(pattern);
        zzgmd.zzf(!((zzglv) zzglwVar.zza("")).zza.matches(), "The pattern may not match the empty string: %s", zzglwVar);
        return new zzgms(new zzgmr() { // from class: com.google.android.gms.internal.ads.zzgmn
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final /* synthetic */ Iterator zza(zzgms zzgmsVar, CharSequence charSequence) {
                return new zzgmk(zzgmsVar, charSequence, zzglt.this.zza(charSequence));
            }
        });
    }

    public static zzgms zzc(int i) {
        final int i2 = 4000;
        return new zzgms(new zzgmr(i2) { // from class: com.google.android.gms.internal.ads.zzgmo
            @Override // com.google.android.gms.internal.ads.zzgmr
            public final /* synthetic */ Iterator zza(zzgms zzgmsVar, CharSequence charSequence) {
                return new zzgml(zzgmsVar, charSequence, 4000);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final Iterator zzf(CharSequence charSequence) {
        return this.zza.zza(this, charSequence);
    }

    public final Iterable zzd(CharSequence charSequence) {
        charSequence.getClass();
        return new zzgmm(this, charSequence);
    }

    public final List zze(CharSequence charSequence) {
        charSequence.getClass();
        Iterator zzf = zzf(charSequence);
        ArrayList arrayList = new ArrayList();
        while (zzf.hasNext()) {
            arrayList.add((String) zzf.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.wearable.WearableStatusCodes;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzfvc {
    private final zzfvb zza;

    private zzfvc(zzfvb zzfvbVar) {
        int i = zzftx.zzb;
        this.zza = zzfvbVar;
    }

    public static zzfvc zza(int i) {
        return new zzfvc(new zzfuy(WearableStatusCodes.TARGET_NODE_NOT_CONNECTED));
    }

    public static zzfvc zzb(zzfty zzftyVar) {
        return new zzfvc(new zzfuu(zzftyVar));
    }

    public static zzfvc zzc(Pattern pattern) {
        zzfue zzfueVar = new zzfue(pattern);
        zzfun.zzi(!((zzfud) zzfueVar.zza(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)).zza.matches(), "The pattern may not match the empty string: %s", zzfueVar);
        return new zzfvc(new zzfuw(zzfueVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Iterator zzg(CharSequence charSequence) {
        return this.zza.zza(this, charSequence);
    }

    public final Iterable zzd(CharSequence charSequence) {
        charSequence.getClass();
        return new zzfuz(this, charSequence);
    }

    public final List zzf(CharSequence charSequence) {
        charSequence.getClass();
        Iterator zzg = zzg(charSequence);
        ArrayList arrayList = new ArrayList();
        while (zzg.hasNext()) {
            arrayList.add((String) zzg.next());
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}

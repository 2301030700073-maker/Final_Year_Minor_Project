package defpackage;

import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.internal.client.zzex;
import com.google.android.gms.internal.ads.zzblt;
import com.google.android.gms.internal.ads.zzblw;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class HR extends zzblt {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzex f1353do;

    @Override // com.google.android.gms.internal.ads.zzblu
    public final void zzb(List list) {
        int i;
        ArrayList arrayList;
        synchronized (this.f1353do.f9650do) {
            zzex zzexVar = this.f1353do;
            zzexVar.f9652do = false;
            zzexVar.f9655if = true;
            arrayList = new ArrayList(this.f1353do.f9651do);
            this.f1353do.f9651do.clear();
        }
        zzblw m5546do = zzex.m5546do(list);
        int size = arrayList.size();
        for (i = 0; i < size; i++) {
            ((OnInitializationCompleteListener) arrayList.get(i)).onInitializationComplete(m5546do);
        }
    }
}

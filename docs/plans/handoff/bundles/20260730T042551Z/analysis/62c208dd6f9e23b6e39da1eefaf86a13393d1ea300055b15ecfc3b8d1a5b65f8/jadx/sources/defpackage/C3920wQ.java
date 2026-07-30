package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzapv;

/* renamed from: wQ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3920wQ implements zzapq {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AQ f16341do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f16342do;

    public C3920wQ(String str, AQ aq) {
        this.f16342do = str;
        this.f16341do = aq;
    }

    @Override // com.google.android.gms.internal.ads.zzapq
    public final void zza(zzapv zzapvVar) {
        zzo.zzj("Failed to load URL: " + this.f16342do + "\n" + zzapvVar.toString());
        this.f16341do.zza((Object) null);
    }
}

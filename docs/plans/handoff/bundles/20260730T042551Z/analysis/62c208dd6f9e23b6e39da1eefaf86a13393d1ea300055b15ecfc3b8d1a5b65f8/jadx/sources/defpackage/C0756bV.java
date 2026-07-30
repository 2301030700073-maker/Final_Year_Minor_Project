package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbdm;
import com.google.android.gms.internal.ads.zzhfk;
import defpackage.C3928wc;

/* renamed from: bV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0756bV implements zzbdl {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f8404do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Uri f8405do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbdm f8406do;

    public C0756bV(zzbdm zzbdmVar, Context context, Uri uri) {
        this.f8406do = zzbdmVar;
        this.f8404do = context;
        this.f8405do = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void zza() {
        zzbdm zzbdmVar = this.f8406do;
        C3928wc m8577do = new C3928wc.Cnew(zzbdmVar.zza()).m8577do();
        Context context = this.f8404do;
        String zza = zzhfk.zza(context);
        Intent intent = m8577do.f16367do;
        intent.setPackage(zza);
        intent.setData(this.f8405do);
        C0466Ra.startActivity(context, intent, m8577do.f16368do);
        zzbdmVar.zzf((Activity) context);
    }
}

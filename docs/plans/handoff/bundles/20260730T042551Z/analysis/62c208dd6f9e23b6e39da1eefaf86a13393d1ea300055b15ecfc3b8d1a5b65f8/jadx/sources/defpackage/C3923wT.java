package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdw;

/* renamed from: wT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3923wT {

    /* renamed from: do, reason: not valid java name */
    public final long f16349do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f16350do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzdw f16351do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Boolean f16352do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Long f16353do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16354do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f16355do;

    /* renamed from: for, reason: not valid java name */
    public final String f16356for;

    /* renamed from: if, reason: not valid java name */
    public final String f16357if;

    /* renamed from: new, reason: not valid java name */
    public final String f16358new;

    public C3923wT(Context context, zzdw zzdwVar, Long l) {
        this.f16355do = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.f16350do = applicationContext;
        this.f16353do = l;
        if (zzdwVar != null) {
            this.f16351do = zzdwVar;
            this.f16354do = zzdwVar.zzf;
            this.f16357if = zzdwVar.zze;
            this.f16356for = zzdwVar.zzd;
            this.f16355do = zzdwVar.zzc;
            this.f16349do = zzdwVar.zzb;
            this.f16358new = zzdwVar.zzh;
            Bundle bundle = zzdwVar.zzg;
            if (bundle != null) {
                this.f16352do = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}

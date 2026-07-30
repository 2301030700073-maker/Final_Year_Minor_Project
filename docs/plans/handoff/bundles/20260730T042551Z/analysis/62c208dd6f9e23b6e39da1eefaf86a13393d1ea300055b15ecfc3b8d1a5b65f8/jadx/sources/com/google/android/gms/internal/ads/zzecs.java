package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import defpackage.AbstractC3414ns;
import defpackage.InterfaceFutureC3942wq;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzecs {
    private AbstractC3414ns zza;
    private final Context zzb;

    public zzecs(Context context) {
        this.zzb = context;
    }

    public final InterfaceFutureC3942wq zza() {
        try {
            AbstractC3414ns.Cdo m7617do = AbstractC3414ns.m7617do(this.zzb);
            this.zza = m7617do;
            return m7617do == null ? zzgch.zzg(new IllegalStateException("MeasurementManagerFutures is null")) : m7617do.m7622new();
        } catch (Exception e) {
            return zzgch.zzg(e);
        }
    }

    public final InterfaceFutureC3942wq zzb(Uri uri, InputEvent inputEvent) {
        try {
            AbstractC3414ns abstractC3414ns = this.zza;
            Objects.requireNonNull(abstractC3414ns);
            return abstractC3414ns.mo7618if(uri, inputEvent);
        } catch (Exception e) {
            return zzgch.zzg(e);
        }
    }
}

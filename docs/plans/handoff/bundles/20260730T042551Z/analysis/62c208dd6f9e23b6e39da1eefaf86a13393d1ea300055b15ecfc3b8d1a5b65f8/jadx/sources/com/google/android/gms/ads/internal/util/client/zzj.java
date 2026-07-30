package com.google.android.gms.ads.internal.util.client;

import android.util.JsonWriter;
import com.facebook.internal.NativeProtocol;
import defpackage.CT;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class zzj implements CT {
    public final /* synthetic */ int zza;
    public final /* synthetic */ Map zzb;

    public /* synthetic */ zzj(int i, Map map) {
        this.zza = i;
        this.zzb = map;
    }

    @Override // defpackage.CT
    public final void zza(JsonWriter jsonWriter) {
        int i = this.zza;
        Map map = this.zzb;
        Object obj = zzl.f9738do;
        jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        zzl.m5558if(jsonWriter, map);
        jsonWriter.endObject();
    }
}

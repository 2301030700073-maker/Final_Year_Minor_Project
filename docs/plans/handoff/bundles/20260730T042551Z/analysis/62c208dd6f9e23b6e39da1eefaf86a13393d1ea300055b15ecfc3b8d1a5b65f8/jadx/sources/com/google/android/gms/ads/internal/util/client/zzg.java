package com.google.android.gms.ads.internal.util.client;

import android.util.JsonWriter;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.util.Base64Utils;
import defpackage.CT;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class zzg implements CT {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ Map zzc;
    public final /* synthetic */ byte[] zzd;

    public /* synthetic */ zzg(String str, String str2, Map map, byte[] bArr) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = map;
        this.zzd = bArr;
    }

    @Override // defpackage.CT
    public final void zza(JsonWriter jsonWriter) {
        String str = this.zza;
        String str2 = this.zzb;
        Map map = this.zzc;
        byte[] bArr = this.zzd;
        Object obj = zzl.f9738do;
        jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        zzl.m5558if(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(Base64Utils.encode(bArr));
        }
        jsonWriter.endObject();
    }
}

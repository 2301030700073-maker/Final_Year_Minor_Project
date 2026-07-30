package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbvk;
import com.google.android.gms.internal.ads.zzdre;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbk {

    /* renamed from: do, reason: not valid java name */
    public final long f10045do;

    /* renamed from: if, reason: not valid java name */
    public final long f10046if;
    public final String zza;
    public String zzb;
    public zzbvk zzd;
    public Bundle zze;
    public String zzc = null;
    public Bundle zzf = new Bundle();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzbk(JsonReader jsonReader, zzbvk zzbvkVar) {
        Bundle bundle;
        char c;
        this.f10045do = -1L;
        this.f10046if = -1L;
        this.zzd = zzbvkVar;
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : nextName;
            switch (nextName.hashCode()) {
                case -1573145462:
                    if (nextName.equals("start_time")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -995427962:
                    if (nextName.equals(NativeProtocol.WEB_DIALOG_PARAMS)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -271442291:
                    if (nextName.equals("signal_dictionary")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1725551537:
                    if (nextName.equals("end_time")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c == 0) {
                str = jsonReader.nextString();
            } else if (c == 1) {
                hashMap = new HashMap();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    hashMap.put(jsonReader.nextName(), jsonReader.nextString());
                }
                jsonReader.endObject();
            } else if (c == 2) {
                this.f10045do = jsonReader.nextLong();
            } else if (c != 3) {
                jsonReader.skipValue();
            } else {
                this.f10046if = jsonReader.nextLong();
            }
        }
        this.zza = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.zzf.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue() || zzbvkVar == null || (bundle = zzbvkVar.zzm) == null) {
            return;
        }
        bundle.putLong(zzdre.GET_SIGNALS_SDKCORE_START.zza(), this.f10045do);
        zzbvkVar.zzm.putLong(zzdre.GET_SIGNALS_SDKCORE_END.zza(), this.f10046if);
    }
}

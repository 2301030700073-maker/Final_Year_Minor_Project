package com.google.android.gms.ads.internal.util.client;

import android.util.JsonWriter;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.wearable.WearableStatusCodes;
import defpackage.CT;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzl {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f9740do = false;

    /* renamed from: if, reason: not valid java name */
    public static boolean f9741if = false;
    public static final /* synthetic */ int zza = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List f9742do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f9738do = new Object();

    /* renamed from: do, reason: not valid java name */
    public static final Clock f9737do = DefaultClock.getInstance();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final HashSet f9739do = new HashSet(Arrays.asList(new String[0]));

    public zzl() {
        throw null;
    }

    public zzl(String str) {
        this.f9742do = !zzk() ? new ArrayList() : Arrays.asList("network_request_".concat(String.valueOf(UUID.randomUUID().toString())));
    }

    /* renamed from: if, reason: not valid java name */
    public static void m5558if(JsonWriter jsonWriter, Map map) {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            if (!f9739do.contains(str)) {
                if (!(entry.getValue() instanceof List)) {
                    if (!(entry.getValue() instanceof String)) {
                        zzo.zzg("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name(FacebookRequestErrorClassification.KEY_NAME).value(str);
                    jsonWriter.name("value").value((String) entry.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str2 : (List) entry.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name(FacebookRequestErrorClassification.KEY_NAME).value(str);
                        jsonWriter.name("value").value(str2);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    public static void zzi() {
        synchronized (f9738do) {
            f9740do = false;
            f9741if = false;
            zzo.zzj("Ad debug logging enablement is out of date.");
        }
    }

    public static void zzj(boolean z) {
        synchronized (f9738do) {
            f9740do = true;
            f9741if = z;
        }
    }

    public static boolean zzk() {
        boolean z;
        synchronized (f9738do) {
            z = false;
            if (f9740do && f9741if) {
                z = true;
            }
        }
        return z;
    }

    public static boolean zzl() {
        boolean z;
        synchronized (f9738do) {
            z = f9740do;
        }
        return z;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5559do(String str, CT ct) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f9737do.currentTimeMillis());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator it = this.f9742do.iterator();
            while (it.hasNext()) {
                jsonWriter.value((String) it.next());
            }
            jsonWriter.endArray();
            ct.zza(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzo.zzh("unable to log", e);
        }
        String stringWriter2 = stringWriter.toString();
        synchronized (zzl.class) {
            zzo.zzi("GMA Debug BEGIN");
            int i = 0;
            while (i < stringWriter2.length()) {
                int i2 = i + WearableStatusCodes.TARGET_NODE_NOT_CONNECTED;
                zzo.zzi("GMA Debug CONTENT ".concat(String.valueOf(stringWriter2.substring(i, Math.min(i2, stringWriter2.length())))));
                i = i2;
            }
            zzo.zzi("GMA Debug FINISH");
        }
    }

    public final void zzc(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (zzk()) {
            m5559do("onNetworkRequest", new zzg(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr));
        }
    }

    public final void zzd(String str, String str2, Map map, byte[] bArr) {
        if (zzk()) {
            m5559do("onNetworkRequest", new zzg(str, "GET", map, bArr));
        }
    }

    public final void zze(HttpURLConnection httpURLConnection, int i) {
        if (zzk()) {
            String str = null;
            m5559do("onNetworkResponse", new zzj(i, httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields())));
            if (i < 200 || i >= 300) {
                try {
                    str = httpURLConnection.getResponseMessage();
                } catch (IOException e) {
                    zzo.zzj("Can not get error message from error HttpURLConnection\n".concat(String.valueOf(e.getMessage())));
                }
                m5559do("onNetworkRequestError", new zzi(str));
            }
        }
    }

    public final void zzf(Map map, int i) {
        if (zzk()) {
            m5559do("onNetworkResponse", new zzj(i, map));
            if (i < 200 || i >= 300) {
                m5559do("onNetworkRequestError", new zzi(null));
            }
        }
    }

    public final void zzg(String str) {
        if (zzk() && str != null) {
            zzh(str.getBytes());
        }
    }

    public final void zzh(final byte[] bArr) {
        m5559do("onNetworkResponseBody", new CT() { // from class: com.google.android.gms.ads.internal.util.client.zzh
            @Override // defpackage.CT
            public final void zza(JsonWriter jsonWriter) {
                Object obj = zzl.f9738do;
                jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
                byte[] bArr2 = bArr;
                int length = bArr2.length;
                String encode = Base64Utils.encode(bArr2);
                if (length < 10000) {
                    jsonWriter.name("body").value(encode);
                } else {
                    String zzf = zzf.zzf(encode);
                    if (zzf != null) {
                        jsonWriter.name("bodydigest").value(zzf);
                    }
                }
                jsonWriter.name("bodylength").value(length);
                jsonWriter.endObject();
            }
        });
    }
}

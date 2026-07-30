package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.TaggingLibraryJsInterface;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbdv;
import com.google.android.gms.internal.ads.zzbeq;
import defpackage.PQ;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class PQ extends QueryInfoGenerationCallback {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ TaggingLibraryJsInterface f2782do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f2783do;

    public PQ(TaggingLibraryJsInterface taggingLibraryJsInterface, String str) {
        this.f2783do = str;
        this.f2782do = taggingLibraryJsInterface;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        zzo.zzj("Failed to generate query info for the tagging library, error: ".concat(String.valueOf(str)));
        boolean booleanValue = ((Boolean) zzbeq.zza.zze()).booleanValue();
        TaggingLibraryJsInterface taggingLibraryJsInterface = this.f2782do;
        String concat = booleanValue ? ",\"as\":".concat(taggingLibraryJsInterface.f9957do.zza().toString()) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        Locale locale = Locale.getDefault();
        Object[] objArr = new Object[4];
        objArr[0] = this.f2783do;
        objArr[1] = str;
        zzbdv zzbdvVar = zzbeq.zzc;
        objArr[2] = Long.valueOf(((Boolean) zzbdvVar.zze()).booleanValue() ? ((Long) zzbeq.zzf.zze()).longValue() : 0L);
        objArr[3] = concat;
        final String format = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"error\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", objArr);
        if (((Boolean) zzbdvVar.zze()).booleanValue()) {
            try {
                taggingLibraryJsInterface.f9964do.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbs
                    @Override // java.lang.Runnable
                    public final void run() {
                        PQ.this.f2782do.f9956do.evaluateJavascript(format, null);
                    }
                });
            } catch (RuntimeException e) {
                zzv.zzp().zzv(e, "TaggingLibraryJsInterface.getQueryInfo.onFailure");
            }
        } else {
            taggingLibraryJsInterface.f9956do.evaluateJavascript(format, null);
        }
        if (((Boolean) zzbeq.zza.zze()).booleanValue() && ((Boolean) zzbeq.zzb.zze()).booleanValue()) {
            taggingLibraryJsInterface.f9958do.zzb();
        }
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        final String format;
        String str = this.f2783do;
        TaggingLibraryJsInterface taggingLibraryJsInterface = this.f2782do;
        String query = queryInfo.getQuery();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("paw_id", str);
            jSONObject.put("signal", query);
            jSONObject.put("sdk_ttl_ms", ((Boolean) zzbeq.zzc.zze()).booleanValue() ? ((Long) zzbeq.zzf.zze()).longValue() : 0L);
            if (((Boolean) zzbeq.zza.zze()).booleanValue()) {
                jSONObject.put("as", taggingLibraryJsInterface.f9957do.zza());
            }
            format = String.format(Locale.getDefault(), "window.postMessage(%1$s, '*');", jSONObject);
        } catch (JSONException unused) {
            String concat = ((Boolean) zzbeq.zza.zze()).booleanValue() ? ",\"as\":".concat(taggingLibraryJsInterface.f9957do.zza().toString()) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            Locale locale = Locale.getDefault();
            Object[] objArr = new Object[4];
            objArr[0] = str;
            objArr[1] = queryInfo.getQuery();
            objArr[2] = Long.valueOf(((Boolean) zzbeq.zzc.zze()).booleanValue() ? ((Long) zzbeq.zzf.zze()).longValue() : 0L);
            objArr[3] = concat;
            format = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"signal\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", objArr);
        }
        if (((Boolean) zzbeq.zzc.zze()).booleanValue()) {
            try {
                taggingLibraryJsInterface.f9964do.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbt
                    @Override // java.lang.Runnable
                    public final void run() {
                        PQ.this.f2782do.f9956do.evaluateJavascript(format, null);
                    }
                });
            } catch (RuntimeException e) {
                zzv.zzp().zzv(e, "TaggingLibraryJsInterface.getQueryInfo.onSuccess");
            }
        } else {
            taggingLibraryJsInterface.f9956do.evaluateJavascript(format, null);
        }
        if (((Boolean) zzbeq.zza.zze()).booleanValue() && ((Boolean) zzbeq.zzb.zze()).booleanValue()) {
            taggingLibraryJsInterface.f9958do.zzb();
        }
    }
}

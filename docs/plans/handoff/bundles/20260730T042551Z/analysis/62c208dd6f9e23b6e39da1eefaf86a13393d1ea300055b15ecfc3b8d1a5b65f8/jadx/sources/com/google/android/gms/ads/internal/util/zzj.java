package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzazj;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbec;
import com.google.android.gms.internal.ads.zzbed;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzbzw;
import defpackage.InterfaceFutureC3942wq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzj implements zzg {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SharedPreferences.Editor f9818do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SharedPreferences f9819do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9823do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceFutureC3942wq f9827do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9828do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f9836if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9822do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f9824do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzazj f9820do = null;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9837if = true;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f9833for = true;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public String f9832for = "-1";

    /* renamed from: do, reason: not valid java name */
    public int f9816do = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzbzg f9821do = new zzbzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f9817do = 0;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long f9835if = 0;

    /* renamed from: if, reason: not valid java name */
    public int f9834if = -1;

    /* renamed from: for, reason: not valid java name */
    public int f9830for = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Set f9825do = Collections.emptySet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public JSONObject f9826do = new JSONObject();

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f9840new = true;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f9843try = true;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public String f9839new = null;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public String f9842try = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f9815case = false;

    /* renamed from: case, reason: not valid java name */
    public String f9814case = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: else, reason: not valid java name */
    public String f9829else = "{}";

    /* renamed from: new, reason: not valid java name */
    public int f9838new = -1;

    /* renamed from: try, reason: not valid java name */
    public int f9841try = -1;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public long f9831for = 0;

    /* renamed from: do, reason: not valid java name */
    public final void m5574do() {
        InterfaceFutureC3942wq interfaceFutureC3942wq = this.f9827do;
        if (interfaceFutureC3942wq == null || interfaceFutureC3942wq.isDone()) {
            return;
        }
        try {
            this.f9827do.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            zzo.zzk("Interrupted while waiting for preferences loaded.", e);
        } catch (CancellationException e2) {
            e = e2;
            zzo.zzh("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e3) {
            e = e3;
            zzo.zzh("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e4) {
            e = e4;
            zzo.zzh("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m5575if() {
        zzbzw.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzh
            @Override // java.lang.Runnable
            public final void run() {
                zzj.this.zzP();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzA(int i) {
        m5574do();
        synchronized (this.f9822do) {
            this.f9816do = i;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                if (i == -1) {
                    editor.remove("gad_has_consent_for_cookies");
                } else {
                    editor.putInt("gad_has_consent_for_cookies", i);
                }
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzB(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziN)).booleanValue()) {
            m5574do();
            synchronized (this.f9822do) {
                if (this.f9842try.equals(str)) {
                    return;
                }
                this.f9842try = str;
                SharedPreferences.Editor editor = this.f9818do;
                if (editor != null) {
                    editor.putString("inspector_info", str);
                    this.f9818do.apply();
                }
                m5575if();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzC(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjp)).booleanValue()) {
            m5574do();
            synchronized (this.f9822do) {
                if (this.f9829else.equals(str)) {
                    return;
                }
                this.f9829else = str;
                SharedPreferences.Editor editor = this.f9818do;
                if (editor != null) {
                    editor.putString("inspector_ui_storage", str);
                    this.f9818do.apply();
                }
                m5575if();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzD(boolean z) {
        m5574do();
        synchronized (this.f9822do) {
            if (z == this.f9833for) {
                return;
            }
            this.f9833for = z;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putBoolean("gad_idless", z);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzE(boolean z) {
        m5574do();
        synchronized (this.f9822do) {
            long currentTimeMillis = System.currentTimeMillis() + ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkp)).longValue();
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putBoolean("is_topics_ad_personalization_allowed", z);
                this.f9818do.putLong("topics_consent_expiry_time_ms", currentTimeMillis);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzF(String str, String str2, boolean z) {
        m5574do();
        synchronized (this.f9822do) {
            JSONArray optJSONArray = this.f9826do.optJSONArray(str);
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
            }
            int length = optJSONArray.length();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject == null) {
                    return;
                }
                if (str2.equals(optJSONObject.optString("template_id"))) {
                    if (z && optJSONObject.optBoolean("uses_media_view", false)) {
                        return;
                    } else {
                        length = i;
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
                optJSONArray.put(length, jSONObject);
                this.f9826do.put(str, optJSONArray);
            } catch (JSONException e) {
                zzo.zzk("Could not update native advanced settings", e);
            }
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putString("native_advanced_settings", this.f9826do.toString());
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzG(int i) {
        m5574do();
        synchronized (this.f9822do) {
            if (this.f9834if == i) {
                return;
            }
            this.f9834if = i;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putInt("request_in_session_count", i);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzH(int i) {
        m5574do();
        synchronized (this.f9822do) {
            if (this.f9841try == i) {
                return;
            }
            this.f9841try = i;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putInt("sd_app_measure_npa", i);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzI(long j) {
        m5574do();
        synchronized (this.f9822do) {
            if (this.f9831for == j) {
                return;
            }
            this.f9831for = j;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putLong("sd_app_measure_npa_ts", j);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzJ(String str) {
        m5574do();
        synchronized (this.f9822do) {
            this.f9832for = str;
            if (this.f9818do != null) {
                if (str.equals("-1")) {
                    this.f9818do.remove("IABTCF_TCString");
                } else {
                    this.f9818do.putString("IABTCF_TCString", str);
                }
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzK() {
        boolean z;
        m5574do();
        synchronized (this.f9822do) {
            z = this.f9840new;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzL() {
        boolean z;
        m5574do();
        synchronized (this.f9822do) {
            z = this.f9843try;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzM() {
        boolean z;
        m5574do();
        synchronized (this.f9822do) {
            z = this.f9815case;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzN() {
        boolean z;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaH)).booleanValue()) {
            return false;
        }
        m5574do();
        synchronized (this.f9822do) {
            z = this.f9833for;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzO() {
        m5574do();
        synchronized (this.f9822do) {
            SharedPreferences sharedPreferences = this.f9819do;
            boolean z = false;
            if (sharedPreferences == null) {
                return false;
            }
            if (sharedPreferences.getLong("topics_consent_expiry_time_ms", 0L) < System.currentTimeMillis()) {
                return false;
            }
            if (this.f9819do.getBoolean("is_topics_ad_personalization_allowed", false) && !this.f9833for) {
                z = true;
            }
            return z;
        }
    }

    public final zzazj zzP() {
        if (!this.f9828do) {
            return null;
        }
        if ((zzK() && zzL()) || !((Boolean) zzbec.zzb.zze()).booleanValue()) {
            return null;
        }
        synchronized (this.f9822do) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.f9820do == null) {
                this.f9820do = new zzazj();
            }
            this.f9820do.zzd();
            zzo.zzi("start fetching content...");
            return this.f9820do;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zza() {
        int i;
        m5574do();
        synchronized (this.f9822do) {
            i = this.f9830for;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zzb() {
        m5574do();
        return this.f9816do;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zzc() {
        int i;
        m5574do();
        synchronized (this.f9822do) {
            i = this.f9834if;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zzd() {
        long j;
        m5574do();
        synchronized (this.f9822do) {
            j = this.f9817do;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zze() {
        long j;
        m5574do();
        synchronized (this.f9822do) {
            j = this.f9835if;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zzf() {
        long j;
        m5574do();
        synchronized (this.f9822do) {
            j = this.f9831for;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzbzg zzg() {
        zzbzg zzbzgVar;
        m5574do();
        synchronized (this.f9822do) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlz)).booleanValue() && this.f9821do.zzj()) {
                Iterator it = this.f9824do.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
            }
            zzbzgVar = this.f9821do;
        }
        return zzbzgVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzbzg zzh() {
        zzbzg zzbzgVar;
        synchronized (this.f9822do) {
            zzbzgVar = this.f9821do;
        }
        return zzbzgVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzi() {
        String str;
        m5574do();
        synchronized (this.f9822do) {
            str = this.f9814case;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzj() {
        String str;
        m5574do();
        synchronized (this.f9822do) {
            str = this.f9839new;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzk() {
        String str;
        m5574do();
        synchronized (this.f9822do) {
            str = this.f9842try;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzl() {
        String str;
        m5574do();
        synchronized (this.f9822do) {
            str = this.f9829else;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzm() {
        m5574do();
        return this.f9832for;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final JSONObject zzn() {
        JSONObject jSONObject;
        m5574do();
        synchronized (this.f9822do) {
            jSONObject = this.f9826do;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzo(Runnable runnable) {
        this.f9824do.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzp(final Context context) {
        synchronized (this.f9822do) {
            if (this.f9819do != null) {
                return;
            }
            final String str = "admob";
            this.f9827do = zzbzw.zza.zza(new Runnable(context, str) { // from class: com.google.android.gms.ads.internal.util.zzi
                public final /* synthetic */ Context zzb;
                public final /* synthetic */ String zzc = "admob";

                @Override // java.lang.Runnable
                public final void run() {
                    NetworkSecurityPolicy networkSecurityPolicy;
                    zzj zzjVar = zzj.this;
                    Context context2 = this.zzb;
                    zzjVar.getClass();
                    SharedPreferences sharedPreferences = context2.getSharedPreferences("admob", 0);
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    try {
                        synchronized (zzjVar.f9822do) {
                            zzjVar.f9819do = sharedPreferences;
                            zzjVar.f9818do = edit;
                            if (PlatformVersion.isAtLeastM()) {
                                networkSecurityPolicy = NetworkSecurityPolicy.getInstance();
                                networkSecurityPolicy.isCleartextTrafficPermitted();
                            }
                            zzjVar.f9837if = zzjVar.f9819do.getBoolean("use_https", zzjVar.f9837if);
                            zzjVar.f9840new = zzjVar.f9819do.getBoolean("content_url_opted_out", zzjVar.f9840new);
                            zzjVar.f9823do = zzjVar.f9819do.getString("content_url_hashes", zzjVar.f9823do);
                            zzjVar.f9833for = zzjVar.f9819do.getBoolean("gad_idless", zzjVar.f9833for);
                            zzjVar.f9843try = zzjVar.f9819do.getBoolean("content_vertical_opted_out", zzjVar.f9843try);
                            zzjVar.f9836if = zzjVar.f9819do.getString("content_vertical_hashes", zzjVar.f9836if);
                            zzjVar.f9830for = zzjVar.f9819do.getInt("version_code", zzjVar.f9830for);
                            if (((Boolean) zzbed.zzg.zze()).booleanValue() && com.google.android.gms.ads.internal.client.zzbe.zzc().zze()) {
                                zzjVar.f9821do = new zzbzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0L);
                            } else {
                                zzjVar.f9821do = new zzbzg(zzjVar.f9819do.getString("app_settings_json", zzjVar.f9821do.zzc()), zzjVar.f9819do.getLong("app_settings_last_update_ms", zzjVar.f9821do.zza()));
                            }
                            zzjVar.f9817do = zzjVar.f9819do.getLong("app_last_background_time_ms", zzjVar.f9817do);
                            zzjVar.f9834if = zzjVar.f9819do.getInt("request_in_session_count", zzjVar.f9834if);
                            zzjVar.f9835if = zzjVar.f9819do.getLong("first_ad_req_time_ms", zzjVar.f9835if);
                            zzjVar.f9825do = zzjVar.f9819do.getStringSet("never_pool_slots", zzjVar.f9825do);
                            zzjVar.f9839new = zzjVar.f9819do.getString("display_cutout", zzjVar.f9839new);
                            zzjVar.f9838new = zzjVar.f9819do.getInt("app_measurement_npa", zzjVar.f9838new);
                            zzjVar.f9841try = zzjVar.f9819do.getInt("sd_app_measure_npa", zzjVar.f9841try);
                            zzjVar.f9831for = zzjVar.f9819do.getLong("sd_app_measure_npa_ts", zzjVar.f9831for);
                            zzjVar.f9842try = zzjVar.f9819do.getString("inspector_info", zzjVar.f9842try);
                            zzjVar.f9815case = zzjVar.f9819do.getBoolean("linked_device", zzjVar.f9815case);
                            zzjVar.f9814case = zzjVar.f9819do.getString("linked_ad_unit", zzjVar.f9814case);
                            zzjVar.f9829else = zzjVar.f9819do.getString("inspector_ui_storage", zzjVar.f9829else);
                            zzjVar.f9832for = zzjVar.f9819do.getString("IABTCF_TCString", zzjVar.f9832for);
                            zzjVar.f9816do = zzjVar.f9819do.getInt("gad_has_consent_for_cookies", zzjVar.f9816do);
                            try {
                                zzjVar.f9826do = new JSONObject(zzjVar.f9819do.getString("native_advanced_settings", "{}"));
                            } catch (JSONException e) {
                                zzo.zzk("Could not convert native advanced settings to json object", e);
                            }
                            zzjVar.m5575if();
                        }
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "AdSharedPreferenceManagerImpl.initializeOnBackgroundThread");
                        zze.zzb("AdSharedPreferenceManagerImpl.initializeOnBackgroundThread, errorMessage = ", th);
                    }
                }
            });
            this.f9828do = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzq() {
        m5574do();
        synchronized (this.f9822do) {
            this.f9826do = new JSONObject();
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.remove("native_advanced_settings");
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzr(long j) {
        m5574do();
        synchronized (this.f9822do) {
            if (this.f9817do == j) {
                return;
            }
            this.f9817do = j;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putLong("app_last_background_time_ms", j);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzs(String str) {
        m5574do();
        synchronized (this.f9822do) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            if (str != null && !str.equals(this.f9821do.zzc())) {
                this.f9821do = new zzbzg(str, currentTimeMillis);
                SharedPreferences.Editor editor = this.f9818do;
                if (editor != null) {
                    editor.putString("app_settings_json", str);
                    this.f9818do.putLong("app_settings_last_update_ms", currentTimeMillis);
                    this.f9818do.apply();
                }
                m5575if();
                Iterator it = this.f9824do.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                return;
            }
            this.f9821do.zzg(currentTimeMillis);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzt(int i) {
        m5574do();
        synchronized (this.f9822do) {
            if (this.f9830for == i) {
                return;
            }
            this.f9830for = i;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putInt("version_code", i);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzu(boolean z) {
        m5574do();
        synchronized (this.f9822do) {
            if (this.f9840new == z) {
                return;
            }
            this.f9840new = z;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putBoolean("content_url_opted_out", z);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzv(boolean z) {
        m5574do();
        synchronized (this.f9822do) {
            if (this.f9843try == z) {
                return;
            }
            this.f9843try = z;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putBoolean("content_vertical_opted_out", z);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzw(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjc)).booleanValue()) {
            m5574do();
            synchronized (this.f9822do) {
                if (this.f9814case.equals(str)) {
                    return;
                }
                this.f9814case = str;
                SharedPreferences.Editor editor = this.f9818do;
                if (editor != null) {
                    editor.putString("linked_ad_unit", str);
                    this.f9818do.apply();
                }
                m5575if();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzx(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjc)).booleanValue()) {
            m5574do();
            synchronized (this.f9822do) {
                if (this.f9815case == z) {
                    return;
                }
                this.f9815case = z;
                SharedPreferences.Editor editor = this.f9818do;
                if (editor != null) {
                    editor.putBoolean("linked_device", z);
                    this.f9818do.apply();
                }
                m5575if();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzy(String str) {
        m5574do();
        synchronized (this.f9822do) {
            if (TextUtils.equals(this.f9839new, str)) {
                return;
            }
            this.f9839new = str;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putString("display_cutout", str);
                this.f9818do.apply();
            }
            m5575if();
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzz(long j) {
        m5574do();
        synchronized (this.f9822do) {
            if (this.f9835if == j) {
                return;
            }
            this.f9835if = j;
            SharedPreferences.Editor editor = this.f9818do;
            if (editor != null) {
                editor.putLong("first_ad_req_time_ms", j);
                this.f9818do.apply();
            }
            m5575if();
        }
    }
}

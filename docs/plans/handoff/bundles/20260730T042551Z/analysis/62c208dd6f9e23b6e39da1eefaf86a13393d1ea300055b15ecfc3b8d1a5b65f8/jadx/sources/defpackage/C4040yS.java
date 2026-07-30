package defpackage;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;

/* renamed from: yS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4040yS extends AbstractC3570qT {

    /* renamed from: do, reason: not valid java name */
    public static final Pair<String, Long> f16741do = new Pair<>(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0L);

    /* renamed from: case, reason: not valid java name */
    public final C4099zS f16742case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f16743do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AS f16744do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final BS f16745do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CS f16746do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SharedPreferences f16747do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f16748do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3745tS f16749do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C4099zS f16750do;

    /* renamed from: for, reason: not valid java name */
    public final BS f16751for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final C3745tS f16752for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final C4099zS f16753for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f16754for;

    /* renamed from: if, reason: not valid java name */
    public final AS f16755if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final BS f16756if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public SharedPreferences f16757if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Object f16758if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final C3745tS f16759if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final C4099zS f16760if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f16761if;

    /* renamed from: new, reason: not valid java name */
    public final BS f16762new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final C3745tS f16763new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final C4099zS f16764new;

    /* renamed from: try, reason: not valid java name */
    public final C4099zS f16765try;

    public C4040yS(TS ts) {
        super(ts);
        this.f16758if = new Object();
        this.f16760if = new C4099zS(this, "session_timeout", 1800000L);
        this.f16749do = new C3745tS(this, "start_new_session", true);
        this.f16753for = new C4099zS(this, "last_pause_time", 0L);
        this.f16764new = new C4099zS(this, "session_id", 0L);
        this.f16756if = new BS(this, "non_personalized_ads");
        this.f16744do = new AS(this, "last_received_uri_timestamps_by_source");
        this.f16759if = new C3745tS(this, "allow_remote_dynamite", false);
        this.f16750do = new C4099zS(this, "first_open_time", 0L);
        Preconditions.checkNotEmpty("app_install_time");
        this.f16745do = new BS(this, "app_instance_id");
        this.f16752for = new C3745tS(this, "app_backgrounded", false);
        this.f16763new = new C3745tS(this, "deep_link_retrieval_complete", false);
        this.f16765try = new C4099zS(this, "deep_link_retrieval_attempts", 0L);
        this.f16751for = new BS(this, "firebase_feature_rollouts");
        this.f16762new = new BS(this, "deferred_attribution_cache");
        this.f16742case = new C4099zS(this, "deferred_attribution_cache_timestamp", 0L);
        this.f16755if = new AS(this, "default_event_parameters");
    }

    /* renamed from: default, reason: not valid java name */
    public final C3628rT m8718default() {
        mo1960catch();
        return C3628rT.m7955new(m8724static().getInt("consent_source", 100), m8724static().getString("consent_settings", "G1"));
    }

    /* renamed from: extends, reason: not valid java name */
    public final Boolean m8719extends() {
        mo1960catch();
        if (m8724static().contains("measurement_enabled")) {
            return Boolean.valueOf(m8724static().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    @Override // defpackage.AbstractC3570qT
    /* renamed from: final */
    public final boolean mo1961final() {
        return true;
    }

    /* renamed from: import, reason: not valid java name */
    public final boolean m8720import(long j) {
        return j - this.f16760if.m8802do() > this.f16753for.m8802do();
    }

    /* renamed from: native, reason: not valid java name */
    public final void m8721native() {
        SharedPreferences sharedPreferences = mo2255for().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f16747do = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.f16754for = z;
        if (!z) {
            SharedPreferences.Editor edit = this.f16747do.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f16746do = new CS(this, Math.max(0L, C3684sQ.f15465for.m2158do(null).longValue()));
    }

    /* renamed from: public, reason: not valid java name */
    public final void m8722public(boolean z) {
        mo1960catch();
        C3156jS mo2249case = mo2249case();
        mo2249case.f13723this.m7368for("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m8724static().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    /* renamed from: return, reason: not valid java name */
    public final SharedPreferences m8723return() {
        mo1960catch();
        m7886class();
        if (this.f16757if == null) {
            synchronized (this.f16758if) {
                if (this.f16757if == null) {
                    String str = mo2255for().getPackageName() + "_preferences";
                    mo2249case().f13723this.m7368for("Default prefs file", str);
                    this.f16757if = mo2255for().getSharedPreferences(str, 0);
                }
            }
        }
        return this.f16757if;
    }

    /* renamed from: static, reason: not valid java name */
    public final SharedPreferences m8724static() {
        mo1960catch();
        m7886class();
        Preconditions.checkNotNull(this.f16747do);
        return this.f16747do;
    }

    /* renamed from: super, reason: not valid java name */
    public final void m8725super(SparseArray<Long> sparseArray) {
        int[] iArr = new int[sparseArray.size()];
        long[] jArr = new long[sparseArray.size()];
        for (int i = 0; i < sparseArray.size(); i++) {
            iArr[i] = sparseArray.keyAt(i);
            jArr[i] = sparseArray.valueAt(i).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        this.f16744do.m74if(bundle);
    }

    /* renamed from: switch, reason: not valid java name */
    public final SparseArray<Long> m8726switch() {
        Bundle m73do = this.f16744do.m73do();
        if (m73do == null) {
            return new SparseArray<>();
        }
        int[] intArray = m73do.getIntArray("uriSources");
        long[] longArray = m73do.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray<>();
        }
        if (intArray.length != longArray.length) {
            mo2249case().f13717do.m7369if("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray<>();
        }
        SparseArray<Long> sparseArray = new SparseArray<>();
        for (int i = 0; i < intArray.length; i++) {
            sparseArray.put(intArray[i], Long.valueOf(longArray[i]));
        }
        return sparseArray;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m8727throw(Boolean bool) {
        mo1960catch();
        SharedPreferences.Editor edit = m8724static().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* renamed from: throws, reason: not valid java name */
    public final MP m8728throws() {
        mo1960catch();
        return MP.m1425for(m8724static().getString("dma_consent_settings", null));
    }

    /* renamed from: while, reason: not valid java name */
    public final boolean m8729while(int i) {
        return C3628rT.m7956this(i, m8724static().getInt("consent_source", 100));
    }
}

package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event;

import android.os.Build;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.idresolver.Id;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidAppDetails;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidDeviceDetails;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AppDetails;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.DeviceDetails;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONBuilder;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.SDKInfo;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.ClientContext;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class DefaultEvent implements InternalEvent {

    /* renamed from: do, reason: not valid java name */
    public final Id f8905do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AppDetails f8906do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DeviceDetails f8907do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Long f8909do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8910do;

    /* renamed from: for, reason: not valid java name */
    public final Long f8911for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final String f8912for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Long f8914if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f8915if;

    /* renamed from: new, reason: not valid java name */
    public final Long f8916new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final String f8917new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f8908do = new ConcurrentHashMap();

    /* renamed from: if, reason: not valid java name */
    public final ConcurrentHashMap f8913if = new ConcurrentHashMap();

    public DefaultEvent(String str, Map map, Map map2, SDKInfo sDKInfo, String str2, long j, Long l, Long l2, long j2, Id id, AndroidAppDetails androidAppDetails, AndroidDeviceDetails androidDeviceDetails) {
        this.f8915if = sDKInfo.f8841do;
        this.f8912for = sDKInfo.f8842if;
        this.f8917new = str2;
        this.f8909do = Long.valueOf(j);
        this.f8914if = l;
        this.f8911for = l2;
        this.f8916new = Long.valueOf(j2);
        this.f8905do = id;
        this.f8910do = str;
        this.f8906do = androidAppDetails;
        this.f8907do = androidDeviceDetails;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                mo5062else((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (map2 != null) {
            for (Map.Entry entry2 : map2.entrySet()) {
                mo5059break((String) entry2.getKey(), (Double) entry2.getValue());
            }
        }
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: break */
    public final void mo5059break(String str, Double d) {
        if (str == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = this.f8913if;
        if (d != null) {
            concurrentHashMap.put(str, d);
        } else {
            concurrentHashMap.remove(str);
        }
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: case */
    public final AnalyticsEvent mo5060case(String str, Double d) {
        mo5059break(str, d);
        return this;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: catch */
    public final String mo5061catch() {
        return this.f8910do;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEvent
    /* renamed from: class, reason: not valid java name */
    public final Long mo5095class() {
        return this.f8914if;
    }

    /* renamed from: const, reason: not valid java name */
    public final ClientContext m5096const(String str) {
        ClientContext.ClientContextBuilder clientContextBuilder = new ClientContext.ClientContextBuilder();
        AndroidAppDetails androidAppDetails = (AndroidAppDetails) this.f8906do;
        String str2 = androidAppDetails.f8823if;
        str2.getClass();
        clientContextBuilder.f8896do = str2;
        String str3 = androidAppDetails.f8822for;
        str3.getClass();
        clientContextBuilder.f8902new = str3;
        String str4 = androidAppDetails.f8824new;
        str4.getClass();
        clientContextBuilder.f8899for = str4;
        AndroidDeviceDetails androidDeviceDetails = (AndroidDeviceDetails) this.f8907do;
        androidDeviceDetails.getClass();
        String locale = Locale.getDefault().toString();
        locale.getClass();
        clientContextBuilder.f8891break = locale;
        androidDeviceDetails.getClass();
        String str5 = Build.MANUFACTURER;
        str5.getClass();
        clientContextBuilder.f8898else = str5;
        androidDeviceDetails.getClass();
        String str6 = Build.MODEL;
        str6.getClass();
        clientContextBuilder.f8892case = str6;
        androidDeviceDetails.getClass();
        String str7 = Build.VERSION.RELEASE;
        str7.getClass();
        clientContextBuilder.f8903this = str7;
        String str8 = this.f8905do.f8817do;
        str8.getClass();
        clientContextBuilder.f8904try = str8;
        String str9 = androidAppDetails.f8821do;
        str9.getClass();
        clientContextBuilder.f8901if = str9;
        str.getClass();
        clientContextBuilder.f8893catch = str;
        String str10 = androidDeviceDetails.f8831do;
        str10.getClass();
        clientContextBuilder.f8894class = str10;
        clientContextBuilder.f8895const = androidAppDetails.f8825try;
        ClientContext clientContext = new ClientContext(0);
        clientContext.f8882do = clientContextBuilder.f8896do;
        clientContext.f8887if = clientContextBuilder.f8901if;
        clientContext.f8885for = clientContextBuilder.f8899for;
        clientContext.f8888new = clientContextBuilder.f8902new;
        clientContext.f8890try = clientContextBuilder.f8904try;
        clientContext.f8884else = clientContextBuilder.f8898else;
        clientContext.f8878case = clientContextBuilder.f8892case;
        clientContext.f8886goto = clientContextBuilder.f8900goto;
        clientContext.f8889this = clientContextBuilder.f8903this;
        clientContext.f8877break = clientContextBuilder.f8891break;
        clientContext.f8879catch = clientContextBuilder.f8893catch;
        clientContext.f8880class = clientContextBuilder.f8894class;
        clientContext.f8883do = clientContextBuilder.f8897do;
        clientContext.f8881const = clientContextBuilder.f8895const;
        return clientContext;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEvent
    /* renamed from: do, reason: not valid java name */
    public final long mo5097do() {
        return this.f8909do.longValue();
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: else */
    public final void mo5062else(String str, String str2) {
        if (str == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = this.f8908do;
        if (str2 != null) {
            concurrentHashMap.put(str, str2);
        } else {
            concurrentHashMap.remove(str);
        }
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: for */
    public final boolean mo5063for(String str) {
        if (str == null) {
            return false;
        }
        return this.f8913if.containsKey(str);
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: goto */
    public final Map<String, String> mo5064goto() {
        return DesugarCollections.unmodifiableMap(this.f8908do);
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    public final boolean hasAttribute(String str) {
        if (str == null) {
            return false;
        }
        return this.f8908do.containsKey(str);
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONSerializable
    /* renamed from: if */
    public final JSONObject mo5076if() {
        DeviceDetails deviceDetails = this.f8907do;
        ((AndroidDeviceDetails) deviceDetails).getClass();
        Locale locale = Locale.getDefault();
        String locale2 = locale != null ? locale.toString() : "UNKNOWN";
        JSONBuilder jSONBuilder = new JSONBuilder(this);
        jSONBuilder.m5075for(this.f8910do, "event_type");
        jSONBuilder.m5075for(this.f8905do.f8817do, "unique_id");
        jSONBuilder.m5075for(this.f8916new, "timestamp");
        deviceDetails.getClass();
        jSONBuilder.m5075for("ANDROID", "platform");
        ((AndroidDeviceDetails) deviceDetails).getClass();
        jSONBuilder.m5075for(Build.VERSION.RELEASE, "platform_version");
        ((AndroidDeviceDetails) deviceDetails).getClass();
        jSONBuilder.m5075for(Build.MANUFACTURER, "make");
        ((AndroidDeviceDetails) deviceDetails).getClass();
        jSONBuilder.m5075for(Build.MODEL, "model");
        jSONBuilder.m5075for(locale2, "locale");
        jSONBuilder.m5075for(((AndroidDeviceDetails) deviceDetails).f8831do, "carrier");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f8917new);
            Long l = this.f8909do;
            if (l != null) {
                jSONObject.put("startTimestamp", l);
            }
            Long l2 = this.f8914if;
            if (l2 != null) {
                jSONObject.put("stopTimestamp", l2);
            }
            Long l3 = this.f8911for;
            if (l3 != null) {
                jSONObject.put("duration", l3.longValue());
            }
        } catch (JSONException unused) {
        }
        jSONBuilder.m5075for(jSONObject, "session");
        jSONBuilder.m5075for(this.f8912for, "sdk_version");
        jSONBuilder.m5075for(this.f8915if, "sdk_name");
        AppDetails appDetails = this.f8906do;
        jSONBuilder.m5075for(((AndroidAppDetails) appDetails).f8824new, "app_version_name");
        jSONBuilder.m5075for(((AndroidAppDetails) appDetails).f8822for, "app_version_code");
        jSONBuilder.m5075for(((AndroidAppDetails) appDetails).f8823if, "app_package_name");
        jSONBuilder.m5075for(((AndroidAppDetails) appDetails).f8821do, "app_title");
        jSONBuilder.m5075for(((AndroidAppDetails) appDetails).f8825try, "app_id");
        JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry<String, String> entry : mo5064goto().entrySet()) {
            try {
                jSONObject2.put(entry.getKey(), entry.getValue());
            } catch (JSONException unused2) {
            }
        }
        JSONObject jSONObject3 = new JSONObject();
        for (Map.Entry<String, Double> entry2 : mo5066this().entrySet()) {
            try {
                jSONObject3.put(entry2.getKey(), entry2.getValue());
            } catch (JSONException unused3) {
                entry2.getKey();
                entry2.getValue().toString();
            }
        }
        if (jSONObject2.length() > 0) {
            jSONBuilder.m5075for(jSONObject2, "attributes");
        }
        if (jSONObject3.length() > 0) {
            jSONBuilder.m5075for(jSONObject3, "metrics");
        }
        return jSONBuilder.f8840do;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: new */
    public final AnalyticsEvent mo5065new(String str, String str2) {
        mo5062else(str, str2);
        return this;
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent
    /* renamed from: this */
    public final Map<String, Double> mo5066this() {
        return DesugarCollections.unmodifiableMap(this.f8913if);
    }

    public final String toString() {
        JSONObject mo5076if = mo5076if();
        try {
            return mo5076if.toString(4);
        } catch (JSONException unused) {
            return mo5076if.toString();
        }
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEvent
    /* renamed from: try, reason: not valid java name */
    public final Long mo5098try() {
        return this.f8911for;
    }
}

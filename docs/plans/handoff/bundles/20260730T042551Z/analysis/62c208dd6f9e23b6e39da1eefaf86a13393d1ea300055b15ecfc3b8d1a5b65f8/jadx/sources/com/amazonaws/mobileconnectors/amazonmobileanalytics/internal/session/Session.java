package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.AnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.DefaultAnalyticsContext;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONBuilder;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONSerializable;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Scanner;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Session implements JSONSerializable {

    /* renamed from: do, reason: not valid java name */
    public final Long f8936do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8937do;

    /* renamed from: if, reason: not valid java name */
    public Long f8938if;

    public Session(AnalyticsContext analyticsContext) {
        this.f8938if = null;
        if (analyticsContext == null) {
            throw new NullPointerException("A valid AnalyticsContext must be provided!");
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd-HHmmssSSS", Locale.US);
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        Long valueOf = Long.valueOf(System.currentTimeMillis());
        this.f8936do = valueOf;
        this.f8938if = null;
        String str = ((DefaultAnalyticsContext) analyticsContext).f8804do.f8817do;
        String format = simpleDateFormat.format(valueOf);
        StringBuilder sb = new StringBuilder();
        str = str == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str;
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() > 7) {
            stringBuffer.append(str.substring(str.length() - 8));
        } else {
            for (int i = 0; i < 8 - str.length(); i++) {
                stringBuffer.append('_');
            }
            stringBuffer.append(str);
        }
        sb.append(stringBuffer.toString());
        sb.append('-');
        sb.append(format);
        this.f8937do = sb.toString();
    }

    @Override // com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.JSONSerializable
    /* renamed from: if */
    public final JSONObject mo5076if() {
        long j = this.f8938if;
        if (j == null) {
            j = Long.MIN_VALUE;
        }
        JSONBuilder jSONBuilder = new JSONBuilder(this);
        jSONBuilder.m5075for(this.f8937do, "session_id");
        jSONBuilder.m5075for(this.f8936do, "start_time");
        jSONBuilder.m5075for(j, "stop_time");
        return jSONBuilder.f8840do;
    }

    public final String toString() {
        JSONObject mo5076if = mo5076if();
        try {
            return mo5076if.toString(4);
        } catch (JSONException unused) {
            return mo5076if.toString();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final Long m5108try() {
        Long l = this.f8938if;
        if (l == null) {
            l = Long.valueOf(System.currentTimeMillis());
        }
        long longValue = l.longValue();
        Long l2 = this.f8936do;
        if (longValue < l2.longValue()) {
            return 0L;
        }
        long j = -1L;
        try {
            return Long.valueOf(l.longValue() - l2.longValue());
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public Session(String str, String str2, String str3) {
        this.f8938if = null;
        new SimpleDateFormat("yyyyMMdd-HHmmssSSS", Locale.US).setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        this.f8936do = Long.valueOf(new Scanner(str2).nextLong());
        Long valueOf = Long.valueOf(new Scanner(str3).nextLong());
        this.f8938if = valueOf;
        this.f8937do = str;
        if (valueOf.longValue() == Long.MIN_VALUE) {
            this.f8938if = null;
        }
    }
}

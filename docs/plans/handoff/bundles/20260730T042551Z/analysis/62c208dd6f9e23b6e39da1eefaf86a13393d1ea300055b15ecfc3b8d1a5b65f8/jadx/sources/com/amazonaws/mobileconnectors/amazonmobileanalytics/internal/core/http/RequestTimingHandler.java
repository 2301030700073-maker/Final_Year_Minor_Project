package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Response;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.AnalyticsEvent;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.AndroidConnectivity;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system.Connectivity;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.DateUtil;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.StringUtil;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.InternalEventClient;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class RequestTimingHandler extends RequestHandler2 {

    /* renamed from: do, reason: not valid java name */
    public int f8810do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f8811do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Connectivity f8812do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InternalEventClient f8813do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SimpleDateFormat f8814do;

    public RequestTimingHandler(AndroidConnectivity androidConnectivity, DefaultEventClient defaultEventClient) {
        int i = DateUtil.f8839do;
        this.f8814do = new SimpleDateFormat("Z", Locale.US);
        this.f8813do = defaultEventClient;
        this.f8812do = androidConnectivity;
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: do */
    public final void mo5027do(DefaultRequest defaultRequest, AmazonClientException amazonClientException) {
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: for */
    public final void mo5028for(DefaultRequest defaultRequest) {
        this.f8811do = System.currentTimeMillis();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream inputStream = defaultRequest.f8683do;
        while (true) {
            try {
                int read = inputStream.read();
                if (read == -1) {
                    this.f8810do = byteArrayOutputStream.size();
                    defaultRequest.f8683do = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                    return;
                }
                byteArrayOutputStream.write(read);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    /* renamed from: if */
    public final void mo5029if(DefaultRequest defaultRequest, Response response) {
        double d;
        double d2;
        InternalEventClient internalEventClient;
        String format;
        try {
            Map<String, String> map = response.f8695do.f8760do;
            String str = map.get("x-amzn-RequestTime");
            long currentTimeMillis = this.f8811do - System.currentTimeMillis();
            if (str != null && str.trim().length() > 0) {
                try {
                    currentTimeMillis = Long.parseLong(str.trim());
                } catch (NumberFormatException unused) {
                }
            }
            try {
                d = Double.valueOf(Long.toString(currentTimeMillis)).doubleValue();
            } catch (NumberFormatException unused2) {
                d = -1.0d;
            }
            String str2 = map.get("x-amzn-RequestAttempts");
            if (str2 != null && str2.trim().length() > 0) {
                try {
                    d2 = Double.parseDouble(str2.trim());
                } catch (NumberFormatException unused3) {
                }
                String str3 = map.get("x-amzn-ServerInfo");
                if (!StringUtil.m5079if(str) || (internalEventClient = this.f8813do) == null) {
                }
                EventConstraintDecorator m5101for = ((DefaultEventClient) internalEventClient).m5101for("_httpRequestTiming");
                m5101for.mo5062else("url", defaultRequest.f8685do.toURL().toString());
                AnalyticsEvent mo5065new = m5101for.f8929do.mo5065new("responseCode", Integer.toString(response.f8695do.f8757do));
                synchronized (this) {
                    format = this.f8814do.format(new Date());
                }
                AnalyticsEvent mo5060case = mo5065new.mo5065new("timeZone", format).mo5060case("attempts", Double.valueOf(d2)).mo5060case("totalTime", Double.valueOf(d)).mo5060case("requestSize", Double.valueOf(this.f8810do));
                String str4 = "UNKNOWN";
                Connectivity connectivity = this.f8812do;
                if (connectivity != null) {
                    if (((AndroidConnectivity) connectivity).f8827do) {
                        str4 = "WIFI";
                    } else {
                        AndroidConnectivity androidConnectivity = (AndroidConnectivity) connectivity;
                        if (androidConnectivity.f8829if && !androidConnectivity.f8830new) {
                            str4 = "WAN";
                        }
                    }
                }
                mo5060case.mo5065new("network", str4);
                if (str3 != null) {
                    mo5060case.mo5065new("serverInfo", str3);
                }
                ((DefaultEventClient) this.f8813do).m5099case(mo5060case);
                return;
            }
            d2 = 0.0d;
            String str32 = map.get("x-amzn-ServerInfo");
            if (StringUtil.m5079if(str)) {
            }
        } catch (Exception unused4) {
        }
    }
}

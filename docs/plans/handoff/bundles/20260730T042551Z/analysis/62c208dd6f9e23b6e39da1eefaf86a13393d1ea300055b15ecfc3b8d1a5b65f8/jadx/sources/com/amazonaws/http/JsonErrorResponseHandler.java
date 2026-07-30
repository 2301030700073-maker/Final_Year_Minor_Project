package com.amazonaws.http;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.JsonUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class JsonErrorResponseHandler implements HttpResponseHandler<AmazonServiceException> {

    /* renamed from: do, reason: not valid java name */
    public final List<? extends JsonErrorUnmarshaller> f8766do;

    public static class JsonErrorResponse {

        /* renamed from: do, reason: not valid java name */
        public final String f8767do;

        /* renamed from: if, reason: not valid java name */
        public final String f8768if;

        public JsonErrorResponse(String str, Map map) {
            this.f8768if = str;
            String str2 = StringUtils.m5191do("m") + "essage";
            String str3 = "m".toUpperCase(Locale.ENGLISH) + "essage";
            this.f8767do = map.containsKey(str3) ? (String) map.get(str3) : map.containsKey(str2) ? (String) map.get(str2) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }

        /* renamed from: do, reason: not valid java name */
        public static JsonErrorResponse m5054do(HttpResponse httpResponse) {
            Map m5216for = JsonUtils.m5216for(new BufferedReader(new InputStreamReader(httpResponse.m5047do(), StringUtils.f9077do)));
            String str = httpResponse.f8760do.get("x-amzn-ErrorType");
            if (str != null) {
                int indexOf = str.indexOf(58);
                if (indexOf != -1) {
                    str = str.substring(0, indexOf);
                }
            } else if (m5216for.containsKey("__type")) {
                String str2 = (String) m5216for.get("__type");
                str = str2.substring(str2.lastIndexOf("#") + 1);
            }
            return new JsonErrorResponse(str, m5216for);
        }
    }

    public JsonErrorResponseHandler(ArrayList arrayList) {
        this.f8766do = arrayList;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: do */
    public final AmazonServiceException mo5052do(HttpResponse httpResponse) {
        AmazonServiceException amazonServiceException;
        try {
            JsonErrorResponse m5054do = JsonErrorResponse.m5054do(httpResponse);
            Iterator<? extends JsonErrorUnmarshaller> it = this.f8766do.iterator();
            while (true) {
                if (!it.hasNext()) {
                    amazonServiceException = null;
                    break;
                }
                JsonErrorUnmarshaller next = it.next();
                if (next.mo5144if(m5054do)) {
                    amazonServiceException = next.mo5142do(m5054do);
                    break;
                }
            }
            if (amazonServiceException == null) {
                return null;
            }
            amazonServiceException.f8659for = httpResponse.f8757do;
            amazonServiceException.f8656catch = m5054do.f8768if;
            for (Map.Entry<String, String> entry : httpResponse.f8760do.entrySet()) {
                if (entry.getKey().equalsIgnoreCase("X-Amzn-RequestId")) {
                    amazonServiceException.f8655break = entry.getValue();
                }
            }
            return amazonServiceException;
        } catch (IOException e) {
            throw new AmazonClientException("Unable to parse error response", e);
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: if */
    public final void mo5053if() {
    }
}

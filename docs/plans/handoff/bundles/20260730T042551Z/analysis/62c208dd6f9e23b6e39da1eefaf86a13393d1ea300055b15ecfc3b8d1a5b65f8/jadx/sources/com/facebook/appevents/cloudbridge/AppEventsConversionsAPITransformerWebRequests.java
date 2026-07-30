package com.facebook.appevents.cloudbridge;

import com.facebook.GraphRequest;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import defpackage.C0173Do;
import defpackage.C0471Rf;
import defpackage.C3147jJ;
import defpackage.C3881vo;
import defpackage.C4120zr;
import defpackage.Cif;
import defpackage.Creturn;
import defpackage.E8;
import defpackage.EF;
import defpackage.EnumC0658Zq;
import defpackage.InterfaceC3941wp;
import defpackage.InterfaceC4000xp;
import defpackage.JI;
import defpackage.O4;
import defpackage.Y1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AppEventsConversionsAPITransformerWebRequests {
    public static final int MAX_CACHED_TRANSFORMED_EVENTS = 1000;
    private static final int MAX_PROCESSED_TRANSFORMED_EVENTS = 10;
    public static final int MAX_RETRY_COUNT = 5;
    private static final String TAG = "CAPITransformerWebRequests";
    private static final int TIMEOUT_INTERVAL = 60000;
    public static CloudBridgeCredentials credentials;
    private static int currentRetryCount;
    public static List<Map<String, Object>> transformedEvents;
    public static final AppEventsConversionsAPITransformerWebRequests INSTANCE = new AppEventsConversionsAPITransformerWebRequests();
    private static final HashSet<Integer> ACCEPTABLE_HTTP_RESPONSE = O4.m1625switch(200, 202);
    private static final HashSet<Integer> RETRY_EVENTS_HTTP_RESPONSE = O4.m1625switch(503, 504, 429);

    public static final class CloudBridgeCredentials {
        private final String accessKey;
        private final String cloudBridgeURL;
        private final String datasetID;

        public CloudBridgeCredentials(String str, String str2, String str3) {
            C0173Do.m401try(str, "datasetID");
            C0173Do.m401try(str2, "cloudBridgeURL");
            C0173Do.m401try(str3, "accessKey");
            this.datasetID = str;
            this.cloudBridgeURL = str2;
            this.accessKey = str3;
        }

        public static /* synthetic */ CloudBridgeCredentials copy$default(CloudBridgeCredentials cloudBridgeCredentials, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cloudBridgeCredentials.datasetID;
            }
            if ((i & 2) != 0) {
                str2 = cloudBridgeCredentials.cloudBridgeURL;
            }
            if ((i & 4) != 0) {
                str3 = cloudBridgeCredentials.accessKey;
            }
            return cloudBridgeCredentials.copy(str, str2, str3);
        }

        public final String component1() {
            return this.datasetID;
        }

        public final String component2() {
            return this.cloudBridgeURL;
        }

        public final String component3() {
            return this.accessKey;
        }

        public final CloudBridgeCredentials copy(String str, String str2, String str3) {
            C0173Do.m401try(str, "datasetID");
            C0173Do.m401try(str2, "cloudBridgeURL");
            C0173Do.m401try(str3, "accessKey");
            return new CloudBridgeCredentials(str, str2, str3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CloudBridgeCredentials)) {
                return false;
            }
            CloudBridgeCredentials cloudBridgeCredentials = (CloudBridgeCredentials) obj;
            return C0173Do.m394do(this.datasetID, cloudBridgeCredentials.datasetID) && C0173Do.m394do(this.cloudBridgeURL, cloudBridgeCredentials.cloudBridgeURL) && C0173Do.m394do(this.accessKey, cloudBridgeCredentials.accessKey);
        }

        public final String getAccessKey() {
            return this.accessKey;
        }

        public final String getCloudBridgeURL() {
            return this.cloudBridgeURL;
        }

        public final String getDatasetID() {
            return this.datasetID;
        }

        public int hashCode() {
            return this.accessKey.hashCode() + Cif.m6915for(this.cloudBridgeURL, this.datasetID.hashCode() * 31, 31);
        }

        public String toString() {
            return "CloudBridgeCredentials(datasetID=" + this.datasetID + ", cloudBridgeURL=" + this.cloudBridgeURL + ", accessKey=" + this.accessKey + ')';
        }
    }

    private AppEventsConversionsAPITransformerWebRequests() {
    }

    public static final void configure(String str, String str2, String str3) {
        C0173Do.m401try(str, "datasetID");
        C0173Do.m401try(str2, "url");
        C0173Do.m401try(str3, "accessKey");
        Logger.Companion.log(EnumC0658Zq.APP_EVENTS, TAG, " \n\nCloudbridge Configured: \n================\ndatasetID: %s\nurl: %s\naccessKey: %s\n\n", str, str2, str3);
        AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = INSTANCE;
        appEventsConversionsAPITransformerWebRequests.setCredentials$facebook_core_release(new CloudBridgeCredentials(str, str2, str3));
        appEventsConversionsAPITransformerWebRequests.setTransformedEvents$facebook_core_release(new ArrayList());
    }

    public static final String getCredentials() {
        try {
            CloudBridgeCredentials credentials$facebook_core_release = INSTANCE.getCredentials$facebook_core_release();
            if (credentials$facebook_core_release == null) {
                return null;
            }
            return credentials$facebook_core_release.toString();
        } catch (C3147jJ unused) {
            return null;
        }
    }

    public static /* synthetic */ void handleError$facebook_core_release$default(AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests, Integer num, List list, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 5;
        }
        appEventsConversionsAPITransformerWebRequests.handleError$facebook_core_release(num, list, i);
    }

    private final List<Map<String, Object>> transformAppEventRequestForCAPIG(GraphRequest graphRequest) {
        JSONObject jSONObject = graphRequest.f9279do;
        if (jSONObject == null) {
            return null;
        }
        LinkedHashMap b = C4120zr.b(Utility.convertJSONObjectToHashMap(jSONObject));
        Object obj = graphRequest.f9277do;
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
        }
        b.put("custom_events", obj);
        StringBuilder sb = new StringBuilder();
        for (String str : b.keySet()) {
            sb.append(str);
            sb.append(" : ");
            sb.append(b.get(str));
            sb.append(System.getProperty("line.separator"));
        }
        Logger.Companion.log(EnumC0658Zq.APP_EVENTS, TAG, "\nGraph Request data: \n\n%s \n\n", sb);
        return AppEventsConversionsAPITransformer.INSTANCE.conversionsAPICompatibleEvent$facebook_core_release(b);
    }

    public static final void transformGraphRequestAndSendToCAPIGEndPoint(GraphRequest graphRequest) {
        C0173Do.m401try(graphRequest, "request");
        Utility.runOnNonUiThread(new Y1(graphRequest, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transformGraphRequestAndSendToCAPIGEndPoint$lambda-0, reason: not valid java name */
    public static final void m5342transformGraphRequestAndSendToCAPIGEndPoint$lambda0(GraphRequest graphRequest) {
        List j;
        C0173Do.m401try(graphRequest, "$request");
        String str = graphRequest.f9278do;
        List t = str == null ? null : EF.t(str, new String[]{"/"}, 0, 6);
        EnumC0658Zq enumC0658Zq = EnumC0658Zq.DEVELOPER_ERRORS;
        if (t == null || t.size() != 2) {
            Logger.Companion.log(enumC0658Zq, TAG, "\n GraphPathComponents Error when logging: \n%s", graphRequest);
            return;
        }
        try {
            AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = INSTANCE;
            String str2 = appEventsConversionsAPITransformerWebRequests.getCredentials$facebook_core_release().getCloudBridgeURL() + "/capi/" + appEventsConversionsAPITransformerWebRequests.getCredentials$facebook_core_release().getDatasetID() + "/events";
            List<Map<String, Object>> transformAppEventRequestForCAPIG = appEventsConversionsAPITransformerWebRequests.transformAppEventRequestForCAPIG(graphRequest);
            if (transformAppEventRequestForCAPIG == null) {
                return;
            }
            appEventsConversionsAPITransformerWebRequests.appendEvents$facebook_core_release(transformAppEventRequestForCAPIG);
            int min = Math.min(appEventsConversionsAPITransformerWebRequests.getTransformedEvents$facebook_core_release().size(), 10);
            List<Map<String, Object>> transformedEvents$facebook_core_release = appEventsConversionsAPITransformerWebRequests.getTransformedEvents$facebook_core_release();
            C3881vo c3881vo = new C3881vo(0, min - 1);
            C0173Do.m401try(transformedEvents$facebook_core_release, "<this>");
            if (c3881vo.isEmpty()) {
                j = C0471Rf.f3217do;
            } else {
                Integer num = 0;
                j = E8.j(transformedEvents$facebook_core_release.subList(num.intValue(), Integer.valueOf(c3881vo.f15769new).intValue() + 1));
            }
            appEventsConversionsAPITransformerWebRequests.getTransformedEvents$facebook_core_release().subList(0, min).clear();
            JSONArray jSONArray = new JSONArray((Collection) j);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("data", jSONArray);
            linkedHashMap.put("accessKey", appEventsConversionsAPITransformerWebRequests.getCredentials$facebook_core_release().getAccessKey());
            JSONObject jSONObject = new JSONObject(linkedHashMap);
            Logger.Companion companion = Logger.Companion;
            EnumC0658Zq enumC0658Zq2 = EnumC0658Zq.APP_EVENTS;
            String jSONObject2 = jSONObject.toString(2);
            C0173Do.m399new(jSONObject2, "jsonBodyStr.toString(2)");
            companion.log(enumC0658Zq2, TAG, "\nTransformed_CAPI_JSON:\nURL: %s\nFROM=========\n%s\n>>>>>>TO>>>>>>\n%s\n=============\n", str2, graphRequest, jSONObject2);
            String jSONObject3 = jSONObject.toString();
            Map<String, String> singletonMap = Collections.singletonMap("Content-Type", "application/json");
            C0173Do.m399new(singletonMap, "singletonMap(pair.first, pair.second)");
            appEventsConversionsAPITransformerWebRequests.makeHttpRequest$facebook_core_release(str2, "POST", jSONObject3, singletonMap, TIMEOUT_INTERVAL, new AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1(j));
        } catch (C3147jJ e) {
            Logger.Companion.log(enumC0658Zq, TAG, "\n Credentials not initialized Error when logging: \n%s", e);
        }
    }

    public final void appendEvents$facebook_core_release(List<? extends Map<String, ? extends Object>> list) {
        ArrayList arrayList;
        List<Map<String, Object>> m1632volatile;
        Object obj;
        if (list != null) {
            getTransformedEvents$facebook_core_release().addAll(list);
        }
        int i = 0;
        int max = Math.max(0, getTransformedEvents$facebook_core_release().size() - 1000);
        if (max > 0) {
            List<Map<String, Object>> transformedEvents$facebook_core_release = getTransformedEvents$facebook_core_release();
            C0173Do.m401try(transformedEvents$facebook_core_release, "<this>");
            if (!(max >= 0)) {
                throw new IllegalArgumentException(Creturn.m7981if("Requested element count ", max, " is less than zero.").toString());
            }
            if (max == 0) {
                m1632volatile = E8.j(transformedEvents$facebook_core_release);
            } else {
                if (transformedEvents$facebook_core_release instanceof Collection) {
                    List<Map<String, Object>> list2 = transformedEvents$facebook_core_release;
                    int size = list2.size() - max;
                    if (size <= 0) {
                        m1632volatile = C0471Rf.f3217do;
                    } else if (size == 1) {
                        if (transformedEvents$facebook_core_release instanceof List) {
                            obj = E8.g(transformedEvents$facebook_core_release);
                        } else {
                            Iterator<T> it = transformedEvents$facebook_core_release.iterator();
                            if (!it.hasNext()) {
                                throw new NoSuchElementException("Collection is empty.");
                            }
                            Object next = it.next();
                            while (it.hasNext()) {
                                next = it.next();
                            }
                            obj = next;
                        }
                        m1632volatile = O4.m1617package(obj);
                    } else {
                        arrayList = new ArrayList(size);
                        if (transformedEvents$facebook_core_release instanceof List) {
                            if (transformedEvents$facebook_core_release instanceof RandomAccess) {
                                int size2 = list2.size();
                                while (max < size2) {
                                    arrayList.add(transformedEvents$facebook_core_release.get(max));
                                    max++;
                                }
                            } else {
                                ListIterator<Map<String, Object>> listIterator = transformedEvents$facebook_core_release.listIterator(max);
                                while (listIterator.hasNext()) {
                                    arrayList.add(listIterator.next());
                                }
                            }
                            m1632volatile = arrayList;
                        }
                    }
                } else {
                    arrayList = new ArrayList();
                }
                for (Object obj2 : transformedEvents$facebook_core_release) {
                    if (i >= max) {
                        arrayList.add(obj2);
                    } else {
                        i++;
                    }
                }
                m1632volatile = O4.m1632volatile(arrayList);
            }
            if ((m1632volatile instanceof InterfaceC3941wp) && !(m1632volatile instanceof InterfaceC4000xp)) {
                JI.m1036if(m1632volatile, "kotlin.collections.MutableList");
                throw null;
            }
            try {
                setTransformedEvents$facebook_core_release(m1632volatile);
            } catch (ClassCastException e) {
                C0173Do.m395else(JI.class.getName(), e);
                throw e;
            }
        }
    }

    public final CloudBridgeCredentials getCredentials$facebook_core_release() {
        CloudBridgeCredentials cloudBridgeCredentials = credentials;
        if (cloudBridgeCredentials != null) {
            return cloudBridgeCredentials;
        }
        C0173Do.m400this("credentials");
        throw null;
    }

    public final int getCurrentRetryCount$facebook_core_release() {
        return currentRetryCount;
    }

    public final List<Map<String, Object>> getTransformedEvents$facebook_core_release() {
        List<Map<String, Object>> list = transformedEvents;
        if (list != null) {
            return list;
        }
        C0173Do.m400this("transformedEvents");
        throw null;
    }

    public final void handleError$facebook_core_release(Integer num, List<? extends Map<String, ? extends Object>> list, int i) {
        C0173Do.m401try(list, "processedEvents");
        if (E8.d(RETRY_EVENTS_HTTP_RESPONSE, num)) {
            if (currentRetryCount >= i) {
                getTransformedEvents$facebook_core_release().clear();
                currentRetryCount = 0;
            } else {
                getTransformedEvents$facebook_core_release().addAll(0, list);
                currentRetryCount++;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a3 A[Catch: IOException -> 0x00fd, UnknownHostException -> 0x0110, TRY_LEAVE, TryCatch #4 {UnknownHostException -> 0x0110, IOException -> 0x00fd, blocks: (B:3:0x0013, B:5:0x0024, B:8:0x004d, B:10:0x0059, B:14:0x0069, B:16:0x00a3, B:23:0x00bd, B:30:0x00c4, B:31:0x00c7, B:33:0x00c8, B:35:0x00e9, B:39:0x002c, B:42:0x0033, B:43:0x0037, B:45:0x003d, B:47:0x00f5, B:48:0x00fc), top: B:2:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e9 A[Catch: IOException -> 0x00fd, UnknownHostException -> 0x0110, TryCatch #4 {UnknownHostException -> 0x0110, IOException -> 0x00fd, blocks: (B:3:0x0013, B:5:0x0024, B:8:0x004d, B:10:0x0059, B:14:0x0069, B:16:0x00a3, B:23:0x00bd, B:30:0x00c4, B:31:0x00c7, B:33:0x00c8, B:35:0x00e9, B:39:0x002c, B:42:0x0033, B:43:0x0037, B:45:0x003d, B:47:0x00f5, B:48:0x00fc), top: B:2:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void makeHttpRequest$facebook_core_release(java.lang.String r9, java.lang.String r10, java.lang.String r11, java.util.Map<java.lang.String, java.lang.String> r12, int r13, defpackage.InterfaceC3641rk<? super java.lang.String, ? super java.lang.Integer, defpackage.C3206kJ> r14) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests.makeHttpRequest$facebook_core_release(java.lang.String, java.lang.String, java.lang.String, java.util.Map, int, rk):void");
    }

    public final void setCredentials$facebook_core_release(CloudBridgeCredentials cloudBridgeCredentials) {
        C0173Do.m401try(cloudBridgeCredentials, "<set-?>");
        credentials = cloudBridgeCredentials;
    }

    public final void setCurrentRetryCount$facebook_core_release(int i) {
        currentRetryCount = i;
    }

    public final void setTransformedEvents$facebook_core_release(List<Map<String, Object>> list) {
        C0173Do.m401try(list, "<set-?>");
        transformedEvents = list;
    }
}

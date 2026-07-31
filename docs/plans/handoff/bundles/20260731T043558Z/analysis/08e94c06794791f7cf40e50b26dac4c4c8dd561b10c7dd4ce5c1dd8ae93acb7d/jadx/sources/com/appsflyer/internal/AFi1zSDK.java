package com.appsflyer.internal;

import expo.modules.kotlin.activityresult.DataPersistorKt;
import io.sentry.protocol.MetricSummary;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class AFi1zSDK {
    public final AFi1xSDK AFAdRevenueData;
    public final AFh1aSDK getCurrencyIso4217Code;
    public AFi1ySDK getMediationNetwork;

    public AFi1zSDK(JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "");
        this.getMediationNetwork = getCurrencyIso4217Code(jSONObject);
        this.getCurrencyIso4217Code = getRevenue(jSONObject);
        this.AFAdRevenueData = getMediationNetwork(jSONObject);
    }

    private static AFi1xSDK getMediationNetwork(JSONObject jSONObject) {
        Object m2098constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject AFAdRevenueData = AFAdRevenueData(jSONObject, "meta_data");
            m2098constructorimpl = Result.m2098constructorimpl(AFAdRevenueData != null ? new AFi1xSDK(AFAdRevenueData.optDouble("send_rate", 1.0d)) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m2098constructorimpl = Result.m2098constructorimpl(ResultKt.createFailure(th));
        }
        return (AFi1xSDK) (Result.m2104isFailureimpl(m2098constructorimpl) ? null : m2098constructorimpl);
    }

    private static AFh1aSDK getRevenue(JSONObject jSONObject) {
        Object m2098constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject AFAdRevenueData = AFAdRevenueData(jSONObject, "exc_mngr");
            m2098constructorimpl = Result.m2098constructorimpl(AFAdRevenueData != null ? new AFh1aSDK(AFAdRevenueData.getString("sdk_ver"), AFAdRevenueData.optInt(MetricSummary.JsonKeys.MIN, -1), AFAdRevenueData.optInt(DataPersistorKt.EXPIRE_KEY, -1), AFAdRevenueData.optLong("ttl", -1L)) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m2098constructorimpl = Result.m2098constructorimpl(ResultKt.createFailure(th));
        }
        return (AFh1aSDK) (Result.m2104isFailureimpl(m2098constructorimpl) ? null : m2098constructorimpl);
    }

    private static AFi1ySDK getCurrencyIso4217Code(JSONObject jSONObject) {
        Object m2098constructorimpl;
        AFi1ySDK aFi1ySDK;
        List emptyList;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject AFAdRevenueData = AFAdRevenueData(jSONObject, "r_debugger");
            if (AFAdRevenueData != null) {
                long j = AFAdRevenueData.getLong("ttl");
                int i = AFAdRevenueData.getInt("counter");
                String optString = AFAdRevenueData.optString("app_ver", "");
                String optString2 = AFAdRevenueData.optString("sdk_ver", "");
                float optDouble = (float) AFAdRevenueData.optDouble("ratio", 1.0d);
                JSONArray optJSONArray = AFAdRevenueData.optJSONArray("tags");
                if (optJSONArray != null) {
                    Intrinsics.checkNotNullExpressionValue(optJSONArray, "");
                    ArrayList arrayList = new ArrayList();
                    int length = optJSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        String string = optJSONArray.getString(i2);
                        Intrinsics.checkNotNullExpressionValue(string, "");
                        arrayList.add(string);
                    }
                    emptyList = arrayList;
                } else {
                    emptyList = CollectionsKt.emptyList();
                }
                Intrinsics.checkNotNullExpressionValue(optString, "");
                Intrinsics.checkNotNullExpressionValue(optString2, "");
                aFi1ySDK = new AFi1ySDK(j, optDouble, emptyList, i, optString, optString2);
            } else {
                aFi1ySDK = null;
            }
            m2098constructorimpl = Result.m2098constructorimpl(aFi1ySDK);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m2098constructorimpl = Result.m2098constructorimpl(ResultKt.createFailure(th));
        }
        return (AFi1ySDK) (Result.m2104isFailureimpl(m2098constructorimpl) ? null : m2098constructorimpl);
    }

    private static JSONObject AFAdRevenueData(JSONObject jSONObject, String str) throws JSONException, NullPointerException {
        JSONObject optJSONObject;
        if (!jSONObject.has(str) || (optJSONObject = jSONObject.getJSONArray(str).optJSONObject(0).optJSONObject("data")) == null) {
            return null;
        }
        return optJSONObject.optJSONObject("v1");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "");
        AFi1zSDK aFi1zSDK = (AFi1zSDK) obj;
        return Intrinsics.areEqual(this.getCurrencyIso4217Code, aFi1zSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.AFAdRevenueData, aFi1zSDK.AFAdRevenueData) && Intrinsics.areEqual(this.getMediationNetwork, aFi1zSDK.getMediationNetwork);
    }

    public final int hashCode() {
        AFh1aSDK aFh1aSDK = this.getCurrencyIso4217Code;
        int hashCode = (aFh1aSDK != null ? aFh1aSDK.hashCode() : 0) * 31;
        AFi1xSDK aFi1xSDK = this.AFAdRevenueData;
        int hashCode2 = (hashCode + (aFi1xSDK != null ? aFi1xSDK.hashCode() : 0)) * 31;
        AFi1ySDK aFi1ySDK = this.getMediationNetwork;
        return hashCode2 + (aFi1ySDK != null ? aFi1ySDK.hashCode() : 0);
    }
}

package defpackage;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class E9 {

    /* renamed from: if, reason: not valid java name */
    public static final Date f738if = new Date(0);

    /* renamed from: do, reason: not valid java name */
    public final long f739do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Date f740do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final JSONArray f741do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final JSONObject f742do;

    /* renamed from: for, reason: not valid java name */
    public final JSONObject f743for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final JSONArray f744if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final JSONObject f745if;

    public E9(JSONObject jSONObject, Date date, JSONArray jSONArray, JSONObject jSONObject2, long j, JSONArray jSONArray2) {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("configs_key", jSONObject);
        jSONObject3.put("fetch_time_key", date.getTime());
        jSONObject3.put("abt_experiments_key", jSONArray);
        jSONObject3.put("personalization_metadata_key", jSONObject2);
        jSONObject3.put("template_version_number_key", j);
        jSONObject3.put("rollout_metadata_key", jSONArray2);
        this.f745if = jSONObject;
        this.f740do = date;
        this.f741do = jSONArray;
        this.f743for = jSONObject2;
        this.f739do = j;
        this.f744if = jSONArray2;
        this.f742do = jSONObject3;
    }

    /* renamed from: do, reason: not valid java name */
    public static E9 m436do(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("personalization_metadata_key");
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
        }
        JSONObject jSONObject2 = optJSONObject;
        JSONArray optJSONArray = jSONObject.optJSONArray("rollout_metadata_key");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        return new E9(jSONObject.getJSONObject("configs_key"), new Date(jSONObject.getLong("fetch_time_key")), jSONObject.getJSONArray("abt_experiments_key"), jSONObject2, jSONObject.optLong("template_version_number_key"), optJSONArray);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof E9) {
            return this.f742do.toString().equals(((E9) obj).toString());
        }
        return false;
    }

    public final int hashCode() {
        return this.f742do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public final HashMap m437if() {
        HashMap hashMap = new HashMap();
        int i = 0;
        while (true) {
            JSONArray jSONArray = this.f744if;
            if (i >= jSONArray.length()) {
                return hashMap;
            }
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String string = jSONObject.getString("rolloutId");
            String string2 = jSONObject.getString("variantId");
            JSONArray jSONArray2 = jSONObject.getJSONArray("affectedParameterKeys");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                String string3 = jSONArray2.getString(i2);
                if (!hashMap.containsKey(string3)) {
                    hashMap.put(string3, new HashMap());
                }
                Map map = (Map) hashMap.get(string3);
                if (map != null) {
                    map.put(string, string2);
                }
            }
            i++;
        }
    }

    public final String toString() {
        return this.f742do.toString();
    }
}

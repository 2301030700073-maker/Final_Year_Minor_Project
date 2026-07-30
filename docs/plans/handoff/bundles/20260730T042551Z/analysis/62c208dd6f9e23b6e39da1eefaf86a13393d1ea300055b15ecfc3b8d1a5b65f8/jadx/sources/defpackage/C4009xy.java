package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: xy, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4009xy {

    /* renamed from: do, reason: not valid java name */
    public final String f16654do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final JSONObject f16655do;

    /* renamed from: if, reason: not valid java name */
    public final String f16656if;

    public C4009xy(String str, String str2) {
        this.f16654do = str;
        this.f16656if = str2;
        this.f16655do = new JSONObject(str);
    }

    /* renamed from: do, reason: not valid java name */
    public final String m8685do() {
        String optString = this.f16655do.optString("orderId");
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        return optString;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4009xy)) {
            return false;
        }
        C4009xy c4009xy = (C4009xy) obj;
        return TextUtils.equals(this.f16654do, c4009xy.f16654do) && TextUtils.equals(this.f16656if, c4009xy.f16656if);
    }

    @Deprecated
    /* renamed from: for, reason: not valid java name */
    public final ArrayList<String> m8686for() {
        ArrayList<String> arrayList = new ArrayList<>();
        JSONObject jSONObject = this.f16655do;
        if (jSONObject.has("productIds")) {
            JSONArray optJSONArray = jSONObject.optJSONArray("productIds");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
            }
        } else if (jSONObject.has("productId")) {
            arrayList.add(jSONObject.optString("productId"));
        }
        return arrayList;
    }

    public final int hashCode() {
        return this.f16654do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public final String m8687if() {
        JSONObject jSONObject = this.f16655do;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public final String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f16654do));
    }
}

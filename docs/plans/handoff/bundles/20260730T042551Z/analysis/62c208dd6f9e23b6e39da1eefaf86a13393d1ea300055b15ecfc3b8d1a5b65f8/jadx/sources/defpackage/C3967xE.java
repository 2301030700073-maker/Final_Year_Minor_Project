package defpackage;

import android.text.TextUtils;
import org.json.JSONObject;

@Deprecated
/* renamed from: xE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3967xE {

    /* renamed from: do, reason: not valid java name */
    public final String f16532do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final JSONObject f16533do;

    public C3967xE(String str) {
        this.f16532do = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f16533do = jSONObject;
        if (TextUtils.isEmpty(jSONObject.optString("productId"))) {
            throw new IllegalArgumentException("SKU cannot be empty.");
        }
        if (TextUtils.isEmpty(jSONObject.optString("type"))) {
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final String m8624do() {
        return this.f16533do.optString("type");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C3967xE) {
            return TextUtils.equals(this.f16532do, ((C3967xE) obj).f16532do);
        }
        return false;
    }

    public final int hashCode() {
        return this.f16532do.hashCode();
    }

    public final String toString() {
        return "SkuDetails: ".concat(String.valueOf(this.f16532do));
    }
}

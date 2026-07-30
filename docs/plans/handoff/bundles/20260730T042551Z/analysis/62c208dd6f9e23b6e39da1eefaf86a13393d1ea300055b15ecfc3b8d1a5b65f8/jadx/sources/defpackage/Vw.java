package defpackage;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class Vw {

    /* renamed from: if, reason: not valid java name */
    public static final String[] f4262if = {"MEETS_STRONG_INTEGRITY", "MEETS_DEVICE_INTEGRITY", "MEETS_BASIC_INTEGRITY", "MEETS_VIRTUAL_INTEGRITY"};

    /* renamed from: do, reason: not valid java name */
    public int f4263do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f4264do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String[] f4265do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f4266if;

    /* renamed from: if, reason: not valid java name */
    public static Vw m2671if(String str) {
        JSONArray optJSONArray;
        if (str == null) {
            return null;
        }
        Vw vw = new Vw();
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("tokenPayloadExternal");
            if (optJSONObject == null) {
                return null;
            }
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("deviceIntegrity");
            int i = 0;
            if (optJSONObject2 != null && (optJSONArray = optJSONObject2.optJSONArray("deviceRecognitionVerdict")) != null) {
                vw.f4265do = new String[optJSONArray.length()];
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    vw.f4265do[i2] = optJSONArray.getString(i2);
                }
            }
            if (vw.f4265do == null) {
                vw.f4265do = new String[0];
            }
            String[] strArr = vw.f4265do;
            if (strArr != null && strArr.length != 0) {
                int length = strArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        int length2 = strArr.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length2) {
                                int length3 = strArr.length;
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= length3) {
                                        break;
                                    }
                                    if ("MEETS_BASIC_INTEGRITY".equals(strArr[i5])) {
                                        i = 1;
                                        break;
                                    }
                                    i5++;
                                }
                            } else {
                                if ("MEETS_DEVICE_INTEGRITY".equals(strArr[i4])) {
                                    i = 2;
                                    break;
                                }
                                i4++;
                            }
                        }
                    } else {
                        if ("MEETS_STRONG_INTEGRITY".equals(strArr[i3])) {
                            i = 3;
                            break;
                        }
                        i3++;
                    }
                }
            }
            vw.f4263do = i;
            JSONObject optJSONObject3 = optJSONObject.optJSONObject("appIntegrity");
            if (optJSONObject3 != null) {
                vw.f4264do = optJSONObject3.optString("appRecognitionVerdict", "UNEVALUATED");
            }
            JSONObject optJSONObject4 = optJSONObject.optJSONObject("accountDetails");
            if (optJSONObject4 != null) {
                vw.f4266if = optJSONObject4.optString("appLicensingVerdict", "UNEVALUATED");
            }
            return vw;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m2672do() {
        String[] strArr = {"MEETS_VIRTUAL_INTEGRITY"};
        String[] strArr2 = this.f4265do;
        if (strArr2 == null) {
            return false;
        }
        String str = strArr[0];
        for (String str2 : strArr2) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }
}

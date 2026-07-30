package defpackage;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: Ys, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0638Ys {

    /* renamed from: do, reason: not valid java name */
    public static final Charset f4765do = Charset.forName("UTF-8");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0495Sh f4766do;

    public C0638Ys(C0495Sh c0495Sh) {
        this.f4766do = c0495Sh;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m2963case(File file) {
        if (file.exists() && file.delete()) {
            file.getAbsolutePath();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static HashMap m2964do(String str) {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String str2 = null;
            if (!jSONObject.isNull(next)) {
                str2 = jSONObject.optString(next, null);
            }
            hashMap.put(next, str2);
        }
        return hashMap;
    }

    /* renamed from: if, reason: not valid java name */
    public static ArrayList m2965if(String str) {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            String string = jSONArray.getString(i);
            try {
                C3293lp c3293lp = AbstractC3551qA.f15046do;
                JSONObject jSONObject = new JSONObject(string);
                String string2 = jSONObject.getString("rolloutId");
                String string3 = jSONObject.getString("parameterKey");
                String string4 = jSONObject.getString("parameterValue");
                String string5 = jSONObject.getString("variantId");
                long j = jSONObject.getLong("templateVersion");
                if (string4.length() > 256) {
                    string4 = string4.substring(0, 256);
                }
                arrayList.add(new C3427o4(string2, string3, string4, string5, j));
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m2966try(List<AbstractC3551qA> list) {
        HashMap hashMap = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            try {
                jSONArray.put(new JSONObject(AbstractC3551qA.f15046do.m7396do(list.get(i))));
            } catch (JSONException unused) {
            }
        }
        hashMap.put("rolloutsState", jSONArray);
        return new JSONObject(hashMap).toString();
    }

    /* renamed from: else, reason: not valid java name */
    public final void m2967else(String str, Map<String, String> map, boolean z) {
        BufferedWriter bufferedWriter;
        String jSONObject;
        C0495Sh c0495Sh = this.f4766do;
        File m2184if = z ? c0495Sh.m2184if(str, "internal-keys") : c0495Sh.m2184if(str, "keys");
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                jSONObject = new JSONObject(map).toString();
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(m2184if), f4765do));
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            th = th;
            bufferedWriter = bufferedWriter2;
        }
        try {
            bufferedWriter.write(jSONObject);
            bufferedWriter.flush();
            J8.m1016if(bufferedWriter);
        } catch (Exception unused2) {
            bufferedWriter2 = bufferedWriter;
            m2963case(m2184if);
            J8.m1016if(bufferedWriter2);
        } catch (Throwable th2) {
            th = th2;
            J8.m1016if(bufferedWriter);
            throw th;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final Map<String, String> m2968for(String str, boolean z) {
        FileInputStream fileInputStream;
        C0495Sh c0495Sh = this.f4766do;
        File m2184if = z ? c0495Sh.m2184if(str, "internal-keys") : c0495Sh.m2184if(str, "keys");
        if (!m2184if.exists() || m2184if.length() == 0) {
            m2963case(m2184if);
            return Collections.emptyMap();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(m2184if);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            th = th;
            fileInputStream = fileInputStream2;
        }
        try {
            HashMap m2964do = m2964do(J8.m1010break(fileInputStream));
            J8.m1016if(fileInputStream);
            return m2964do;
        } catch (Exception unused2) {
            fileInputStream2 = fileInputStream;
            m2963case(m2184if);
            J8.m1016if(fileInputStream2);
            return Collections.emptyMap();
        } catch (Throwable th2) {
            th = th2;
            J8.m1016if(fileInputStream);
            throw th;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m2969goto(String str, List<AbstractC3551qA> list) {
        BufferedWriter bufferedWriter;
        String m2966try;
        File m2184if = this.f4766do.m2184if(str, "rollouts-state");
        if (list.isEmpty()) {
            m2963case(m2184if);
            return;
        }
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                m2966try = m2966try(list);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(m2184if), f4765do));
            } catch (Throwable th) {
                th = th;
                bufferedWriter = bufferedWriter2;
            }
        } catch (Exception unused) {
        }
        try {
            bufferedWriter.write(m2966try);
            bufferedWriter.flush();
            J8.m1016if(bufferedWriter);
        } catch (Exception unused2) {
            bufferedWriter2 = bufferedWriter;
            m2963case(m2184if);
            J8.m1016if(bufferedWriter2);
        } catch (Throwable th2) {
            th = th2;
            J8.m1016if(bufferedWriter);
            throw th;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final String m2970new(String str) {
        FileInputStream fileInputStream;
        File m2184if = this.f4766do.m2184if(str, "user-data");
        FileInputStream fileInputStream2 = null;
        if (!m2184if.exists() || m2184if.length() == 0) {
            m2963case(m2184if);
            return null;
        }
        try {
            fileInputStream = new FileInputStream(m2184if);
            try {
                try {
                    JSONObject jSONObject = new JSONObject(J8.m1010break(fileInputStream));
                    String optString = jSONObject.isNull("userId") ? null : jSONObject.optString("userId", null);
                    J8.m1016if(fileInputStream);
                    return optString;
                } catch (Exception unused) {
                    m2963case(m2184if);
                    J8.m1016if(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                J8.m1016if(fileInputStream2);
                throw th;
            }
        } catch (Exception unused2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            J8.m1016if(fileInputStream2);
            throw th;
        }
    }
}

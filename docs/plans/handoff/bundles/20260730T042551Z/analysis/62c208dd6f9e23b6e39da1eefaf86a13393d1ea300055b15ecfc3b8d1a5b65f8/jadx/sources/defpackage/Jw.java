package defpackage;

import defpackage.C3250l4;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class Jw {

    /* renamed from: do, reason: not valid java name */
    public final C0706ai f1730do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public File f1731do;

    public Jw(C0706ai c0706ai) {
        this.f1730do = c0706ai;
    }

    /* renamed from: do, reason: not valid java name */
    public final File m1085do() {
        if (this.f1731do == null) {
            synchronized (this) {
                if (this.f1731do == null) {
                    C0706ai c0706ai = this.f1730do;
                    c0706ai.m3147do();
                    this.f1731do = new File(c0706ai.f4985do.getFilesDir(), "PersistedInstallation." + this.f1730do.m3150new() + ".json");
                }
            }
        }
        return this.f1731do;
    }

    /* renamed from: for, reason: not valid java name */
    public final C3250l4 m1086for() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(m1085do());
            while (true) {
                try {
                    int read = fileInputStream.read(bArr, 0, 16384);
                    if (read < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String optString = jSONObject.optString("Fid", null);
        int optInt = jSONObject.optInt("Status", 0);
        String optString2 = jSONObject.optString("AuthToken", null);
        String optString3 = jSONObject.optString("RefreshToken", null);
        long optLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String optString4 = jSONObject.optString("FisError", null);
        int i = Kw.f1896do;
        C3250l4.Cdo cdo = new C3250l4.Cdo();
        cdo.f14089if = 0L;
        cdo.m7335if(1);
        cdo.f14086do = 0L;
        cdo.f14087do = optString;
        cdo.m7335if(C4122zt.m8821const(5)[optInt]);
        cdo.f14090if = optString2;
        cdo.f14088for = optString3;
        cdo.f14089if = Long.valueOf(optLong);
        cdo.f14086do = Long.valueOf(optLong2);
        cdo.f14091new = optString4;
        return cdo.m7334do();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1087if(C3250l4 c3250l4) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", c3250l4.f14079do);
            jSONObject.put("Status", C4122zt.m8819catch(c3250l4.f14081if));
            jSONObject.put("AuthToken", c3250l4.f14083if);
            jSONObject.put("RefreshToken", c3250l4.f14080for);
            jSONObject.put("TokenCreationEpochInSecs", c3250l4.f14082if);
            jSONObject.put("ExpiresInSecs", c3250l4.f14078do);
            jSONObject.put("FisError", c3250l4.f14084new);
            C0706ai c0706ai = this.f1730do;
            c0706ai.m3147do();
            File createTempFile = File.createTempFile("PersistedInstallation", "tmp", c0706ai.f4985do.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (createTempFile.renameTo(m1085do())) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }
}

package defpackage;

import android.content.SharedPreferences;
import java.io.File;
import java.io.FileWriter;
import org.json.JSONObject;

/* renamed from: gD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2797gD implements NF<Void, Void> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C2856hD f13078do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3162jc f13079do;

    public C2797gD(C2856hD c2856hD, C3162jc c3162jc) {
        this.f13078do = c2856hD;
        this.f13079do = c3162jc;
    }

    @Override // defpackage.NF
    public final FG<Void> then(Void r9) {
        FileWriter fileWriter;
        JSONObject jSONObject = (JSONObject) this.f13079do.f13735for.f12690do.submit(new CallableC2738fD(this, 0)).get();
        FileWriter fileWriter2 = null;
        if (jSONObject != null) {
            C2856hD c2856hD = this.f13078do;
            C2621dD m2072for = c2856hD.f13261do.m2072for(jSONObject);
            long j = m2072for.f12447do;
            GP gp = c2856hD.f13258do;
            gp.getClass();
            try {
                jSONObject.put("expires_at", j);
                fileWriter = new FileWriter((File) gp.f1184do);
                try {
                    fileWriter.write(jSONObject.toString());
                    fileWriter.flush();
                } catch (Exception unused) {
                } catch (Throwable th) {
                    th = th;
                    fileWriter2 = fileWriter;
                    J8.m1016if(fileWriter2);
                    throw th;
                }
            } catch (Exception unused2) {
                fileWriter = null;
            } catch (Throwable th2) {
                th = th2;
            }
            J8.m1016if(fileWriter);
            jSONObject.toString();
            String str = c2856hD.f13264do.f14123try;
            SharedPreferences.Editor edit = c2856hD.f13262do.getSharedPreferences("com.google.firebase.crashlytics", 0).edit();
            edit.putString("existing_instance_identifier", str);
            edit.apply();
            c2856hD.f13263do.set(m2072for);
            c2856hD.f13266if.get().m722new(m2072for);
        }
        return LG.m1320try(null);
    }
}

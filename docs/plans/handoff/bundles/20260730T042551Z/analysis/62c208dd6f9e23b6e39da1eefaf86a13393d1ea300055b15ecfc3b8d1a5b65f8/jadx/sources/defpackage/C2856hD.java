package defpackage;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* renamed from: hD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2856hD implements InterfaceC3200kD {

    /* renamed from: do, reason: not valid java name */
    public final GP f13258do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0271Ic f13259do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QJ f13260do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0481Rp f13261do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f13262do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReference<C2621dD> f13263do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3259lD f13264do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3318mD f13265do;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<GG<C2621dD>> f13266if;

    public C2856hD(Context context, C3259lD c3259lD, QJ qj, C0481Rp c0481Rp, GP gp, C3988xd c3988xd, C0271Ic c0271Ic) {
        AtomicReference<C2621dD> atomicReference = new AtomicReference<>();
        this.f13263do = atomicReference;
        this.f13266if = new AtomicReference<>(new GG());
        this.f13262do = context;
        this.f13264do = c3259lD;
        this.f13260do = qj;
        this.f13261do = c0481Rp;
        this.f13258do = gp;
        this.f13265do = c3988xd;
        this.f13259do = c0271Ic;
        atomicReference.set(C3929wd.m8578if(qj));
    }

    /* renamed from: do, reason: not valid java name */
    public final C2621dD m6780do(int i) {
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        C2621dD m2072for;
        try {
            if (C4122zt.m8822do(2, i)) {
                return null;
            }
            GP gp = this.f13258do;
            gp.getClass();
            try {
                File file = (File) gp.f1184do;
                if (file.exists()) {
                    fileInputStream = new FileInputStream(file);
                    try {
                        jSONObject = new JSONObject(J8.m1010break(fileInputStream));
                    } catch (Exception unused) {
                        J8.m1016if(fileInputStream);
                        jSONObject = null;
                        return jSONObject == null ? null : null;
                    } catch (Throwable th) {
                        th = th;
                        J8.m1016if(fileInputStream);
                        throw th;
                    }
                } else {
                    fileInputStream = null;
                    jSONObject = null;
                }
                J8.m1016if(fileInputStream);
            } catch (Exception unused2) {
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
            if (jSONObject == null && (m2072for = this.f13261do.m2072for(jSONObject)) != null) {
                jSONObject.toString();
                this.f13260do.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                if (!C4122zt.m8822do(3, i)) {
                    if (m2072for.f12447do < currentTimeMillis) {
                        return null;
                    }
                }
                return m2072for;
            }
        } catch (Exception unused3) {
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final C2621dD m6781if() {
        return this.f13263do.get();
    }
}

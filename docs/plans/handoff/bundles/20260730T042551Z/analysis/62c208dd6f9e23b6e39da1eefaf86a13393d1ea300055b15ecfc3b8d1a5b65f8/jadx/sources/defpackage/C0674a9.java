package defpackage;

import java.util.Iterator;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: a9, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0674a9 implements InterfaceC3314m9, InterfaceC0598Xa, InterfaceC3146jI {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f4931do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f4932do;

    public /* synthetic */ C0674a9(Object obj, int i) {
        this.f4931do = i;
        this.f4932do = obj;
    }

    @Override // defpackage.InterfaceC3146jI
    public Object apply(Object obj) {
        ((C3461og) this.f4932do).getClass();
        BC.f214do.getClass();
        String m7396do = BC.f215do.m7396do((AC) obj);
        C0173Do.m399new(m7396do, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)");
        byte[] bytes = m7396do.getBytes(C3548q7.f15043do);
        C0173Do.m399new(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @Override // defpackage.InterfaceC0598Xa
    public Object then(FG fg) {
        boolean z;
        switch (this.f4931do) {
            case 1:
                return (FG) ((Callable) this.f4932do).call();
            default:
                C0101Ai c0101Ai = (C0101Ai) this.f4932do;
                c0101Ai.getClass();
                if (fg.mo604throw()) {
                    D9 d9 = c0101Ai.f124do;
                    synchronized (d9) {
                        d9.f518do = LG.m1320try(null);
                    }
                    d9.f517do.m1396do();
                    E9 e9 = (E9) fg.mo592class();
                    if (e9 != null) {
                        JSONArray jSONArray = e9.f741do;
                        C0605Xh c0605Xh = c0101Ai.f127do;
                        if (c0605Xh != null) {
                            try {
                                c0605Xh.m2857for(C0101Ai.m89try(jSONArray));
                            } catch (Cextends | JSONException unused) {
                            }
                        }
                        C3845vA c3845vA = c0101Ai.f132do;
                        c3845vA.getClass();
                        try {
                            C3486p4 m8221do = c3845vA.f16028do.m8221do(e9);
                            Iterator<InterfaceC3786uA> it = c3845vA.f16026do.iterator();
                            while (it.hasNext()) {
                                c3845vA.f16027do.execute(new RunnableC0667a2(6, it.next(), m8221do));
                            }
                        } catch (C0145Ci unused2) {
                        }
                    }
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x048f A[Catch: Exception -> 0x04b7, TRY_LEAVE, TryCatch #5 {Exception -> 0x04b7, blocks: (B:87:0x045c, B:89:0x0466, B:93:0x0475, B:95:0x0483, B:100:0x048f, B:102:0x049d, B:110:0x04a5), top: B:86:0x045c, inners: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0365  */
    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo1186try(defpackage.Xz r44) {
        /*
            Method dump skipped, instructions count: 1256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0674a9.mo1186try(Xz):java.lang.Object");
    }
}

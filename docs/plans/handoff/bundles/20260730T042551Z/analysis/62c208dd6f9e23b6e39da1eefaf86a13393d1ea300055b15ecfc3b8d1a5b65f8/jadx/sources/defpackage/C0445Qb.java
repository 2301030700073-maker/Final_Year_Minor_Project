package defpackage;

import android.content.Context;
import java.io.File;
import java.io.IOException;

/* renamed from: Qb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0445Qb {

    /* renamed from: do, reason: not valid java name */
    public final long f2959do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final E0 f2960do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0182Eb f2961do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0271Ic f2962do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0327Ko f2963do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0357Mb f2964do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final R5 f2965do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0467Rb f2966do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0495Sh f2967do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f2968do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2739fE f2969do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3162jc f2970do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3232kn f2971do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3480oz f2972do;

    /* renamed from: if, reason: not valid java name */
    public C2739fE f2973if;

    public C0445Qb(C0706ai c0706ai, C3232kn c3232kn, C0489Sb c0489Sb, C0271Ic c0271Ic, C0775br c0775br, C2598cr c2598cr, C0495Sh c0495Sh, C0182Eb c0182Eb, C3480oz c3480oz, C3162jc c3162jc) {
        this.f2962do = c0271Ic;
        c0706ai.m3147do();
        this.f2968do = c0706ai.f4985do;
        this.f2971do = c3232kn;
        this.f2966do = c0489Sb;
        this.f2965do = c0775br;
        this.f2960do = c2598cr;
        this.f2967do = c0495Sh;
        this.f2961do = c0182Eb;
        this.f2972do = c3480oz;
        this.f2970do = c3162jc;
        this.f2959do = System.currentTimeMillis();
        this.f2963do = new C0327Ko();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [Pb] */
    /* renamed from: do, reason: not valid java name */
    public final void m1974do(InterfaceC3200kD interfaceC3200kD) {
        C2856hD c2856hD;
        C3162jc.m7143do();
        C3162jc.m7143do();
        C2739fE c2739fE = this.f2969do;
        c2739fE.getClass();
        try {
            C0495Sh c0495Sh = (C0495Sh) c2739fE.f12863do;
            c0495Sh.getClass();
            new File(c0495Sh.f3538if, c2739fE.f12862break).createNewFile();
        } catch (IOException unused) {
        }
        try {
            try {
                this.f2965do.mo2014if(new Q5() { // from class: Pb
                    @Override // defpackage.Q5
                    /* renamed from: do, reason: not valid java name */
                    public final void mo1773do(String str) {
                        C0445Qb c0445Qb = C0445Qb.this;
                        c0445Qb.getClass();
                        c0445Qb.f2970do.f13734do.m6567do(new O(c0445Qb, System.currentTimeMillis() - c0445Qb.f2959do, str));
                    }
                });
                this.f2964do.m1443try();
                c2856hD = (C2856hD) interfaceC3200kD;
            } catch (Exception unused2) {
            }
            if (!c2856hD.m6781if().f12448do.f12451do) {
                throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
            }
            C0357Mb c0357Mb = this.f2964do;
            c0357Mb.getClass();
            C3162jc.m7143do();
            C2642dc c2642dc = c0357Mb.f2205do;
            if (!(c2642dc != null && c2642dc.f12513do.get())) {
                try {
                    c0357Mb.m1441if(true, c2856hD, true);
                } catch (Exception unused3) {
                }
            }
            this.f2964do.m1439case(c2856hD.f13266if.get().f1160do);
        } finally {
            m1975if();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m1975if() {
        C3162jc.m7143do();
        try {
            C2739fE c2739fE = this.f2969do;
            C0495Sh c0495Sh = (C0495Sh) c2739fE.f12863do;
            c0495Sh.getClass();
            new File(c0495Sh.f3538if, c2739fE.f12862break).delete();
        } catch (Exception unused) {
        }
    }
}

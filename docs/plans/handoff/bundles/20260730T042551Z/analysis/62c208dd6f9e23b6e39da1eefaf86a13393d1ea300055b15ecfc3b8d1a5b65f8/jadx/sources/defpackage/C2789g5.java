package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.C0181Ea;
import java.util.ArrayList;

/* renamed from: g5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2789g5 {

    /* renamed from: do, reason: not valid java name */
    public final C0203Fa f13058do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<C0181Ea> f13060do = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f13059do = new Cdo();

    /* renamed from: g5$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f13061do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0181Ea.Cdo f13062do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f13063do;

        /* renamed from: for, reason: not valid java name */
        public int f13064for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f13065for;

        /* renamed from: if, reason: not valid java name */
        public int f13066if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public C0181Ea.Cdo f13067if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f13068if;

        /* renamed from: new, reason: not valid java name */
        public int f13069new;

        /* renamed from: try, reason: not valid java name */
        public int f13070try;
    }

    /* renamed from: g5$if, reason: invalid class name */
    public interface Cif {
    }

    public C2789g5(C0203Fa c0203Fa) {
        this.f13058do = c0203Fa;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m6711do(Cif cif, C0181Ea c0181Ea, boolean z) {
        C0181Ea.Cdo[] cdoArr = c0181Ea.f819do;
        C0181Ea.Cdo cdo = cdoArr[0];
        Cdo cdo2 = this.f13059do;
        cdo2.f13062do = cdo;
        cdo2.f13067if = cdoArr[1];
        cdo2.f13061do = c0181Ea.m481throw();
        cdo2.f13066if = c0181Ea.m462const();
        cdo2.f13068if = false;
        cdo2.f13065for = z;
        C0181Ea.Cdo cdo3 = cdo2.f13062do;
        C0181Ea.Cdo cdo4 = C0181Ea.Cdo.MATCH_CONSTRAINT;
        boolean z2 = cdo3 == cdo4;
        boolean z3 = cdo2.f13067if == cdo4;
        boolean z4 = z2 && c0181Ea.f854try > 0.0f;
        boolean z5 = z3 && c0181Ea.f854try > 0.0f;
        C0181Ea.Cdo cdo5 = C0181Ea.Cdo.FIXED;
        int[] iArr = c0181Ea.f842if;
        if (z4 && iArr[0] == 4) {
            cdo2.f13062do = cdo5;
        }
        if (z5 && iArr[1] == 4) {
            cdo2.f13067if = cdo5;
        }
        ((ConstraintLayout.Cdo) cif).m3642do(c0181Ea, cdo2);
        c0181Ea.m474private(cdo2.f13064for);
        c0181Ea.m466extends(cdo2.f13069new);
        c0181Ea.f841if = cdo2.f13063do;
        int i = cdo2.f13070try;
        c0181Ea.f851super = i;
        c0181Ea.f841if = i > 0;
        cdo2.f13065for = false;
        return cdo2.f13068if;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6712if(C0203Fa c0203Fa, int i, int i2) {
        int i3 = c0203Fa.f853throw;
        int i4 = c0203Fa.f857while;
        c0203Fa.f853throw = 0;
        c0203Fa.f857while = 0;
        c0203Fa.m474private(i);
        c0203Fa.m466extends(i2);
        if (i3 < 0) {
            c0203Fa.f853throw = 0;
        } else {
            c0203Fa.f853throw = i3;
        }
        if (i4 < 0) {
            c0203Fa.f857while = 0;
        } else {
            c0203Fa.f857while = i4;
        }
        this.f13058do.mo619strictfp();
    }
}

package androidx.fragment.app;

import androidx.lifecycle.Ctry;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.public, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cpublic {

    /* renamed from: case, reason: not valid java name */
    public int f6984case;

    /* renamed from: do, reason: not valid java name */
    public int f6985do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f6986do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f6987do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6989do;

    /* renamed from: else, reason: not valid java name */
    public int f6990else;

    /* renamed from: for, reason: not valid java name */
    public int f6991for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ArrayList<String> f6992for;

    /* renamed from: if, reason: not valid java name */
    public int f6993if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f6994if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ArrayList<String> f6995if;

    /* renamed from: new, reason: not valid java name */
    public int f6997new;

    /* renamed from: try, reason: not valid java name */
    public int f6998try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cdo> f6988do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6996if = false;

    /* renamed from: androidx.fragment.app.public$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f6999do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Fragment f7000do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Ctry.Cif f7001do;

        /* renamed from: for, reason: not valid java name */
        public int f7002for;

        /* renamed from: if, reason: not valid java name */
        public int f7003if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Ctry.Cif f7004if;

        /* renamed from: new, reason: not valid java name */
        public int f7005new;

        /* renamed from: try, reason: not valid java name */
        public int f7006try;

        public Cdo() {
        }

        public Cdo(Fragment fragment, int i) {
            this.f6999do = i;
            this.f7000do = fragment;
            Ctry.Cif cif = Ctry.Cif.RESUMED;
            this.f7001do = cif;
            this.f7004if = cif;
        }

        public Cdo(Fragment fragment, Ctry.Cif cif) {
            this.f6999do = 10;
            this.f7000do = fragment;
            this.f7001do = fragment.mMaxState;
            this.f7004if = cif;
        }
    }

    /* renamed from: for */
    public abstract void mo4172for(int i, Fragment fragment, String str, int i2);

    /* renamed from: if, reason: not valid java name */
    public final void m4185if(Cdo cdo) {
        this.f6988do.add(cdo);
        cdo.f7003if = this.f6985do;
        cdo.f7002for = this.f6993if;
        cdo.f7005new = this.f6991for;
        cdo.f7006try = this.f6997new;
    }
}

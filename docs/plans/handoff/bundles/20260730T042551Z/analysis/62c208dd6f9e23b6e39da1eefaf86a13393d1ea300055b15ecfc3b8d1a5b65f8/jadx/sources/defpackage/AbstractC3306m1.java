package defpackage;

import android.os.Build;
import defpackage.C0687aM;
import java.util.Arrays;
import java.util.HashSet;

/* renamed from: m1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3306m1 implements A9 {

    /* renamed from: do, reason: not valid java name */
    public static final HashSet f14292do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14293do;

    /* renamed from: if, reason: not valid java name */
    public final String f14294if;

    /* renamed from: m1$case, reason: invalid class name */
    public static class Ccase extends AbstractC3306m1 {
        public Ccase(String str, String str2) {
            super(str, str2);
        }

        @Override // defpackage.AbstractC3306m1
        /* renamed from: for */
        public final boolean mo7443for() {
            return Build.VERSION.SDK_INT >= 27;
        }
    }

    /* renamed from: m1$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final HashSet f14295do = new HashSet(Arrays.asList(C0687aM.Cdo.f4943do.mo4834try()));
    }

    /* renamed from: m1$else, reason: invalid class name */
    public static class Celse extends AbstractC3306m1 {
        public Celse() {
            super("TRACING_CONTROLLER_BASIC_USAGE", "TRACING_CONTROLLER_BASIC_USAGE");
        }

        @Override // defpackage.AbstractC3306m1
        /* renamed from: for */
        public final boolean mo7443for() {
            return Build.VERSION.SDK_INT >= 28;
        }
    }

    /* renamed from: m1$for, reason: invalid class name */
    public static class Cfor extends AbstractC3306m1 {
        public Cfor(String str, String str2) {
            super(str, str2);
        }

        @Override // defpackage.AbstractC3306m1
        /* renamed from: for */
        public final boolean mo7443for() {
            return Build.VERSION.SDK_INT >= 24;
        }
    }

    /* renamed from: m1$goto, reason: invalid class name */
    public static class Cgoto extends AbstractC3306m1 {
        public Cgoto(String str, String str2) {
            super(str, str2);
        }

        @Override // defpackage.AbstractC3306m1
        /* renamed from: for */
        public final boolean mo7443for() {
            return Build.VERSION.SDK_INT >= 29;
        }
    }

    /* renamed from: m1$if, reason: invalid class name */
    public static class Cif extends AbstractC3306m1 {
        public Cif(String str, String str2) {
            super(str, str2);
        }

        @Override // defpackage.AbstractC3306m1
        /* renamed from: for */
        public final boolean mo7443for() {
            return Build.VERSION.SDK_INT >= 23;
        }
    }

    /* renamed from: m1$new, reason: invalid class name */
    public static class Cnew extends AbstractC3306m1 {
        public Cnew(String str, String str2) {
            super(str, str2);
        }

        @Override // defpackage.AbstractC3306m1
        /* renamed from: for */
        public final boolean mo7443for() {
            return false;
        }
    }

    /* renamed from: m1$this, reason: invalid class name */
    public static class Cthis extends AbstractC3306m1 {
        public Cthis() {
            super("ALGORITHMIC_DARKENING", "ALGORITHMIC_DARKENING");
        }

        @Override // defpackage.AbstractC3306m1
        /* renamed from: for */
        public final boolean mo7443for() {
            return Build.VERSION.SDK_INT >= 33;
        }
    }

    /* renamed from: m1$try, reason: invalid class name */
    public static class Ctry extends AbstractC3306m1 {
        public Ctry(String str, String str2) {
            super(str, str2);
        }

        @Override // defpackage.AbstractC3306m1
        /* renamed from: for */
        public final boolean mo7443for() {
            return Build.VERSION.SDK_INT >= 26;
        }
    }

    public AbstractC3306m1(String str, String str2) {
        this.f14293do = str;
        this.f14294if = str2;
        f14292do.add(this);
    }

    @Override // defpackage.A9
    /* renamed from: do */
    public final String mo45do() {
        return this.f14293do;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract boolean mo7443for();

    @Override // defpackage.A9
    /* renamed from: if */
    public final boolean mo46if() {
        return mo7443for() || mo2991new();
    }

    /* renamed from: new */
    public boolean mo2991new() {
        HashSet hashSet = Cdo.f14295do;
        String str = this.f14294if;
        if (hashSet.contains(str)) {
            return true;
        }
        String str2 = Build.TYPE;
        if ("eng".equals(str2) || "userdebug".equals(str2)) {
            if (hashSet.contains(str + ":dev")) {
                return true;
            }
        }
        return false;
    }
}

package defpackage;

import android.os.Build;

/* renamed from: Ga, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0225Ga {

    /* renamed from: do, reason: not valid java name */
    public static final C0225Ga f1194do = new C0225Ga(new Cdo());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f1195do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EnumC0201Eu f1196do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0400Oa f1197do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1198do;

    /* renamed from: for, reason: not valid java name */
    public boolean f1199for;

    /* renamed from: if, reason: not valid java name */
    public long f1200if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f1201if;

    /* renamed from: new, reason: not valid java name */
    public boolean f1202new;

    /* renamed from: Ga$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public EnumC0201Eu f1203do = EnumC0201Eu.NOT_REQUIRED;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C0400Oa f1204do = new C0400Oa();
    }

    public C0225Ga() {
        this.f1196do = EnumC0201Eu.NOT_REQUIRED;
        this.f1195do = -1L;
        this.f1200if = -1L;
        this.f1197do = new C0400Oa();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0225Ga.class != obj.getClass()) {
            return false;
        }
        C0225Ga c0225Ga = (C0225Ga) obj;
        if (this.f1198do == c0225Ga.f1198do && this.f1201if == c0225Ga.f1201if && this.f1199for == c0225Ga.f1199for && this.f1202new == c0225Ga.f1202new && this.f1195do == c0225Ga.f1195do && this.f1200if == c0225Ga.f1200if && this.f1196do == c0225Ga.f1196do) {
            return this.f1197do.equals(c0225Ga.f1197do);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = ((((((((this.f1196do.hashCode() * 31) + (this.f1198do ? 1 : 0)) * 31) + (this.f1201if ? 1 : 0)) * 31) + (this.f1199for ? 1 : 0)) * 31) + (this.f1202new ? 1 : 0)) * 31;
        long j = this.f1195do;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f1200if;
        return this.f1197do.hashCode() + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }

    public C0225Ga(Cdo cdo) {
        this.f1196do = EnumC0201Eu.NOT_REQUIRED;
        this.f1195do = -1L;
        this.f1200if = -1L;
        this.f1197do = new C0400Oa();
        this.f1198do = false;
        int i = Build.VERSION.SDK_INT;
        this.f1201if = false;
        this.f1196do = cdo.f1203do;
        this.f1199for = false;
        this.f1202new = false;
        if (i >= 24) {
            this.f1197do = cdo.f1204do;
            this.f1195do = -1L;
            this.f1200if = -1L;
        }
    }

    public C0225Ga(C0225Ga c0225Ga) {
        this.f1196do = EnumC0201Eu.NOT_REQUIRED;
        this.f1195do = -1L;
        this.f1200if = -1L;
        this.f1197do = new C0400Oa();
        this.f1198do = c0225Ga.f1198do;
        this.f1201if = c0225Ga.f1201if;
        this.f1196do = c0225Ga.f1196do;
        this.f1199for = c0225Ga.f1199for;
        this.f1202new = c0225Ga.f1202new;
        this.f1197do = c0225Ga.f1197do;
    }
}

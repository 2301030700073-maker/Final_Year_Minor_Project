package defpackage;

/* renamed from: Cu, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0157Cu {

    /* renamed from: do, reason: not valid java name */
    public final boolean f444do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f445for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f446if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f447new;

    public C0157Cu(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f444do = z;
        this.f446if = z2;
        this.f445for = z3;
        this.f447new = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0157Cu)) {
            return false;
        }
        C0157Cu c0157Cu = (C0157Cu) obj;
        return this.f444do == c0157Cu.f444do && this.f446if == c0157Cu.f446if && this.f445for == c0157Cu.f445for && this.f447new == c0157Cu.f447new;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [boolean, int] */
    public final int hashCode() {
        boolean z = this.f446if;
        ?? r1 = this.f444do;
        int i = r1;
        if (z) {
            i = r1 + 16;
        }
        int i2 = i;
        if (this.f445for) {
            i2 = i + 256;
        }
        return this.f447new ? i2 + 4096 : i2;
    }

    public final String toString() {
        return String.format("[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]", Boolean.valueOf(this.f444do), Boolean.valueOf(this.f446if), Boolean.valueOf(this.f445for), Boolean.valueOf(this.f447new));
    }
}

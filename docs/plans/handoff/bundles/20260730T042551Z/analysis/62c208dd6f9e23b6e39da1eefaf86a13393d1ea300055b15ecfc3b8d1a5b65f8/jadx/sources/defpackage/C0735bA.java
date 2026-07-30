package defpackage;

/* renamed from: bA, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0735bA implements Comparable<C0735bA> {

    /* renamed from: break, reason: not valid java name */
    public final String f8331break;

    /* renamed from: catch, reason: not valid java name */
    public final String f8332catch;

    /* renamed from: class, reason: not valid java name */
    public final String f8333class;

    /* renamed from: do, reason: not valid java name */
    public final Long f8334do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8335do;

    /* renamed from: for, reason: not valid java name */
    public final int f8336for;

    public C0735bA(Long l, boolean z, String str, int i, String str2, String str3) {
        this.f8334do = l;
        this.f8335do = z;
        this.f8331break = str;
        this.f8336for = i;
        this.f8332catch = str2;
        this.f8333class = str3;
    }

    @Override // java.lang.Comparable
    public final int compareTo(C0735bA c0735bA) {
        C0735bA c0735bA2 = c0735bA;
        Long l = this.f8334do;
        if ((c0735bA2 == null) || (l == null)) {
            return 0;
        }
        return l.compareTo(c0735bA2.f8334do);
    }
}

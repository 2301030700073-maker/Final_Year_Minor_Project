package defpackage;

import com.google.android.gms.common.internal.Preconditions;

/* renamed from: iQ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2928iQ {

    /* renamed from: do, reason: not valid java name */
    public final long f13503do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Boolean f13504do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Long f13505do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f13506do;

    /* renamed from: for, reason: not valid java name */
    public final long f13507for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Long f13508for;

    /* renamed from: if, reason: not valid java name */
    public final long f13509if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Long f13510if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f13511if;

    /* renamed from: new, reason: not valid java name */
    public final long f13512new;

    /* renamed from: try, reason: not valid java name */
    public final long f13513try;

    public C2928iQ(String str, String str2, long j) {
        this(str, str2, 0L, 0L, 0L, j, 0L, null, null, null, null);
    }

    /* renamed from: do, reason: not valid java name */
    public final C2928iQ m6905do(long j, long j2) {
        return new C2928iQ(this.f13506do, this.f13511if, this.f13503do, this.f13509if, this.f13507for, this.f13512new, j, Long.valueOf(j2), this.f13510if, this.f13508for, this.f13504do);
    }

    /* renamed from: if, reason: not valid java name */
    public final C2928iQ m6906if(Long l, Long l2, Boolean bool) {
        return new C2928iQ(this.f13506do, this.f13511if, this.f13503do, this.f13509if, this.f13507for, this.f13512new, this.f13513try, this.f13505do, l, l2, (bool == null || bool.booleanValue()) ? bool : null);
    }

    public C2928iQ(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkArgument(j >= 0);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j3 >= 0);
        Preconditions.checkArgument(j5 >= 0);
        this.f13506do = str;
        this.f13511if = str2;
        this.f13503do = j;
        this.f13509if = j2;
        this.f13507for = j3;
        this.f13512new = j4;
        this.f13513try = j5;
        this.f13505do = l;
        this.f13510if = l2;
        this.f13508for = l3;
        this.f13504do = bool;
    }
}

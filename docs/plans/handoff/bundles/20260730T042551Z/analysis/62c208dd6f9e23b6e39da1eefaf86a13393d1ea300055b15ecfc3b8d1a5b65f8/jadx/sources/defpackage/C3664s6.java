package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import java.util.concurrent.TimeUnit;

/* renamed from: s6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3664s6 {

    /* renamed from: case, reason: not valid java name */
    public final boolean f15380case;

    /* renamed from: do, reason: not valid java name */
    public final int f15381do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f15382do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f15383do;

    /* renamed from: else, reason: not valid java name */
    public final boolean f15384else;

    /* renamed from: for, reason: not valid java name */
    public final int f15385for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f15386for;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f15387goto;

    /* renamed from: if, reason: not valid java name */
    public final int f15388if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f15389if;

    /* renamed from: new, reason: not valid java name */
    public final int f15390new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final boolean f15391new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f15392try;

    /* renamed from: s6$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f15393do = -1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f15394do;

        /* renamed from: if, reason: not valid java name */
        public boolean f15395if;
    }

    static {
        Cdo cdo = new Cdo();
        cdo.f15394do = true;
        new C3664s6(cdo);
        Cdo cdo2 = new Cdo();
        cdo2.f15395if = true;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        long seconds = timeUnit.toSeconds(Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (seconds <= 2147483647L) {
            i = (int) seconds;
        }
        cdo2.f15393do = i;
        new C3664s6(cdo2);
    }

    public C3664s6(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.f15383do = z;
        this.f15389if = z2;
        this.f15381do = i;
        this.f15388if = i2;
        this.f15386for = z3;
        this.f15391new = z4;
        this.f15392try = z5;
        this.f15385for = i3;
        this.f15390new = i4;
        this.f15380case = z6;
        this.f15384else = z7;
        this.f15387goto = z8;
        this.f15382do = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.C3664s6 m8053do(defpackage.C0587Wl r22) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3664s6.m8053do(Wl):s6");
    }

    public final String toString() {
        String str = this.f15382do;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (this.f15383do) {
                sb.append("no-cache, ");
            }
            if (this.f15389if) {
                sb.append("no-store, ");
            }
            int i = this.f15381do;
            if (i != -1) {
                sb.append("max-age=");
                sb.append(i);
                sb.append(", ");
            }
            int i2 = this.f15388if;
            if (i2 != -1) {
                sb.append("s-maxage=");
                sb.append(i2);
                sb.append(", ");
            }
            if (this.f15386for) {
                sb.append("private, ");
            }
            if (this.f15391new) {
                sb.append("public, ");
            }
            if (this.f15392try) {
                sb.append("must-revalidate, ");
            }
            int i3 = this.f15385for;
            if (i3 != -1) {
                sb.append("max-stale=");
                sb.append(i3);
                sb.append(", ");
            }
            int i4 = this.f15390new;
            if (i4 != -1) {
                sb.append("min-fresh=");
                sb.append(i4);
                sb.append(", ");
            }
            if (this.f15380case) {
                sb.append("only-if-cached, ");
            }
            if (this.f15384else) {
                sb.append("no-transform, ");
            }
            if (this.f15387goto) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                sb.delete(sb.length() - 2, sb.length());
                str = sb.toString();
            }
            this.f15382do = str;
        }
        return str;
    }

    public C3664s6(Cdo cdo) {
        this.f15383do = cdo.f15394do;
        this.f15389if = false;
        this.f15381do = -1;
        this.f15388if = -1;
        this.f15386for = false;
        this.f15391new = false;
        this.f15392try = false;
        this.f15385for = cdo.f15393do;
        this.f15390new = -1;
        this.f15380case = cdo.f15395if;
        this.f15384else = false;
        this.f15387goto = false;
    }
}

package c.b.a.c.d.j;

import android.content.ComponentName;
import android.content.Intent;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final String f2969a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2970b;

    /* renamed from: c, reason: collision with root package name */
    public final ComponentName f2971c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2972d;

    public l(String str, String str2, int i) {
        c.b.a.c.b.a.U(str);
        this.f2969a = str;
        c.b.a.c.b.a.U(str2);
        this.f2970b = str2;
        this.f2971c = null;
        this.f2972d = i;
    }

    public final Intent a() {
        return this.f2969a != null ? new Intent(this.f2969a).setPackage(this.f2970b) : new Intent().setComponent(null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return c.b.a.c.b.a.p0(this.f2969a, lVar.f2969a) && c.b.a.c.b.a.p0(this.f2970b, lVar.f2970b) && c.b.a.c.b.a.p0(null, null) && this.f2972d == lVar.f2972d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2969a, this.f2970b, null, Integer.valueOf(this.f2972d)});
    }

    public final String toString() {
        String str = this.f2969a;
        if (str != null) {
            return str;
        }
        throw null;
    }
}

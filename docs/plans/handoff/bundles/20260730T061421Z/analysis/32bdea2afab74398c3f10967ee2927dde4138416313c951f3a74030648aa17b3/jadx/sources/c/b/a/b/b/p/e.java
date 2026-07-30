package c.b.a.b.b.p;

import android.content.Context;
import android.text.TextUtils;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2796a;

    /* renamed from: b, reason: collision with root package name */
    public final c.b.a.b.b.p.o.h f2797b;

    /* renamed from: c, reason: collision with root package name */
    public final c.b.a.b.b.p.o.e f2798c;

    public e(Context context, c.b.a.b.b.p.o.h hVar, c.b.a.b.b.p.o.e eVar) {
        this.f2796a = context;
        this.f2797b = hVar;
        if (eVar == null) {
            eVar = new c.b.a.b.b.p.o.e();
            eVar.a();
        }
        this.f2798c = eVar;
    }

    public final long a(c.b.a.b.b.p.o.d dVar) {
        long j;
        if (dVar.f2831c == 2) {
            c.b.a.b.b.p.o.h hVar = this.f2797b;
            j = hVar.k + hVar.l;
        } else {
            j = this.f2797b.k;
        }
        return Math.abs(System.currentTimeMillis() - j);
    }

    public TextUtils.TruncateAt b() {
        int i = this.f2798c.f2834b;
        return i != 1 ? i != 2 ? TextUtils.TruncateAt.END : TextUtils.TruncateAt.MIDDLE : TextUtils.TruncateAt.START;
    }

    public boolean c() {
        c.b.a.b.b.p.o.d[] dVarArr;
        c.b.a.b.b.p.o.e eVar = this.f2798c;
        return (eVar.f2833a == null || (dVarArr = eVar.f2835c) == null || dVarArr.length <= 0) ? false : true;
    }

    public String d(String str) {
        String quantityString;
        String str2 = this.f2798c.f2833a;
        if (!c()) {
            return str2 != null ? str2 : "";
        }
        c.b.a.b.b.p.o.d[] dVarArr = this.f2798c.f2835c;
        int length = dVarArr.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            int i2 = dVarArr[i].f2831c;
            if (i2 == 1 || i2 == 2) {
                int ceil = (int) Math.ceil(a(dVarArr[i]) / 60000.0d);
                if (ceil >= 60) {
                    int i3 = ceil / 60;
                    int i4 = ceil % 60;
                    quantityString = this.f2796a.getResources().getQuantityString(R.plurals.smartspace_hours, i3, Integer.valueOf(i3));
                    if (i4 > 0) {
                        quantityString = this.f2796a.getString(R.string.smartspace_hours_mins, quantityString, this.f2796a.getResources().getQuantityString(R.plurals.smartspace_minutes, i4, Integer.valueOf(i4)));
                    }
                } else {
                    quantityString = this.f2796a.getResources().getQuantityString(R.plurals.smartspace_minutes, ceil, Integer.valueOf(ceil));
                }
                objArr[i] = quantityString;
            } else if (i2 != 3) {
                objArr[i] = "";
            } else if (str == null || dVarArr[i].f2830b == 0) {
                objArr[i] = dVarArr[i].f2829a != null ? dVarArr[i].f2829a : "";
            } else {
                objArr[i] = str;
            }
        }
        return String.format(str2, objArr);
    }

    public String toString() {
        return d(null);
    }
}

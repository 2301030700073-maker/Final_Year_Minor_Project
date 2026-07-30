package c.b.a.d.a.a;

import com.android.quickstep.fallback.RecentsState;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f3083a;

    /* renamed from: b, reason: collision with root package name */
    public final c[] f3084b;

    /* renamed from: c, reason: collision with root package name */
    public int f3085c = 0;

    public d(String str, int i) {
        this.f3083a = str;
        this.f3084b = new c[i];
    }

    public static boolean d(c cVar, int i, String str) {
        return cVar != null && cVar.f3079a == i && cVar.f3080b.equals(str);
    }

    public final void a(int i, String str, float f) {
        int i2 = this.f3085c;
        c[] cVarArr = this.f3084b;
        int length = ((cVarArr.length + i2) - 1) % cVarArr.length;
        int length2 = ((i2 + cVarArr.length) - 2) % cVarArr.length;
        if (d(cVarArr[length], i, str) && d(this.f3084b[length2], i, str)) {
            c cVar = this.f3084b[length];
            cVar.f3079a = i;
            cVar.f3080b = str;
            cVar.f3081c = f;
            cVar.f3082d = System.currentTimeMillis();
            cVar.e = 0;
            this.f3084b[length2].e++;
            return;
        }
        c[] cVarArr2 = this.f3084b;
        int i3 = this.f3085c;
        if (cVarArr2[i3] == null) {
            cVarArr2[i3] = new c(null);
        }
        c cVar2 = this.f3084b[this.f3085c];
        cVar2.f3079a = i;
        cVar2.f3080b = str;
        cVar2.f3081c = f;
        cVar2.f3082d = System.currentTimeMillis();
        cVar2.e = 0;
        this.f3085c = (this.f3085c + 1) % this.f3084b.length;
    }

    public void b(String str) {
        a(0, str, RecentsState.NO_OFFSET);
    }

    public void c(String str, PrintWriter printWriter) {
        String str2 = this.f3083a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 15);
        sb.append(str);
        sb.append(str2);
        sb.append(" event history:");
        printWriter.println(sb.toString());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("  HH:mm:ss.SSSZ  ", Locale.US);
        Date date = new Date();
        int i = 0;
        while (true) {
            c[] cVarArr = this.f3084b;
            if (i >= cVarArr.length) {
                return;
            }
            c cVar = cVarArr[(((this.f3085c + cVarArr.length) - i) - 1) % cVarArr.length];
            if (cVar != null) {
                date.setTime(cVar.f3082d);
                StringBuilder sb2 = new StringBuilder(str);
                sb2.append(simpleDateFormat.format(date));
                sb2.append(cVar.f3080b);
                int i2 = cVar.f3079a;
                if (i2 == 1) {
                    sb2.append(": ");
                    sb2.append(cVar.f3081c);
                } else if (i2 == 2) {
                    sb2.append(": ");
                    sb2.append((int) cVar.f3081c);
                } else if (i2 == 3) {
                    sb2.append(": true");
                } else if (i2 == 4) {
                    sb2.append(": false");
                }
                if (cVar.e > 0) {
                    sb2.append(" & ");
                    sb2.append(cVar.e);
                    sb2.append(" similar events");
                }
                printWriter.println(sb2);
            }
            i++;
        }
    }
}

package c.a.c.a;

import androidx.recyclerview.widget.RecyclerView;
import b.i.b.r;

/* compiled from: outline */
/* loaded from: classes.dex */
public class a {
    public static float a(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    public static String b(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    public static String c(String str, int i) {
        return str + i;
    }

    public static String d(String str, r rVar, String str2) {
        return str + rVar + str2;
    }

    public static String e(String str, String str2) {
        return str + str2;
    }

    public static StringBuilder f(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder g(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }
}

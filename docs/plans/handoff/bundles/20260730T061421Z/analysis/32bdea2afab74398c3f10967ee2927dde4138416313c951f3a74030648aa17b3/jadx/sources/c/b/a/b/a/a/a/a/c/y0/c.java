package c.b.a.b.a.a.a.a.c.y0;

import android.util.Log;
import c.b.a.b.a.a.a.a.a.a.C0356a;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import c.b.a.b.a.a.a.a.a.a.C0358c;
import c.b.a.b.a.a.a.a.a.a.D;
import c.b.a.b.a.a.a.a.a.a.s;
import c.b.a.b.a.a.a.a.a.a.t;
import c.b.a.b.a.a.a.a.a.a.u;
import c.b.a.b.a.a.a.a.a.a.w;
import c.b.a.b.a.a.a.a.a.a.x;
import c.b.a.b.a.a.a.a.a.a.y;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final b f2525a = new b(null);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.List] */
    public static String a(C0357b c0357b) {
        if (c0357b == null || c0357b.f2301c == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<C0356a> arrayList = new ArrayList();
        ?? r11 = c0357b.f2301c;
        if (r11 != 0) {
            arrayList = r11;
        }
        sb.append("Found ");
        d.a(arrayList);
        sb.append(arrayList.size());
        sb.append(" contents:\n\n");
        int i = 0;
        for (C0356a c0356a : arrayList) {
            if (c0356a != null) {
                ArrayList arrayList2 = new ArrayList();
                ?? r5 = c0356a.f2295a;
                if (r5 != 0) {
                    arrayList2 = r5;
                }
                sb.append("__Content Group Index: ");
                sb.append(i);
                sb.append("; Found ");
                d.a(arrayList2);
                sb.append(arrayList2.size());
                sb.append(" rects:");
                sb.append("\n");
                sb.append("__Selections:\n");
                List<C0358c> list = c0356a.f2296b;
                if (list != null) {
                    d.a(list);
                    for (C0358c c0358c : list) {
                        sb.append(String.format("___%s", c0358c.f2304b));
                        List list2 = c0358c.f2303a;
                        if (list2 != null) {
                            d.a(list2);
                            Iterator it = list2.iterator();
                            while (it.hasNext()) {
                                int intValue = ((Integer) it.next()).intValue();
                                List list3 = c0356a.f2295a;
                                d.a(list3);
                                if (list3.size() > intValue && intValue >= 0) {
                                    List list4 = c0356a.f2295a;
                                    d.a(list4);
                                    sb.append(String.format(" [ %s ]", ((u) list4.get(intValue)).f2352b));
                                }
                            }
                        }
                        sb.append("\n");
                    }
                }
                List<u> list5 = c0356a.f2295a;
                d.a(list5);
                int i2 = 0;
                for (u uVar : list5) {
                    sb.append("    Rect #");
                    sb.append(i2);
                    sb.append(":");
                    D d2 = uVar.f2351a;
                    if (d2 != null) {
                        sb.append('(');
                        sb.append(d2.f2284a);
                        sb.append(',');
                        sb.append(d2.f2285b);
                        sb.append(',');
                        sb.append(d2.f2286c);
                        sb.append(',');
                        sb.append(d2.f2287d);
                        sb.append(") -- ");
                        sb.append("     ");
                        sb.append(uVar.f2352b);
                        sb.append("\n");
                        i2++;
                    }
                }
                i++;
            }
        }
        return sb.toString();
    }

    public static void b(String str) {
        if (f2525a.f2524a) {
            Log.d("AiAiSuggestUi", str);
        }
    }

    public static void c(String str) {
        Log.e("AiAiSuggestUi", str, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v19, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    public static String d(EntitiesData entitiesData) {
        w wVar = entitiesData.f3236a;
        StringBuilder g = c.a.c.a.a.g("-------------------------------------------\n", "id = ");
        g.append(wVar.f2355a);
        g.append('\n');
        g.append("success = ");
        g.append(wVar.f2356b);
        g.append('\n');
        ArrayList<x> arrayList = new ArrayList();
        ?? r11 = wVar.f2357c;
        if (r11 != 0) {
            arrayList = r11;
        }
        g.append("entities = ");
        d.a(arrayList);
        g.append(arrayList.size());
        g.append('\n');
        for (x xVar : arrayList) {
            StringBuilder g2 = c.a.c.a.a.g("_", "id = ");
            g2.append(xVar.f2359a);
            g2.append('\n');
            g2.append("_");
            g2.append("query = ");
            g2.append(xVar.e);
            g2.append('\n');
            g2.append("_");
            g2.append("contentGroupIndex = ");
            g2.append(xVar.j);
            g2.append('\n');
            g2.append("_");
            g2.append("selectionIndex = ");
            g2.append(xVar.k);
            g2.append('\n');
            ArrayList<t> arrayList2 = new ArrayList();
            ?? r7 = xVar.f2360b;
            if (r7 != 0) {
                arrayList2 = r7;
            }
            d.a(arrayList2);
            for (t tVar : arrayList2) {
                g2.append("__");
                g2.append("id = ");
                g2.append(tVar.f2347a);
                g2.append('\n');
                g2.append("__");
                g2.append("displayName = ");
                g2.append(tVar.f2348b);
                g2.append('\n');
                d.a(tVar.f2349c);
                ArrayList<s> arrayList3 = new ArrayList();
                ?? r72 = tVar.f2350d;
                if (r72 != 0) {
                    arrayList3 = r72;
                }
                d.a(arrayList3);
                for (s sVar : arrayList3) {
                }
            }
            ArrayList<y> arrayList4 = new ArrayList();
            ?? r4 = xVar.f2362d;
            if (r4 != 0) {
                arrayList4 = r4;
            }
            d.a(arrayList4);
            for (y yVar : arrayList4) {
                g2.append("__");
                g2.append("view = ");
                ArrayList arrayList5 = new ArrayList();
                ?? r5 = yVar.f2363a;
                if (r5 != 0) {
                    arrayList5 = r5;
                }
                d.a(arrayList5);
                Iterator it = arrayList5.iterator();
                while (it.hasNext()) {
                    D d2 = ((u) it.next()).f2351a;
                    if (d2 != null) {
                        g2.append('(');
                        g2.append(d2.f2284a);
                        g2.append(',');
                        g2.append(d2.f2285b);
                        g2.append(',');
                        g2.append(d2.f2286c);
                        g2.append(',');
                        g2.append(d2.f2287d);
                        g2.append(')');
                    }
                }
            }
            g2.append('\n');
            g.append(g2.toString());
        }
        g.append("-------------------------------------------\n");
        return g.toString();
    }

    public static void e(String str) {
        if (f2525a.f2524a) {
            Log.v("AiAiSuggestUi", str);
        }
    }
}

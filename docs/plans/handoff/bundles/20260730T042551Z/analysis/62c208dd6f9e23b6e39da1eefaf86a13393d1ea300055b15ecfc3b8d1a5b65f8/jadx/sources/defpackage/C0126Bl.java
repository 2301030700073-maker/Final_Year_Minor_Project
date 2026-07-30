package defpackage;

import android.app.Activity;
import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.db.chart.view.BarChartView;
import com.db.chart.view.ChartView;
import com.db.chart.view.HorizontalStackBarChartView;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheckp.Rankings.GlobalAndVerResultJsonAdapter;
import com.joeykrim.rootcheckp.Rankings.GlobalManufResultJsonAdapter;
import com.joeykrim.rootcheckp.Rankings.GlobalResultJsonAdapter;
import defpackage.C3886vt;
import defpackage.WI;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: Bl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0126Bl {

    /* renamed from: do, reason: not valid java name */
    public static F2<Integer, Integer> f260do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static J4 f261do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static RecyclerView f262do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static SwipeRefreshLayout f263do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static BarChartView f264do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static HorizontalStackBarChartView f265do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static C2667e1 f266do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static String f267do = "";

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static ArrayList<String> f268do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static List<C2827gl> f269do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static C3289ll f270do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static String[] f271do;

    /* renamed from: for, reason: not valid java name */
    public static C2667e1 f272for;

    /* renamed from: if, reason: not valid java name */
    public static F2<Integer, Integer> f273if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static HorizontalStackBarChartView f274if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static C2667e1 f275if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static ArrayList<Integer> f276if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static List<C2709el> f277if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static String[] f278if;

    /* renamed from: break, reason: not valid java name */
    public static List<C2709el> m201break(String str) {
        try {
            C3886vt.Cdo cdo = new C3886vt.Cdo();
            cdo.m8487do(new GlobalAndVerResultJsonAdapter());
            return (List) new C3886vt(cdo).m8484do(new WI.Cif(null, List.class, C2709el.class)).m6837if(str);
        } catch (Error e) {
            C0766bi.m4854do().m4855for(e);
            return null;
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
            return null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m202case(Context context) {
        List<C2709el> list;
        return (C3772tx.m8335for(context).isEmpty() || (list = f277if) == null || list.size() <= 0) ? false : true;
    }

    /* renamed from: catch, reason: not valid java name */
    public static List<C2827gl> m203catch(String str) {
        try {
            C3886vt.Cdo cdo = new C3886vt.Cdo();
            cdo.m8487do(new GlobalManufResultJsonAdapter());
            return (List) new C3886vt(cdo).m8484do(new WI.Cif(null, List.class, C2827gl.class)).m6837if(str);
        } catch (Error e) {
            C0766bi.m4854do().m4855for(e);
            return null;
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
    
        if (r6.get(r0).f13767do == (r6.get(r2).f13767do - 1)) goto L17;
     */
    /* renamed from: class, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m204class(java.util.List<defpackage.C3171jl> r6) {
        /*
            F2 r0 = new F2
            r0.<init>()
            defpackage.C0126Bl.f260do = r0
            F2 r0 = new F2
            r0.<init>()
            defpackage.C0126Bl.f273if = r0
            r0 = 0
            r1 = 0
            r2 = 0
        L11:
            int r3 = r6.size()
            if (r0 >= r3) goto L98
            java.lang.Object r3 = r6.get(r0)
            jl r3 = (defpackage.C3171jl) r3
            java.lang.String r3 = r3.f13772for
            java.lang.String r4 = defpackage.VJ.m2581public()
            boolean r3 = r3.equalsIgnoreCase(r4)
            if (r3 == 0) goto L84
            F2<java.lang.Integer, java.lang.Integer> r3 = defpackage.C0126Bl.f260do
            int r4 = r2 + 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r0)
            r3.put(r2, r5)
            int r2 = r0 + (-1)
            if (r2 <= 0) goto L56
            java.lang.Object r3 = r6.get(r2)
            if (r3 == 0) goto L56
            java.lang.Object r3 = r6.get(r0)
            jl r3 = (defpackage.C3171jl) r3
            int r3 = r3.f13767do
            java.lang.Object r2 = r6.get(r2)
            jl r2 = (defpackage.C3171jl) r2
            int r2 = r2.f13767do
            int r2 = r2 + 1
            if (r3 == r2) goto L72
        L56:
            int r2 = r0 + 1
            java.lang.Object r3 = r6.get(r2)
            if (r3 == 0) goto L82
            java.lang.Object r3 = r6.get(r0)
            jl r3 = (defpackage.C3171jl) r3
            int r3 = r3.f13767do
            java.lang.Object r2 = r6.get(r2)
            jl r2 = (defpackage.C3171jl) r2
            int r2 = r2.f13767do
            int r2 = r2 + (-1)
            if (r3 != r2) goto L82
        L72:
            F2<java.lang.Integer, java.lang.Integer> r2 = defpackage.C0126Bl.f273if
            int r3 = r1 + 1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r0)
            r2.put(r1, r5)
            r1 = r3
        L82:
            r2 = r4
            goto L94
        L84:
            F2<java.lang.Integer, java.lang.Integer> r3 = defpackage.C0126Bl.f273if
            int r4 = r1 + 1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r0)
            r3.put(r1, r5)
            r1 = r4
        L94:
            int r0 = r0 + 1
            goto L11
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0126Bl.m204class(java.util.List):void");
    }

    /* renamed from: const, reason: not valid java name */
    public static void m205const(int i) {
        f271do = new String[i];
        int i2 = i - 1;
        int i3 = 0;
        while (i2 >= 0) {
            f271do[i2] = VJ.m2569for(f269do.get(i3).f13201do);
            i2--;
            i3++;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m206do(HorizontalStackBarChartView horizontalStackBarChartView, String[] strArr) {
        if (horizontalStackBarChartView == null || strArr == null) {
            return;
        }
        int[] iArr = new int[strArr.length];
        int length = strArr.length - 1;
        int i = 0;
        while (length >= 0) {
            iArr[i] = length;
            length--;
            i++;
        }
        C2667e1 c2667e1 = new C2667e1();
        c2667e1.m6507for(iArr);
        c2667e1.f12564do = 2500;
        f275if = c2667e1;
        ((ChartView) horizontalStackBarChartView).f9152do = c2667e1;
        horizontalStackBarChartView.mo5234catch();
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m207else(Context context) {
        List<C2827gl> list;
        return (C3772tx.m8340new(context).isEmpty() || (list = f269do) == null || list.size() <= 0) ? false : true;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m208for(HorizontalStackBarChartView horizontalStackBarChartView, String[] strArr) {
        if (horizontalStackBarChartView == null || strArr == null) {
            return;
        }
        int[] iArr = new int[strArr.length];
        int length = strArr.length - 1;
        int i = 0;
        while (length >= 0) {
            iArr[i] = length;
            length--;
            i++;
        }
        C2667e1 c2667e1 = new C2667e1();
        c2667e1.m6507for(iArr);
        c2667e1.f12564do = 2500;
        f266do = c2667e1;
        ((ChartView) horizontalStackBarChartView).f9152do = c2667e1;
        horizontalStackBarChartView.mo5234catch();
    }

    /* renamed from: goto, reason: not valid java name */
    public static ArrayList<String> m209goto(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            JSONObject jSONObject = new JSONArray(str).getJSONObject(0);
            arrayList.add(jSONObject.getString("rank"));
            arrayList.add(jSONObject.getString("device_make"));
            arrayList.add(jSONObject.getString("device_model"));
            arrayList.add(jSONObject.getString("device_version"));
            arrayList.add(jSONObject.getString("percent_of_sum_distinct_user_count"));
            arrayList.add(jSONObject.getString("root_available"));
            arrayList.add(jSONObject.getString("diff_of_success"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m210if(BarChartView barChartView, J4 j4) {
        if (barChartView == null || j4 == null) {
            return;
        }
        int[] iArr = new int[j4.m8055if()];
        for (int i = 0; i < j4.m8055if(); i++) {
            iArr[i] = i;
        }
        C2667e1 c2667e1 = new C2667e1();
        c2667e1.m6507for(iArr);
        c2667e1.f12564do = 2500;
        f272for = c2667e1;
        ((ChartView) barChartView).f9152do = c2667e1;
        barChartView.mo5234catch();
    }

    /* renamed from: new, reason: not valid java name */
    public static ArrayList<Integer> m211new(Context context, List<C3171jl> list) {
        m204class(list);
        F2<Integer, Integer> f2 = f260do;
        int i = f2 != null ? f2.f12632for : -1;
        ArrayList<Integer> arrayList = new ArrayList<>();
        m204class(list);
        F2<Integer, Integer> f22 = f260do;
        int i2 = 0;
        int i3 = f22 != null ? f22.f12632for : 0;
        int i4 = 1;
        if (i3 >= 1) {
            i3 = i3 + 1 + 1;
        }
        int i5 = i3 + 1;
        int i6 = m207else(context) ? 3 : 1;
        if (m202case(context)) {
            i6 += 2;
        }
        int m2501for = V1.m2501for(i6, 1, 1, i5);
        F2<Integer, Integer> f23 = f273if;
        if (f23 != null) {
            m2501for += f23.f12632for;
        }
        int i7 = (!context.getSharedPreferences("PrefFile", 0).getString("globalRootDeviceChartStats", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).isEmpty() ? 1 : 0) + m2501for + 0;
        new F2();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i8 = 0;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        while (i2 < i7) {
            if (!z) {
                arrayList.add(i2, Integer.valueOf(i4));
                z = true;
            } else if (!z2 && i >= i4) {
                arrayList.add(i2, 2);
                z2 = true;
            } else if (!z3 && i >= i4) {
                arrayList.add(i2, 3);
                z3 = true;
            } else if (i >= i4 && i8 < i) {
                arrayList.add(i2, 4);
                i8++;
            } else if (!z4) {
                arrayList.add(i2, 5);
                z4 = true;
            } else if (!z5) {
                arrayList.add(i2, 6);
                z5 = true;
            } else if (!z6 && m207else(context)) {
                arrayList.add(i2, 7);
                z6 = true;
            } else if (!z7) {
                arrayList.add(i2, 8);
                z7 = true;
            } else if (!z8 && m202case(context)) {
                arrayList.add(i2, 9);
                z8 = true;
            } else if (!z10) {
                arrayList.add(i2, 10);
                z10 = true;
            } else if (z9) {
                arrayList.add(i2, 12);
            } else {
                arrayList.add(i2, 11);
                z9 = true;
            }
            i2++;
            i4 = 1;
        }
        return arrayList;
    }

    /* renamed from: this, reason: not valid java name */
    public static List<C3171jl> m212this(String str) {
        try {
            C3886vt.Cdo cdo = new C3886vt.Cdo();
            cdo.m8487do(new GlobalResultJsonAdapter());
            return (List) new C3886vt(cdo).m8484do(new WI.Cif(null, List.class, C3171jl.class)).m6837if(str);
        } catch (Error e) {
            C0766bi.m4854do().m4855for(e);
            return null;
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
            return null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static List<C3171jl> m213try(Activity activity) {
        List<C3171jl> list;
        try {
            list = m212this(C3772tx.m8352try(activity.getApplicationContext()));
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            list = null;
        }
        try {
            if (!C3772tx.m8340new(activity.getApplicationContext()).isEmpty()) {
                f269do = m203catch(C3772tx.m8340new(activity.getApplicationContext()));
            }
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
        try {
            if (!C3772tx.m8335for(activity.getApplicationContext()).isEmpty()) {
                f277if = m201break(C3772tx.m8335for(activity.getApplicationContext()));
            }
        } catch (Exception e3) {
            C0766bi.m4854do().m4855for(e3);
        }
        try {
            if (!activity.getApplicationContext().getSharedPreferences("PrefFile", 0).getString("globalRootDeviceMostPopular", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).isEmpty()) {
                f268do = m209goto(activity.getApplicationContext().getSharedPreferences("PrefFile", 0).getString("globalRootDeviceMostPopular", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
            }
        } catch (Exception e4) {
            C0766bi.m4854do().m4855for(e4);
        }
        if (C3772tx.m8324case(activity) != 0) {
            f267do = activity.getString(R.string.globalResultsLastUpdated, new SimpleDateFormat().format(Long.valueOf(C3772tx.m8324case(activity))));
        }
        return list;
    }
}

package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Cimport;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.tabs.TabLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C2957iz;
import java.util.ArrayList;

/* renamed from: Ou, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0420Ou {

    /* renamed from: do, reason: not valid java name */
    public static int f2678do = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Cfor f2679do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static AppCompatActivity f2680do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Toolbar f2681do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static ViewPager f2682do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static TabLayout f2683do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static ArrayList<String> f2684do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static AsyncTaskC3619rK f2685do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f2686do = false;

    /* renamed from: Ou$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f2687do;

        public Cdo(Activity activity) {
            this.f2687do = activity;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                int i = C0420Ou.f2678do;
                Activity activity = this.f2687do;
                if (i == 1) {
                    VJ.m2574instanceof(activity, activity.getString(R.string.gpiabActionUpgradeBundle));
                } else if (i == 5) {
                    VJ.m2574instanceof(activity, activity.getString(R.string.gpiabActionUpgradeVerifyRoot));
                    VJ.m2574instanceof(activity, activity.getString(R.string.gpiabActionUpgradeVerifyBusyBox));
                } else if (i == 3) {
                    VJ.m2574instanceof(activity, activity.getString(R.string.gpiabActionUpgradeVerifyRoot));
                } else if (i == 4) {
                    VJ.m2574instanceof(activity, activity.getString(R.string.gpiabActionUpgradeVerifyBusyBox));
                }
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: Ou$for, reason: invalid class name */
    public static class Cfor extends Cimport {

        /* renamed from: for, reason: not valid java name */
        public final ArrayList f2688for;

        /* renamed from: new, reason: not valid java name */
        public final ArrayList f2689new;

        public Cfor(C0212Fj c0212Fj) {
            super(c0212Fj);
            this.f2688for = new ArrayList();
            this.f2689new = new ArrayList();
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: else, reason: not valid java name */
        public final CharSequence mo1700else(int i) {
            String str;
            ArrayList arrayList = this.f2689new;
            return (arrayList == null || (str = (String) arrayList.get(i)) == null) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : C0420Ou.f2680do == null ? str : str.equalsIgnoreCase("VERIFY ROOT") ? C0420Ou.f2680do.getResources().getString(R.string.tabTitleVR) : str.equals("ADVANCED VERIFY ROOT") ? C0420Ou.f2680do.getResources().getString(R.string.tabTitleVRAdvanced) : str.equals("VERIFY BUSYBOX") ? C0420Ou.f2680do.getResources().getString(R.string.tabTitleVB) : str.equals("UPGRADES") ? C0420Ou.f2680do.getResources().getString(R.string.tabTitleUpgrades) : str.equals("ROOT BASICS") ? C0420Ou.f2680do.getResources().getString(R.string.tabTitleRB) : str.equals("RESULTS") ? C0420Ou.f2680do.getResources().getString(R.string.tabTitleResults) : str.equals("RANKINGS") ? C0420Ou.f2680do.getResources().getString(R.string.tabTitleRankings) : str.equals("MORE ROOT TOOLS") ? C0420Ou.f2680do.getResources().getString(R.string.tabTitleMoreRT) : str;
        }

        @Override // androidx.fragment.app.Cimport, defpackage.AbstractC3536pw
        /* renamed from: if */
        public final void mo169if(ViewGroup viewGroup, int i, Object obj) {
            try {
                super.mo169if(viewGroup, i, obj);
            } catch (IllegalStateException e) {
                C0766bi.m4854do().m4855for(e);
            }
        }

        @Override // androidx.fragment.app.Cimport, defpackage.AbstractC3536pw
        /* renamed from: new */
        public final void mo879new(ViewGroup viewGroup) {
            try {
                super.mo879new(viewGroup);
            } catch (IllegalStateException e) {
                C0766bi.m4854do().m4855for(e);
            } catch (RuntimeException unused) {
            }
        }

        /* renamed from: static, reason: not valid java name */
        public final void m1701static(Fragment fragment, String str) {
            this.f2688for.add(fragment);
            this.f2689new.add(str);
            mo168class();
        }

        /* renamed from: switch, reason: not valid java name */
        public final int m1702switch(String str) {
            for (int i = 0; i < this.f2689new.size(); i++) {
                if (m1703throws(i).equalsIgnoreCase(str)) {
                    return i;
                }
            }
            return -1;
        }

        /* renamed from: throws, reason: not valid java name */
        public final String m1703throws(int i) {
            ArrayList arrayList = this.f2689new;
            if (arrayList.size() > i) {
                return (String) arrayList.get(i);
            }
            return "size: " + arrayList.size() + ", position: " + i;
        }

        @Override // defpackage.AbstractC3536pw
        /* renamed from: try */
        public final int mo171try() {
            return this.f2688for.size();
        }
    }

    /* renamed from: Ou$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f2690for;

        public Cif(int i) {
            this.f2690for = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewPager viewPager;
            int i;
            try {
                if (C0420Ou.m1688case() || C0420Ou.m1693else() || C0420Ou.f2679do == null || (viewPager = C0420Ou.f2682do) == null || (i = this.f2690for) < 0) {
                    return;
                }
                viewPager.m4694private(i, true);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m1687break(String str) {
        ViewPager viewPager;
        int i;
        try {
            if (f2680do != null && (viewPager = f2682do) != null && viewPager.mo4678catch() != null && f2683do != null) {
                ViewPager viewPager2 = f2682do;
                if (viewPager2 != null && viewPager2.mo4678catch() != null) {
                    i = 0;
                    while (i < f2682do.mo4678catch().mo171try()) {
                        if (str.equalsIgnoreCase(f2682do.mo4678catch().mo1700else(i).toString())) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                i = -1;
                if (i != -1 && f2683do.m5945else(i) != null) {
                    if (f2684do != null) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= f2684do.size()) {
                                i2 = -1;
                                break;
                            } else if (str.equalsIgnoreCase(f2684do.get(i2))) {
                                break;
                            } else {
                                i2++;
                            }
                        }
                        if (i2 != -1) {
                            return;
                        }
                    }
                    TextView textView = (TextView) LayoutInflater.from(f2680do).inflate(R.layout.tab_notification_indicator, (ViewGroup) null);
                    textView.setText(str);
                    textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.tab_notification_circle_indicator, 0);
                    try {
                        textView.setTypeface(((AppCompatTextView) ((ViewGroup) ((ViewGroup) f2683do.getChildAt(0)).getChildAt(0)).getChildAt(1)).getTypeface());
                    } catch (Exception unused) {
                    }
                    TabLayout.Ctry m5945else = f2683do.m5945else(i);
                    m5945else.f11592do = textView;
                    TabLayout.Celse celse = m5945else.f11593do;
                    if (celse != null) {
                        celse.m5955do();
                    }
                    ArrayList<String> arrayList = f2684do;
                    if (arrayList != null) {
                        arrayList.add(arrayList.size(), str);
                        return;
                    }
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    f2684do = arrayList2;
                    arrayList2.add(0, str);
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m1688case() {
        int i = f2678do;
        return i == 5 || i == 3;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m1689catch(Activity activity) {
        LinearLayout linearLayout = (LinearLayout) activity.findViewById(R.id.linearLayoutOverall);
        int b = VJ.b(activity);
        if (linearLayout != null && b != -1) {
            linearLayout.setBackgroundColor(b);
        }
        ViewPager viewPager = f2682do;
        if (viewPager == null || f2683do == null) {
            return;
        }
        int i = viewPager.f8038new;
        m1695goto((AppCompatActivity) activity);
        int a = VJ.a(activity);
        if (a != -1) {
            f2681do.setBackgroundColor(a);
        }
        if (a != -1) {
            f2683do.setBackgroundColor(a);
        }
        f2683do.m5946final(f2682do);
        f2683do.post(new Cif(i));
    }

    /* renamed from: class, reason: not valid java name */
    public static void m1690class(boolean z) {
        if (C0126Bl.f270do != null) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0354Lu(z));
        } else {
            if (f2680do == null || f2682do == null || f2683do == null) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new RunnableC0376Mu(z));
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m1691const(boolean z, boolean z2, boolean z3, boolean z4) {
        C3443oK.m7704try(z2, null);
        C3854vJ.m8468new(z, z2, z3, z4, null);
        if ((z || z2 || z3 || z4) && C3772tx.m8330do() != null) {
            C3772tx.m8330do().putBoolean("aa_pm", true);
            C3772tx.m8330do().apply();
            C4012y0.m8691do();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1692do(Context context, CardView cardView) {
        try {
            ((ViewGroup.MarginLayoutParams) cardView.getLayoutParams()).setMargins(0, (int) XJ.m2827if(10, context), 0, 0);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m1693else() {
        return f2678do == 1;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1694for(Activity activity) {
        TabLayout tabLayout;
        if (f2686do || (tabLayout = f2683do) == null) {
            return;
        }
        f2686do = true;
        tabLayout.post(new Cdo(activity));
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1695goto(AppCompatActivity appCompatActivity) {
        f2678do = -1;
        if (VJ.m2586switch(appCompatActivity)) {
            f2678do = 6;
            Cfor cfor = new Cfor(appCompatActivity.m4113class());
            f2679do = cfor;
            cfor.m1701static(new C3443oK(), "VERIFY ROOT");
            f2679do.m1701static(new EA(), "ROOT BASICS");
            f2679do.m1701static(new HA(), "RESULTS");
            f2682do.mo4687finally(f2679do);
        } else if (C0830cn.f8640new) {
            f2678do = 1;
            Cfor cfor2 = new Cfor(appCompatActivity.m4113class());
            f2679do = cfor2;
            cfor2.m1701static(new C3502pK(), "ADVANCED VERIFY ROOT");
            f2679do.m1701static(new C3266lK(), "VERIFY BUSYBOX");
            if (C3772tx.m8352try(appCompatActivity).isEmpty()) {
                new C2957iz.Cif().execute(Boolean.TRUE);
            } else {
                f2679do.m1701static(new C3407nl(), "RANKINGS");
            }
            f2679do.m1701static(new HA(), "RESULTS");
            f2679do.m1701static(new EA(), "ROOT BASICS");
            f2679do.m1701static(new C3592qt(), "MORE ROOT TOOLS");
            f2682do.mo4687finally(f2679do);
        } else {
            boolean z = C0830cn.f8637for;
            if (z && C0830cn.f8638if) {
                f2678do = 5;
                Cfor cfor3 = new Cfor(appCompatActivity.m4113class());
                f2679do = cfor3;
                cfor3.m1701static(new C3502pK(), "ADVANCED VERIFY ROOT");
                f2679do.m1701static(new C3266lK(), "VERIFY BUSYBOX");
                f2679do.m1701static(new C3854vJ(), "UPGRADES");
                if (C3772tx.m8352try(appCompatActivity).isEmpty()) {
                    new C2957iz.Cif().execute(Boolean.TRUE);
                } else {
                    f2679do.m1701static(new C3407nl(), "RANKINGS");
                }
                f2679do.m1701static(new EA(), "ROOT BASICS");
                f2679do.m1701static(new HA(), "RESULTS");
                f2682do.mo4687finally(f2679do);
            } else if (z) {
                f2678do = 3;
                Cfor cfor4 = new Cfor(appCompatActivity.m4113class());
                f2679do = cfor4;
                cfor4.m1701static(new C3502pK(), "ADVANCED VERIFY ROOT");
                f2679do.m1701static(new C3854vJ(), "UPGRADES");
                if (C3772tx.m8352try(appCompatActivity).isEmpty()) {
                    new C2957iz.Cif().execute(Boolean.TRUE);
                } else {
                    f2679do.m1701static(new C3407nl(), "RANKINGS");
                }
                f2679do.m1701static(new EA(), "ROOT BASICS");
                f2679do.m1701static(new HA(), "RESULTS");
                f2682do.mo4687finally(f2679do);
            } else if (C0830cn.f8638if) {
                f2678do = 4;
                Cfor cfor5 = new Cfor(appCompatActivity.m4113class());
                f2679do = cfor5;
                cfor5.m1701static(new C3443oK(), "VERIFY ROOT");
                f2679do.m1701static(new C3266lK(), "VERIFY BUSYBOX");
                f2679do.m1701static(new C3854vJ(), "UPGRADES");
                if (C3772tx.m8352try(appCompatActivity).isEmpty()) {
                    new C2957iz.Cif().execute(Boolean.TRUE);
                } else {
                    f2679do.m1701static(new C3407nl(), "RANKINGS");
                }
                f2679do.m1701static(new EA(), "ROOT BASICS");
                f2679do.m1701static(new HA(), "RESULTS");
                f2682do.mo4687finally(f2679do);
            } else {
                f2678do = 7;
                Cfor cfor6 = new Cfor(appCompatActivity.m4113class());
                f2679do = cfor6;
                cfor6.m1701static(new C3443oK(), "VERIFY ROOT");
                f2679do.m1701static(new C3854vJ(), "UPGRADES");
                if (C3772tx.m8352try(appCompatActivity).isEmpty()) {
                    new C2957iz.Cif().execute(Boolean.TRUE);
                } else {
                    f2679do.m1701static(new C3407nl(), "RANKINGS");
                }
                f2679do.m1701static(new EA(), "ROOT BASICS");
                f2679do.m1701static(new HA(), "RESULTS");
                f2682do.mo4687finally(f2679do);
            }
        }
        AppCompatActivity appCompatActivity2 = f2680do;
        if (appCompatActivity2 != null) {
            m1696if(appCompatActivity2, null, 0);
            VJ.m2575interface(f2680do);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1696if(Activity activity, View view, int i) {
        try {
            if (activity.getResources().getDisplayMetrics().widthPixels > ((int) TypedValue.applyDimension(1, 452.0f, activity.getResources().getDisplayMetrics()))) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 452.0f, activity.getResources().getDisplayMetrics()), -2);
                layoutParams.gravity = 1;
                if (i == 1) {
                    view.findViewById(R.id.verifyRootlinLayout).setLayoutParams(layoutParams);
                    return;
                }
                if (i == 2) {
                    view.findViewById(R.id.rootBasicsLinLayout).setLayoutParams(layoutParams);
                    return;
                }
                if (i == 3) {
                    view.findViewById(R.id.upgradeLinLayout).setLayoutParams(layoutParams);
                    return;
                }
                LinearLayout linearLayout = (LinearLayout) activity.findViewById(R.id.verifyRootlinLayout);
                if (linearLayout != null) {
                    linearLayout.setLayoutParams(layoutParams);
                }
                LinearLayout linearLayout2 = (LinearLayout) activity.findViewById(R.id.verifyRootProLinLayout);
                if (linearLayout2 != null) {
                    linearLayout2.setLayoutParams(layoutParams);
                }
                LinearLayout linearLayout3 = (LinearLayout) activity.findViewById(R.id.rootBasicsLinLayout);
                if (linearLayout3 != null) {
                    linearLayout3.setLayoutParams(layoutParams);
                }
                LinearLayout linearLayout4 = (LinearLayout) activity.findViewById(R.id.verifyBusyBoxlinLayout);
                if (linearLayout4 != null) {
                    linearLayout4.setLayoutParams(layoutParams);
                }
                LinearLayout linearLayout5 = (LinearLayout) activity.findViewById(R.id.upgradeLinLayout);
                if (linearLayout5 != null) {
                    linearLayout5.setLayoutParams(layoutParams);
                    return;
                }
                return;
            }
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 1;
            if (i == 1) {
                view.findViewById(R.id.verifyRootlinLayout).setLayoutParams(layoutParams2);
                return;
            }
            if (i == 2) {
                view.findViewById(R.id.rootBasicsLinLayout).setLayoutParams(layoutParams2);
                return;
            }
            if (i == 3) {
                view.findViewById(R.id.upgradeLinLayout).setLayoutParams(layoutParams2);
                return;
            }
            LinearLayout linearLayout6 = (LinearLayout) activity.findViewById(R.id.verifyRootlinLayout);
            if (linearLayout6 != null) {
                linearLayout6.setLayoutParams(layoutParams2);
            }
            LinearLayout linearLayout7 = (LinearLayout) activity.findViewById(R.id.verifyRootProLinLayout);
            if (linearLayout7 != null) {
                linearLayout7.setLayoutParams(layoutParams2);
            }
            LinearLayout linearLayout8 = (LinearLayout) activity.findViewById(R.id.rootBasicsLinLayout);
            if (linearLayout8 != null) {
                linearLayout8.setLayoutParams(layoutParams2);
            }
            LinearLayout linearLayout9 = (LinearLayout) activity.findViewById(R.id.verifyBusyBoxlinLayout);
            if (linearLayout9 != null) {
                linearLayout9.setLayoutParams(layoutParams2);
            }
            LinearLayout linearLayout10 = (LinearLayout) activity.findViewById(R.id.upgradeLinLayout);
            if (linearLayout10 != null) {
                linearLayout10.setLayoutParams(layoutParams2);
            }
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m1697new() {
        ViewPager viewPager = f2682do;
        return (viewPager == null || viewPager.mo4678catch() == null) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : f2682do.mo4678catch().mo1700else(f2682do.f8038new).toString();
    }

    /* renamed from: this, reason: not valid java name */
    public static void m1698this(Activity activity) {
        AppCompatActivity appCompatActivity = f2680do;
        if (appCompatActivity == null || f2682do == null) {
            return;
        }
        TabLayout tabLayout = (TabLayout) appCompatActivity.findViewById(R.id.slidingTabs);
        f2683do = tabLayout;
        tabLayout.m5951super(f2682do, false);
        TabLayout tabLayout2 = f2683do;
        if (tabLayout2.f11559import != 0) {
            tabLayout2.f11559import = 0;
            tabLayout2.m5950new();
        }
        TabLayout tabLayout3 = f2683do;
        if (tabLayout3.f11564return != 0) {
            tabLayout3.f11564return = 0;
            tabLayout3.m5950new();
        }
        int a = VJ.a(activity);
        if (a != -1) {
            f2683do.setBackgroundColor(a);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Drawable m1699try(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }
}

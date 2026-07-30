package defpackage;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Paint;
import android.text.Spannable;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.db.chart.view.BarChartView;
import com.db.chart.view.BaseBarChartView;
import com.db.chart.view.ChartView;
import com.db.chart.view.HorizontalStackBarChartView;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.nativead.NativeAd;
import com.joeykrim.rootcheck.R;
import defpackage.C0420Ou;
import defpackage.C3128j0;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.function.IntSupplier;

/* renamed from: ll, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3289ll extends RecyclerView.Ctry<RecyclerView.Cdefault> implements C3128j0.Cdo {

    /* renamed from: do, reason: not valid java name */
    public static List<C3171jl> f14183do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3128j0.Cfor f14185do = new C3128j0.Cfor(new IntSupplier() { // from class: kl
        @Override // java.util.function.IntSupplier
        public final int getAsInt() {
            ArrayList<Integer> arrayList = C0126Bl.f276if;
            if (arrayList != null) {
                return arrayList.size();
            }
            return 0;
        }
    });

    /* renamed from: if, reason: not valid java name */
    public int f14189if = 0;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f14190if = false;

    /* renamed from: for, reason: not valid java name */
    public int f14187for = 0;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f14188for = false;

    /* renamed from: new, reason: not valid java name */
    public int f14191new = -1;

    /* renamed from: try, reason: not valid java name */
    public int f14192try = -1;

    /* renamed from: case, reason: not valid java name */
    public int f14184case = -1;

    /* renamed from: else, reason: not valid java name */
    public int f14186else = -1;

    /* renamed from: ll$break, reason: invalid class name */
    public static class Cbreak extends Cclass {

        /* renamed from: case, reason: not valid java name */
        public final TextView f14193case;

        /* renamed from: do, reason: not valid java name */
        public final ImageView f14194do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final TextView f14195do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final CardView f14196do;

        /* renamed from: for, reason: not valid java name */
        public final TextView f14197for;

        /* renamed from: if, reason: not valid java name */
        public final TextView f14198if;

        /* renamed from: new, reason: not valid java name */
        public final TextView f14199new;

        /* renamed from: try, reason: not valid java name */
        public final TextView f14200try;

        public Cbreak(View view) {
            super(view);
            this.f14196do = (CardView) view.findViewById(R.id.rootGlobalCardView);
            this.f14194do = (ImageView) view.findViewById(R.id.globalResultImage);
            this.f14195do = (TextView) view.findViewById(R.id.globalResultRank);
            this.f14198if = (TextView) view.findViewById(R.id.globalResultDeviceMakeModel);
            this.f14197for = (TextView) view.findViewById(R.id.globalResultOSVersion);
            this.f14199new = (TextView) view.findViewById(R.id.globalResultRootStatus);
            this.f14200try = (TextView) view.findViewById(R.id.globalResultRootDifficulty);
            this.f14193case = (TextView) view.findViewById(R.id.globalResultMostPopularReasonInstallRoot);
        }
    }

    /* renamed from: ll$case, reason: invalid class name */
    public class Ccase extends Cclass {

        /* renamed from: do, reason: not valid java name */
        public final TextView f14201do;

        public Ccase(View view) {
            super(view);
            this.f14201do = (TextView) view.findViewById(R.id.globalResultsCurrentDeviceTitle);
        }
    }

    /* renamed from: ll$catch, reason: invalid class name */
    public class Ccatch extends Cclass {

        /* renamed from: case, reason: not valid java name */
        public final TextView f14202case;

        /* renamed from: do, reason: not valid java name */
        public final TextView f14203do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final CardView f14204do;

        /* renamed from: else, reason: not valid java name */
        public final TextView f14205else;

        /* renamed from: for, reason: not valid java name */
        public final TextView f14206for;

        /* renamed from: if, reason: not valid java name */
        public final TextView f14207if;

        /* renamed from: new, reason: not valid java name */
        public final TextView f14208new;

        /* renamed from: try, reason: not valid java name */
        public final TextView f14209try;

        public Ccatch(View view) {
            super(view);
            this.f14204do = (CardView) view.findViewById(R.id.rankingPopularCardView);
            this.f14203do = (TextView) view.findViewById(R.id.rankingPopularTitle);
            this.f14207if = (TextView) view.findViewById(R.id.rankingPopularTV1);
            this.f14206for = (TextView) view.findViewById(R.id.rankingPopularTV2);
            this.f14208new = (TextView) view.findViewById(R.id.rankingPopularTV3);
            this.f14209try = (TextView) view.findViewById(R.id.rankingPopularTV4);
            this.f14202case = (TextView) view.findViewById(R.id.rankingPopularTV5);
            this.f14205else = (TextView) view.findViewById(R.id.rankingPopularTV6);
        }
    }

    /* renamed from: ll$class, reason: invalid class name */
    public static class Cclass extends RecyclerView.Cdefault {
        public Cclass(View view) {
            super(view);
        }
    }

    /* renamed from: ll$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo(Activity activity) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3210kN.m7248do("VR-GRSummary");
            C0420Ou.Cfor cfor = C0420Ou.f2679do;
            if (cfor == null || C0420Ou.f2682do == null) {
                return;
            }
            try {
                int m1702switch = cfor.m1702switch("RANKINGS");
                if (m1702switch != -1) {
                    C0420Ou.f2682do.m4694private(m1702switch, true);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: ll$else, reason: invalid class name */
    public class Celse extends Cclass {

        /* renamed from: do, reason: not valid java name */
        public final TextView f14210do;

        public Celse(View view) {
            super(view);
            this.f14210do = (TextView) view.findViewById(R.id.globalResultsLastUpdated);
        }
    }

    /* renamed from: ll$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cclass f14211do;

        public Cfor(Cclass cclass) {
            this.f14211do = cclass;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C2667e1 c2667e1;
            AppCompatActivity appCompatActivity;
            C3289ll c3289ll;
            int i;
            J4 j4 = C0126Bl.f261do;
            Cclass cclass = this.f14211do;
            if (j4 != null && j4.m8055if() > 0 && (appCompatActivity = C0420Ou.f2680do) != null && (i = (c3289ll = C3289ll.this).f14184case) != -1 && i != appCompatActivity.getResources().getConfiguration().orientation) {
                C0126Bl.m210if(((Cnew) cclass).f14224do, C0126Bl.f261do);
                c3289ll.f14184case = C0420Ou.f2680do.getResources().getConfiguration().orientation;
                return;
            }
            J4 j42 = C0126Bl.f261do;
            if (j42 == null || j42.m8055if() <= 0 || (c2667e1 = C0126Bl.f272for) == null || c2667e1.f12568do) {
                return;
            }
            C0126Bl.m210if(((Cnew) cclass).f14224do, C0126Bl.f261do);
        }
    }

    /* renamed from: ll$goto, reason: invalid class name */
    public class Cgoto extends Cclass {

        /* renamed from: case, reason: not valid java name */
        public final TextView f14213case;

        /* renamed from: do, reason: not valid java name */
        public final TextView f14214do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final CardView f14215do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final HorizontalStackBarChartView f14216do;

        /* renamed from: for, reason: not valid java name */
        public final TextView f14217for;

        /* renamed from: if, reason: not valid java name */
        public final TextView f14218if;

        /* renamed from: new, reason: not valid java name */
        public final TextView f14219new;

        /* renamed from: try, reason: not valid java name */
        public final TextView f14220try;

        public Cgoto(View view) {
            super(view);
            this.f14215do = (CardView) view.findViewById(R.id.cardViewRootHorizontalStackBarChart);
            this.f14214do = (TextView) view.findViewById(R.id.rootGlobalChartTitle);
            this.f14218if = (TextView) view.findViewById(R.id.rootGlobalChartTitleDetails);
            this.f14217for = (TextView) view.findViewById(R.id.legendEasy);
            this.f14219new = (TextView) view.findViewById(R.id.legendMedium);
            this.f14220try = (TextView) view.findViewById(R.id.legendHard);
            this.f14213case = (TextView) view.findViewById(R.id.legendExpert);
            this.f14216do = (HorizontalStackBarChartView) view.findViewById(R.id.horizontalStackBarChartView);
        }
    }

    /* renamed from: ll$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cclass f14221do;

        public Cif(Cclass cclass) {
            this.f14221do = cclass;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C2667e1 c2667e1;
            AppCompatActivity appCompatActivity;
            C3289ll c3289ll;
            int i;
            String[] strArr = C0126Bl.f278if;
            Cclass cclass = this.f14221do;
            if (strArr != null && strArr.length > 0 && (appCompatActivity = C0420Ou.f2680do) != null && (i = (c3289ll = C3289ll.this).f14192try) != -1 && i != appCompatActivity.getResources().getConfiguration().orientation) {
                C0126Bl.m206do(((Cgoto) cclass).f14216do, C0126Bl.f278if);
                c3289ll.f14192try = C0420Ou.f2680do.getResources().getConfiguration().orientation;
                return;
            }
            String[] strArr2 = C0126Bl.f278if;
            if (strArr2 == null || strArr2.length <= 0 || (c2667e1 = C0126Bl.f275if) == null || c2667e1.f12568do) {
                return;
            }
            C0126Bl.m206do(((Cgoto) cclass).f14216do, strArr2);
        }
    }

    /* renamed from: ll$new, reason: invalid class name */
    public class Cnew extends Cclass {

        /* renamed from: do, reason: not valid java name */
        public final CardView f14223do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final BarChartView f14224do;

        public Cnew(View view) {
            super(view);
            this.f14223do = (CardView) view.findViewById(R.id.cardViewRootGlobalDevicesChart);
            this.f14224do = (BarChartView) view.findViewById(R.id.barChartView);
        }
    }

    /* renamed from: ll$this, reason: invalid class name */
    public class Cthis extends Cclass {
        public Cthis(View view) {
            super(view);
        }
    }

    /* renamed from: ll$try, reason: invalid class name */
    public class Ctry extends Cclass {

        /* renamed from: case, reason: not valid java name */
        public final TextView f14225case;

        /* renamed from: do, reason: not valid java name */
        public final ImageView f14226do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final TextView f14227do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final CardView f14228do;

        /* renamed from: for, reason: not valid java name */
        public final TextView f14229for;

        /* renamed from: if, reason: not valid java name */
        public final TextView f14230if;

        /* renamed from: new, reason: not valid java name */
        public final TextView f14231new;

        /* renamed from: try, reason: not valid java name */
        public final TextView f14232try;

        public Ctry(View view) {
            super(view);
            this.f14228do = (CardView) view.findViewById(R.id.currentDeviceSummaryCardView);
            this.f14227do = (TextView) view.findViewById(R.id.currentDeviceMakeModelTitle);
            this.f14226do = (ImageView) view.findViewById(R.id.currentDeviceSummaryResultImage);
            this.f14230if = (TextView) view.findViewById(R.id.currentDeviceSummaryCountOfOS);
            this.f14229for = (TextView) view.findViewById(R.id.currentDeviceRootAvailableSummary);
            this.f14231new = (TextView) view.findViewById(R.id.currentDeviceSummaryMostPopularReasonInstallRoot);
            this.f14232try = (TextView) view.findViewById(R.id.currentDeviceLatestOSVersion);
            this.f14225case = (TextView) view.findViewById(R.id.currentDeviceManufInstallRootRank);
        }
    }

    public C3289ll(List<C3171jl> list) {
        f14183do = list;
        m4465const();
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c9, code lost:
    
        r1 = java.lang.String.valueOf((int) defpackage.VJ.m2593volatile(r7.get(r8).f12703if * 100.0f, 0, 5));
     */
    /* renamed from: default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7371default(defpackage.C3289ll.Cclass r16) {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3289ll.m7371default(ll$class):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bd  */
    /* renamed from: extends, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7372extends(defpackage.C3289ll.Cclass r17) {
        /*
            Method dump skipped, instructions count: 810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3289ll.m7372extends(ll$class):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x05db  */
    /* renamed from: final, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7373final(defpackage.C3289ll.Cclass r16, int r17) {
        /*
            Method dump skipped, instructions count: 1627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3289ll.m7373final(ll$class, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x018d  */
    /* renamed from: import, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m7374import(android.app.Activity r15) {
        /*
            Method dump skipped, instructions count: 686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3289ll.m7374import(android.app.Activity):void");
    }

    /* renamed from: native, reason: not valid java name */
    public static String m7375native() {
        F2<Integer, Integer> f2;
        List<C3171jl> list = f14183do;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (list != null && list.size() > 0 && (f2 = C0126Bl.f260do) != null && f2.f12632for > 0) {
            for (int i = 0; i < C0126Bl.f260do.f12632for; i++) {
                try {
                    if (str.isEmpty()) {
                        str = f14183do.get(C0126Bl.f260do.getOrDefault(Integer.valueOf(i), null).intValue()).f13778new;
                    } else {
                        String[] split = f14183do.get(C0126Bl.f260do.getOrDefault(Integer.valueOf(i), null).intValue()).f13778new.split("\\.");
                        String[] split2 = str.split("\\.");
                        if (Integer.parseInt(split[0]) > Integer.parseInt(split2[0])) {
                            str = f14183do.get(C0126Bl.f260do.getOrDefault(Integer.valueOf(i), null).intValue()).f13778new;
                        } else if (Integer.parseInt(split[0]) == Integer.parseInt(split2[0]) && split.length > 1 && split2.length > 1) {
                            if (Integer.parseInt(split[1]) > Integer.parseInt(split2[1])) {
                                str = f14183do.get(C0126Bl.f260do.getOrDefault(Integer.valueOf(i), null).intValue()).f13778new;
                            } else if (Integer.parseInt(split[1]) == Integer.parseInt(split2[1])) {
                                if (split.length > split2.length) {
                                    str = f14183do.get(C0126Bl.f260do.getOrDefault(Integer.valueOf(i), null).intValue()).f13778new;
                                } else if (split.length == 3 && split2.length == 3 && Integer.parseInt(split[2]) > Integer.parseInt(split2[2])) {
                                    str = f14183do.get(C0126Bl.f260do.getOrDefault(Integer.valueOf(i), null).intValue()).f13778new;
                                }
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return str;
    }

    /* renamed from: public, reason: not valid java name */
    public static String m7376public(String str) {
        if (C0126Bl.f271do == null) {
            List<C2827gl> list = C0126Bl.f269do;
            if (list == null) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            C0126Bl.m205const(list.size());
        }
        String[] strArr = C0126Bl.f271do;
        if (strArr != null && strArr.length != 0 && !str.isEmpty()) {
            try {
                String[] strArr2 = C0126Bl.f271do;
                if (strArr2 != null && strArr2.length > 0) {
                    for (int length = strArr2.length - 1; length >= 0; length--) {
                        if (str.equalsIgnoreCase(C0126Bl.f271do[length])) {
                            return String.valueOf(C0126Bl.f271do.length - length);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: return, reason: not valid java name */
    public static String m7377return(Activity activity, String str) {
        return (activity == null || str.isEmpty()) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : "latest_android_os_percent".contains(str) ? activity.getString(R.string.whyRootedReasonsPrettyLatestOS) : "remove_unwanted_applications_percent".contains(str) ? activity.getString(R.string.whyRootedReasonsPrettyBloatware) : "increase_speed_percent".contains(str) ? activity.getString(R.string.whyRootedReasonsPrettyIncreaseSpeed) : "use_wifi_tether_percent".contains(str) ? activity.getString(R.string.whyRootedReasonsPrettyWifiTether) : "block_advertisements_percent".contains(str) ? activity.getString(R.string.whyRootedReasonsPrettyRemoveAds) : "improve_battery_life_percent".contains(str) ? activity.getString(R.string.whyRootedReasonsPrettyExtBattery) : "use_custom_themes_percent".contains(str) ? activity.getString(R.string.whyRootedReasonsPrettyCustomTheme) : "other_percent".contains(str) ? activity.getString(R.string.whyRootedReasonsPrettyOtherReason) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: static, reason: not valid java name */
    public static String[] m7378static(Activity activity, C3171jl c3171jl) {
        if (activity != null && c3171jl != null) {
            try {
                double max = Math.max(Math.max(Math.max(Math.max(Math.max(Math.max(Math.max(Math.max(0.0d, c3171jl.f13766do), c3171jl.f13774if), c3171jl.f13771for), c3171jl.f13777new), c3171jl.f13779try), c3171jl.f13764case), c3171jl.f13769else), c3171jl.f13773goto);
                if (max == 0.0d) {
                    return null;
                }
                if (max == c3171jl.f13766do) {
                    return new String[]{m7377return(activity, "latest_android_os_percent"), String.valueOf(c3171jl.f13766do)};
                }
                if (max == c3171jl.f13774if) {
                    return new String[]{m7377return(activity, "remove_unwanted_applications_percent"), String.valueOf(c3171jl.f13774if)};
                }
                if (max == c3171jl.f13771for) {
                    return new String[]{m7377return(activity, "use_wifi_tether_percent"), String.valueOf(c3171jl.f13771for)};
                }
                if (max == c3171jl.f13777new) {
                    return new String[]{m7377return(activity, "improve_battery_life_percent"), String.valueOf(c3171jl.f13777new)};
                }
                if (max == c3171jl.f13779try) {
                    return new String[]{m7377return(activity, "increase_speed_percent"), String.valueOf(c3171jl.f13779try)};
                }
                if (max == c3171jl.f13764case) {
                    return new String[]{m7377return(activity, "block_advertisements_percent"), String.valueOf(c3171jl.f13764case)};
                }
                if (max == c3171jl.f13769else) {
                    return new String[]{m7377return(activity, "use_custom_themes_percent"), String.valueOf(c3171jl.f13769else)};
                }
                if (max == c3171jl.f13773goto) {
                    return new String[]{m7377return(activity, "other_percent"), String.valueOf(c3171jl.f13773goto)};
                }
                return null;
            } catch (Exception e) {
                e.getMessage();
            }
        }
        return null;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m7379super(TextView textView, String str) {
        try {
            int length = textView.getText().toString().substring(0, textView.getText().toString().indexOf(CertificateUtil.DELIMITER)).length() + 2;
            int length2 = str.length() + length;
            if (C0420Ou.f2680do.getString(R.string.globalResultRootDifficultyLevelEasy).equalsIgnoreCase(str)) {
                ((Spannable) textView.getText()).setSpan(new ForegroundColorSpan(C0420Ou.f2680do.getResources().getColor(R.color.easyDifficulty)), length, length2, 33);
            } else if (C0420Ou.f2680do.getString(R.string.globalResultRootDifficultyLevelMedium).equalsIgnoreCase(str)) {
                ((Spannable) textView.getText()).setSpan(new ForegroundColorSpan(C0420Ou.f2680do.getResources().getColor(R.color.mediumDifficulty)), length, length2, 33);
            } else if (C0420Ou.f2680do.getString(R.string.globalResultRootDifficultyLevelHard).equalsIgnoreCase(str)) {
                ((Spannable) textView.getText()).setSpan(new ForegroundColorSpan(C0420Ou.f2680do.getResources().getColor(R.color.hardDifficulty)), length, length2, 33);
            } else if (C0420Ou.f2680do.getString(R.string.globalResultRootDifficultyLevelExpert).equalsIgnoreCase(str)) {
                ((Spannable) textView.getText()).setSpan(new ForegroundColorSpan(C0420Ou.f2680do.getResources().getColor(R.color.expertDifficulty)), length, length2, 33);
            }
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m7380switch(Activity activity) {
        List<C3171jl> m213try;
        if (f14183do == null || C0126Bl.f270do == null || C0126Bl.f262do == null || activity == null || (m213try = C0126Bl.m213try(activity)) == null || m213try.size() == 0) {
            return;
        }
        C0126Bl.f276if = C0126Bl.m211new(activity, m213try);
        if (!f14183do.isEmpty()) {
            f14183do.clear();
            C0126Bl.f262do.invalidate();
            C0126Bl.f270do.m4462case();
        }
        f14183do.addAll(m213try);
        C0126Bl.f262do.invalidate();
        C0126Bl.f270do.m4462case();
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m7381throw() {
        F2<Integer, Integer> f2;
        int i = 0;
        if (f14183do == null || (f2 = C0126Bl.f260do) == null || f2.f12632for <= 0) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            F2<Integer, Integer> f22 = C0126Bl.f260do;
            if (i >= f22.f12632for) {
                return i2;
            }
            if (AppEventsConstants.EVENT_PARAM_VALUE_YES.equalsIgnoreCase(f14183do.get(f22.getOrDefault(Integer.valueOf(i), null).intValue()).f13780try)) {
                i2++;
            }
            i++;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static String m7382while(String str) {
        int intValue;
        try {
            intValue = Integer.valueOf(str).intValue();
        } catch (Exception unused) {
        }
        if (intValue == 1) {
            return C0420Ou.f2680do.getString(R.string.globalResultRootDifficultyLevelEasy);
        }
        if (intValue == 2) {
            return C0420Ou.f2680do.getString(R.string.globalResultRootDifficultyLevelMedium);
        }
        if (intValue == 3) {
            return C0420Ou.f2680do.getString(R.string.globalResultRootDifficultyLevelHard);
        }
        if (intValue == 4) {
            return C0420Ou.f2680do.getString(R.string.globalResultRootDifficultyLevelExpert);
        }
        return C0420Ou.f2680do.getString(R.string.errorUnknown);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: break */
    public final void mo1020break() {
        this.f14185do.m7024for(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: catch */
    public final void mo4463catch(RecyclerView.Cdefault cdefault) {
        cdefault.f7398do.clearAnimation();
    }

    @Override // defpackage.C3128j0.Cdo
    /* renamed from: do */
    public final int mo1021do() {
        return this.f14185do.f13620do.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: else */
    public final void mo1022else() {
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m7383finally(Cclass cclass) {
        Cnew cnew;
        BarChartView barChartView;
        if (C0420Ou.f2680do == null || !(!r0.getSharedPreferences("PrefFile", 0).getString("globalRootDeviceChartStats", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).isEmpty()) || (barChartView = (cnew = (Cnew) cclass).f14224do) == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, 0);
            CardView cardView = ((Cnew) cclass).f14223do;
            cardView.setLayoutParams(layoutParams);
            cardView.setVisibility(8);
            return;
        }
        cnew.f14223do.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        if (this.f14184case == -1) {
            this.f14184case = C0420Ou.f2680do.getResources().getConfiguration().orientation;
        }
        ArrayList<AbstractC3665s7> arrayList = ((ChartView) barChartView).f9153do;
        if (arrayList != null && !arrayList.isEmpty()) {
            barChartView.post(new Cfor(cclass));
            return;
        }
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        if (appCompatActivity != null) {
            J4 j4 = new J4();
            I4 i4 = new I4("Easy", 883.0f);
            int color = appCompatActivity.getResources().getColor(R.color.easyDifficulty);
            ((AbstractC3606r7) i4).f15216do = true;
            ((AbstractC3606r7) i4).f15214do = color;
            j4.m1006for(i4);
            I4 i42 = new I4("Medium", 920.0f);
            int color2 = appCompatActivity.getResources().getColor(R.color.mediumDifficulty);
            ((AbstractC3606r7) i42).f15216do = true;
            ((AbstractC3606r7) i42).f15214do = color2;
            j4.m1006for(i42);
            I4 i43 = new I4("Hard", 430.0f);
            int color3 = appCompatActivity.getResources().getColor(R.color.hardDifficulty);
            ((AbstractC3606r7) i43).f15216do = true;
            ((AbstractC3606r7) i43).f15214do = color3;
            j4.m1006for(i43);
            I4 i44 = new I4("Expert", 16.0f);
            int color4 = appCompatActivity.getResources().getColor(R.color.expertDifficulty);
            ((AbstractC3606r7) i44).f15216do = true;
            ((AbstractC3606r7) i44).f15214do = color4;
            j4.m1006for(i44);
            barChartView.m5237do(j4);
            com.db.chart.view.Cif cif = ((ChartView) barChartView).f9151do;
            ((com.db.chart.view.Cdo) cif).f9185do = true;
            com.db.chart.view.Cfor cfor = ((ChartView) barChartView).f9150do;
            ((com.db.chart.view.Cdo) cfor).f9185do = true;
            barChartView.m5236break(200);
            ChartView.Cif cif2 = ((ChartView) barChartView).f9149do;
            cif2.f9166do = 2.0f;
            cif2.f9171if = (int) VJ.m2592try(12.0f, appCompatActivity);
            ((com.db.chart.view.Cdo) cif).f9181do = r2;
            ((com.db.chart.view.Cdo) cfor).f9181do = r2;
            Resources resources = appCompatActivity.getResources();
            boolean m8345static = C3772tx.m8345static();
            int i = R.color.textColorPrimary;
            cif2.f9167do = resources.getColor(m8345static ? R.color.textColorPrimary : R.color.textColorPrimaryInverse);
            Resources resources2 = appCompatActivity.getResources();
            if (!C3772tx.m8345static()) {
                i = R.color.textColorPrimaryInverse;
            }
            cif2.f9172if = resources2.getColor(i);
            float m1034do = JH.m1034do(10.0f);
            BaseBarChartView.Cdo cdo = ((BaseBarChartView) barChartView).f9132do;
            cdo.f9135do = m1034do;
            cdo.f9137for = JH.m1034do(1.0f);
            Paint paint = new Paint();
            barChartView.f9141break = 3;
            cif2.f9173if = paint;
            C0126Bl.f264do = barChartView;
            C0126Bl.f261do = j4;
            C0126Bl.m210if(barChartView, j4);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: for */
    public final int mo1023for() {
        ArrayList<Integer> arrayList = C0126Bl.f276if;
        if (arrayList == null) {
            return 0;
        }
        return this.f14185do.m7027try() + arrayList.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:270:0x069e, code lost:
    
        r9 = java.lang.String.valueOf((int) defpackage.VJ.m2593volatile(r6.get(r8).f13203if * 100.0f, 0, 5));
     */
    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: goto */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo1024goto(androidx.recyclerview.widget.RecyclerView.Cdefault r18, int r19) {
        /*
            Method dump skipped, instructions count: 2729
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3289ll.mo1024goto(androidx.recyclerview.widget.RecyclerView$default, int):void");
    }

    @Override // defpackage.C3128j0.Cdo
    /* renamed from: if */
    public final void mo1025if(List<NativeAd> list) {
        this.f14185do.m7025if(this, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: new */
    public final long mo1026new(int i) {
        C3128j0.Cfor cfor = this.f14185do;
        int m7023do = cfor.m7023do(i);
        if (m7023do >= 0) {
            return m7023do - Long.MIN_VALUE;
        }
        int m7026new = cfor.m7026new(i);
        ArrayList<Integer> arrayList = C0126Bl.f276if;
        if (arrayList == null || m7026new < 0 || m7026new >= arrayList.size()) {
            return -1L;
        }
        return (C0126Bl.f276if.get(m7026new).intValue() << 32) ^ m7026new;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: this */
    public final RecyclerView.Cdefault mo1027this(RecyclerView recyclerView, int i) {
        if (i != 15) {
            return i == 1 ? new Celse(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rootglobaltitle, recyclerView, false)) : i == 2 ? new Ccase(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rankings_currentdevice_title, recyclerView, false)) : i == 3 ? new Ctry(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rankings_currentdevice_summary, recyclerView, false)) : i == 4 ? new Cbreak(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rootglobalitem, recyclerView, false)) : i == 5 ? new Cbreak(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rankings_alldevices_title, recyclerView, false)) : i == 6 ? new Ccatch(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rankings_popular_generic, recyclerView, false)) : i == 7 ? new Cgoto(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rootglobalhorstackbarchart, recyclerView, false)) : i == 8 ? new Ccatch(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rankings_popular_generic, recyclerView, false)) : i == 9 ? new Cgoto(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rootglobalhorstackbarchart, recyclerView, false)) : i == 10 ? new Ccatch(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rankings_popular_generic, recyclerView, false)) : i == 11 ? new Celse(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rootglobalindividualdevicesheader, recyclerView, false)) : i == 13 ? new Cthis(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rootglobalindividualdevicesgap, recyclerView, false)) : i == 14 ? new Cnew(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rootglobaldeviceschart, recyclerView, false)) : new Cbreak(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_rootglobalitem, recyclerView, false));
        }
        int i2 = C3128j0.Cnew.f13622this;
        return new C3128j0.Cnew(Cpublic.m7826new(recyclerView, R.layout.item_native_ad, recyclerView, false));
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m7384throws(Cclass cclass) {
        Cgoto cgoto;
        HorizontalStackBarChartView horizontalStackBarChartView;
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        if (appCompatActivity == null || !C0126Bl.m202case(appCompatActivity) || (horizontalStackBarChartView = (cgoto = (Cgoto) cclass).f14216do) == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, 0);
            CardView cardView = ((Cgoto) cclass).f14215do;
            cardView.setLayoutParams(layoutParams);
            cardView.setVisibility(8);
            return;
        }
        cgoto.f14215do.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        if (this.f14192try == -1) {
            this.f14192try = C0420Ou.f2680do.getResources().getConfiguration().orientation;
        }
        ArrayList<AbstractC3665s7> arrayList = ((ChartView) horizontalStackBarChartView).f9153do;
        if (arrayList != null && !arrayList.isEmpty()) {
            horizontalStackBarChartView.post(new Cif(cclass));
            return;
        }
        TextView textView = cgoto.f14214do;
        if (textView != null) {
            textView.setText(C0420Ou.f2680do.getString(R.string.globalResultRootAndVerChartTitle));
        }
        TextView textView2 = cgoto.f14218if;
        if (textView2 != null) {
            textView2.setText(C0420Ou.f2680do.getString(R.string.globalResultRootAndVerChartTitleDetails));
        }
        AppCompatActivity appCompatActivity2 = C0420Ou.f2680do;
        List<C2709el> list = C0126Bl.f277if;
        if (list == null || list.size() == 0 || appCompatActivity2 == null) {
            return;
        }
        int size = C0126Bl.f277if.size();
        C0126Bl.f278if = new String[size];
        int i = size - 1;
        int i2 = i;
        int i3 = 0;
        while (i2 >= 0) {
            C0126Bl.f278if[i2] = C0126Bl.f277if.get(i3).f12701do;
            i2--;
            i3++;
        }
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 4, size);
        int i4 = 0;
        while (i >= 0) {
            float[] fArr2 = fArr[0];
            float m2593volatile = VJ.m2593volatile(C0126Bl.f277if.get(i4).f12703if * 100.0f, 2, 5);
            fArr2[i] = m2593volatile;
            float[] fArr3 = fArr[1];
            float m2593volatile2 = VJ.m2593volatile(C0126Bl.f277if.get(i4).f12702for * 100.0f, 2, 5);
            fArr3[i] = m2593volatile2;
            float f = m2593volatile + m2593volatile2;
            float[] fArr4 = fArr[2];
            float m2593volatile3 = VJ.m2593volatile(C0126Bl.f277if.get(i4).f12704new * 100.0f, 2, 5);
            fArr4[i] = m2593volatile3;
            float[] fArr5 = fArr[3];
            float m2593volatile4 = VJ.m2593volatile(C0126Bl.f277if.get(i4).f12705try * 100.0f, 2, 5);
            fArr5[i] = m2593volatile4;
            float f2 = f + m2593volatile3 + m2593volatile4;
            if (f2 > 100.0f) {
                float m2593volatile5 = VJ.m2593volatile(f2 - 100.0f, 2, 0);
                float[] fArr6 = fArr[0];
                float f3 = fArr6[i];
                if (f3 > m2593volatile5) {
                    fArr6[i] = f3 - m2593volatile5;
                } else {
                    float[] fArr7 = fArr[1];
                    float f4 = fArr7[i];
                    if (f4 > m2593volatile5) {
                        fArr7[i] = f4 - m2593volatile5;
                    } else {
                        fArr6[i] = VJ.m2593volatile(C0126Bl.f277if.get(i4).f12703if * 100.0f, 2, 1);
                        fArr[1][i] = VJ.m2593volatile(C0126Bl.f277if.get(i4).f12702for * 100.0f, 2, 1);
                        fArr[2][i] = VJ.m2593volatile(C0126Bl.f277if.get(i4).f12704new * 100.0f, 2, 1);
                        fArr[3][i] = VJ.m2593volatile(C0126Bl.f277if.get(i4).f12705try * 100.0f, 2, 1);
                    }
                }
            }
            i4++;
            i--;
        }
        J4 j4 = new J4(C0126Bl.f278if, fArr[0]);
        j4.m1007new(appCompatActivity2.getResources().getColor(R.color.easyDifficulty));
        horizontalStackBarChartView.m5237do(j4);
        J4 j42 = new J4(C0126Bl.f278if, fArr[1]);
        j42.m1007new(appCompatActivity2.getResources().getColor(R.color.mediumDifficulty));
        horizontalStackBarChartView.m5237do(j42);
        J4 j43 = new J4(C0126Bl.f278if, fArr[2]);
        j43.m1007new(appCompatActivity2.getResources().getColor(R.color.hardDifficulty));
        horizontalStackBarChartView.m5237do(j43);
        J4 j44 = new J4(C0126Bl.f278if, fArr[3]);
        j44.m1007new(appCompatActivity2.getResources().getColor(R.color.expertDifficulty));
        horizontalStackBarChartView.m5237do(j44);
        com.db.chart.view.Cif cif = ((ChartView) horizontalStackBarChartView).f9151do;
        ((com.db.chart.view.Cdo) cif).f9185do = true;
        com.db.chart.view.Cfor cfor = ((ChartView) horizontalStackBarChartView).f9150do;
        ((com.db.chart.view.Cdo) cfor).f9185do = true;
        horizontalStackBarChartView.m5236break(20);
        ChartView.Cif cif2 = ((ChartView) horizontalStackBarChartView).f9149do;
        cif2.f9166do = 2.0f;
        cif2.f9171if = (int) VJ.m2592try(12.0f, appCompatActivity2);
        ((com.db.chart.view.Cdo) cif).f9181do = r6;
        ((com.db.chart.view.Cdo) cfor).f9181do = r6;
        Resources resources = appCompatActivity2.getResources();
        boolean m8345static = C3772tx.m8345static();
        int i5 = R.color.textColorPrimary;
        cif2.f9167do = resources.getColor(m8345static ? R.color.textColorPrimary : R.color.textColorPrimaryInverse);
        Resources resources2 = appCompatActivity2.getResources();
        if (!C3772tx.m8345static()) {
            i5 = R.color.textColorPrimaryInverse;
        }
        cif2.f9172if = resources2.getColor(i5);
        float m1034do = JH.m1034do(10.0f);
        BaseBarChartView.Cdo cdo = ((BaseBarChartView) horizontalStackBarChartView).f9132do;
        cdo.f9135do = m1034do;
        cdo.f9137for = JH.m1034do(1.0f);
        Paint paint = new Paint();
        horizontalStackBarChartView.f9141break = 2;
        cif2.f9173if = paint;
        ((ChartView) horizontalStackBarChartView).f9146do = new C0104Al(cgoto.f14217for, cgoto.f14219new, cgoto.f14220try, cgoto.f14213case);
        C0126Bl.f274if = horizontalStackBarChartView;
        C0126Bl.m206do(horizontalStackBarChartView, C0126Bl.f278if);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: try */
    public final int mo1028try(int i) {
        C3128j0.Cfor cfor = this.f14185do;
        if (cfor.m7023do(i) >= 0) {
            return 15;
        }
        return C0126Bl.f276if.get(cfor.m7026new(i)).intValue();
    }
}

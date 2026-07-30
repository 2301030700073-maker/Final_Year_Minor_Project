package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.joeykrim.rootcheck.MainActivity;
import defpackage.C3717t0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: Jk, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0301Jk {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static AdView f1676do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Handler f1675do = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final List<String> f1679do = Arrays.asList("B3EEABB8EE11C2BE770B684D95219ECB", "D3FEA255A772435A334F4018F8178B4A");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ArrayList f1678do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f1680do = false;

    /* renamed from: if, reason: not valid java name */
    public static boolean f1682if = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static InterstitialAd f1677do = null;

    /* renamed from: for, reason: not valid java name */
    public static boolean f1681for = false;

    /* renamed from: do, reason: not valid java name */
    public static long f1674do = -1;

    /* renamed from: new, reason: not valid java name */
    public static boolean f1683new = false;

    /* renamed from: break, reason: not valid java name */
    public static boolean m1047break(Activity activity) {
        return activity == null || activity.isFinishing() || activity.isDestroyed();
    }

    /* renamed from: case, reason: not valid java name */
    public static void m1048case() {
        AdView adView = f1676do;
        if (adView == null) {
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) adView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(f1676do);
            }
        } catch (Exception unused) {
        }
        try {
            f1676do.destroy();
        } catch (Exception unused2) {
        }
        f1676do = null;
    }

    /* renamed from: catch, reason: not valid java name */
    public static synchronized boolean m1049catch() {
        boolean z;
        synchronized (C0301Jk.class) {
            z = f1682if;
        }
        return z;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m1050do() {
        if (MainActivity.f12240new < 5 || C3772tx.m8339native() < 8 || C3772tx.m8339native() % 2 != 0) {
            return false;
        }
        if (C3772tx.m8338import() != 0) {
            if (Ny.f2451do < 4) {
                return false;
            }
            if (C3772tx.m8343public() != null ? C3772tx.m8343public().getBoolean("rate_dialog_response_0", false) : false) {
                return false;
            }
        }
        long j = f1674do;
        return (j == -1 || j >= 2) && !C0830cn.f8635do;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m1051else(boolean z) {
        ArrayList arrayList;
        synchronized (C0301Jk.class) {
            f1682if = z;
            f1680do = false;
            ArrayList arrayList2 = f1678do;
            arrayList = new ArrayList(arrayList2);
            arrayList2.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m1057try((Runnable) it.next());
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1052for(Activity activity) {
        if (m1047break(activity) || f1677do != null || f1683new) {
            return;
        }
        f1683new = true;
        if (!C0170Dl.m381if()) {
            C0170Dl.m383try(new EH(activity, 7), new RunnableC2610d2(2));
        } else if (m1047break(activity)) {
            f1683new = false;
        } else {
            m1056this(activity, new RunnableC0651Zj(activity, 11));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static AdSize m1053goto(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return ((int) (((float) displayMetrics.widthPixels) / displayMetrics.density)) >= 728 ? AdSize.LEADERBOARD : AdSize.BANNER;
    }

    /* renamed from: if, reason: not valid java name */
    public static AdRequest m1054if() {
        Bundle bundle = new Bundle();
        if (C3772tx.m8345static()) {
            bundle.putString("color_bg", "000000");
            bundle.putString("color_bg_top", "000000");
            bundle.putString("color_border", "FFFFFF");
            bundle.putString("color_link", "000080");
            bundle.putString("color_text", "FFFFFF");
            bundle.putString("color_url", "008000");
        } else {
            bundle.putString("color_bg", "FFFFFF");
            bundle.putString("color_bg_top", "FFFFFF");
            bundle.putString("color_border", "000000");
            bundle.putString("color_link", "000080");
            bundle.putString("color_text", "000000");
            bundle.putString("color_url", "008000");
        }
        return new AdRequest.Builder().build();
    }

    /* renamed from: new, reason: not valid java name */
    public static String m1055new() {
        C3717t0.Cif cif;
        String str = null;
        try {
            cif = C3717t0.m8191for("|j7JJ7Qf+LK1FAb62Oak6jA==:TsjMSwCHvE1L2D47AbfE6otfZK3Uchb5y6mAzJ+1yWI=");
        } catch (Exception unused) {
            cif = null;
        }
        try {
            str = C3717t0.m8190do(new C3717t0.Cdo("xDpl90+rFwgzIMcwvc1Osw==:ZN1NXaTJPwpPwB1hVsAmhVQ4lEoMyXhdRfLvWn8j6lY=:dboSxwlIjto9QyqTTQgcjtLBQScPLVgiTd+6jg+njVweb/ivOZQw7bdJmQRdQt7y"), cif);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        return str != null ? str : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m1056this(Activity activity, Runnable runnable) {
        boolean z;
        if (m1047break(activity)) {
            return;
        }
        synchronized (C0301Jk.class) {
            if (f1682if) {
                m1057try(runnable);
                return;
            }
            f1678do.add(runnable);
            if (f1680do) {
                z = false;
            } else {
                z = true;
                f1680do = true;
            }
            if (z) {
                new Thread(new RunnableC3137j9(activity.getApplicationContext(), 5)).start();
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m1057try(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            f1675do.post(runnable);
        }
    }
}

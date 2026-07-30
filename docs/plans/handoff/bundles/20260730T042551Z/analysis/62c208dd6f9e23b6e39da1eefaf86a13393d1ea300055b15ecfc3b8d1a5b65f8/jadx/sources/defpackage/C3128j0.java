package defpackage;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.joeykrim.rootcheck.R;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.IntSupplier;
import java.util.function.Supplier;

/* renamed from: j0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3128j0 {

    /* renamed from: do, reason: not valid java name */
    public static final Handler f13617do = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final HashSet f13618do = new HashSet();

    /* renamed from: if, reason: not valid java name */
    public static final HashSet f13619if = new HashSet();

    /* renamed from: j0$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do */
        int mo1021do();

        /* renamed from: if */
        void mo1025if(List<NativeAd> list);
    }

    /* renamed from: j0$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final ArrayList f13620do = new ArrayList();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final IntSupplier f13621do;

        public Cfor(IntSupplier intSupplier) {
            this.f13621do = intSupplier;
        }

        /* renamed from: do, reason: not valid java name */
        public final int m7023do(int i) {
            int i2;
            if (i >= 3 && i % 3 == 0 && (i / 3) - 1 < m7027try()) {
                return i2;
            }
            return -1;
        }

        /* renamed from: for, reason: not valid java name */
        public final void m7024for(RecyclerView.Ctry<?> ctry) {
            int m7027try = m7027try();
            ArrayList arrayList = this.f13620do;
            if (arrayList.isEmpty() && m7027try == 0) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                NativeAd nativeAd = (NativeAd) it.next();
                Handler handler = C3128j0.f13617do;
                if (nativeAd != null) {
                    try {
                        nativeAd.destroy();
                    } catch (Exception unused) {
                    }
                }
            }
            arrayList.clear();
            if (m7027try == 1) {
                ctry.f7469do.m4374new();
            } else if (m7027try > 1) {
                ctry.m4462case();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m7025if(RecyclerView.Ctry<?> ctry, List<NativeAd> list) {
            if (list.isEmpty()) {
                return;
            }
            int m7027try = m7027try();
            this.f13620do.addAll(list);
            int m7027try2 = m7027try();
            if (m7027try2 == m7027try) {
                return;
            }
            if (m7027try == 0 && m7027try2 == 1) {
                ctry.f7469do.m4372for();
            } else {
                ctry.m4462case();
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final int m7026new(int i) {
            return i - Math.min(i / 3, m7027try());
        }

        /* renamed from: try, reason: not valid java name */
        public final int m7027try() {
            ArrayList arrayList = this.f13620do;
            if (arrayList.isEmpty()) {
                return 0;
            }
            int size = arrayList.size();
            int asInt = this.f13621do.getAsInt();
            Handler handler = C3128j0.f13617do;
            return Math.min(size, asInt >= 2 ? Math.max(0, (asInt - 2) / 2) : 0);
        }
    }

    /* renamed from: j0$if, reason: invalid class name */
    public interface Cif {
    }

    /* renamed from: j0$new, reason: invalid class name */
    public static final class Cnew extends RecyclerView.Cdefault {

        /* renamed from: this, reason: not valid java name */
        public static final /* synthetic */ int f13622this = 0;

        /* renamed from: do, reason: not valid java name */
        public final ImageView f13623do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final TextView f13624do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final NativeAdView f13625do;

        /* renamed from: for, reason: not valid java name */
        public final TextView f13626for;

        /* renamed from: if, reason: not valid java name */
        public final TextView f13627if;

        /* renamed from: new, reason: not valid java name */
        public final TextView f13628new;

        public Cnew(View view) {
            super(view);
            this.f13625do = (NativeAdView) view.findViewById(R.id.native_ad_view);
            this.f13623do = (ImageView) view.findViewById(R.id.ad_app_icon);
            this.f13624do = (TextView) view.findViewById(R.id.ad_headline);
            this.f13627if = (TextView) view.findViewById(R.id.ad_body);
            this.f13626for = (TextView) view.findViewById(R.id.ad_advertiser);
            this.f13628new = (TextView) view.findViewById(R.id.ad_call_to_action);
        }
    }

    /* renamed from: j0$try, reason: invalid class name */
    public interface Ctry {
    }

    /* renamed from: case, reason: not valid java name */
    public static void m7016case(int i, Activity activity, Ctry ctry, String str, List list) {
        if (i <= 0 || C0830cn.f8635do || activity.isFinishing() || activity.isDestroyed()) {
            m7019for(activity, str, list, ctry);
        } else {
            C0301Jk.m1056this(activity, new RunnableC0359Md(activity, str, new C2843h0(i, activity, ctry, str, list), 2));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7017do(Cnew cnew, NativeAd nativeAd) {
        NativeAdView nativeAdView = cnew.f13625do;
        TextView textView = cnew.f13624do;
        nativeAdView.setHeadlineView(textView);
        TextView textView2 = cnew.f13627if;
        nativeAdView.setBodyView(textView2);
        TextView textView3 = cnew.f13628new;
        nativeAdView.setCallToActionView(textView3);
        ImageView imageView = cnew.f13623do;
        nativeAdView.setIconView(imageView);
        TextView textView4 = cnew.f13626for;
        nativeAdView.setAdvertiserView(textView4);
        m7018else(textView, nativeAd.getHeadline());
        m7018else(textView2, nativeAd.getBody());
        m7018else(textView3, nativeAd.getCallToAction());
        m7018else(textView4, nativeAd.getAdvertiser());
        NativeAd.Image icon = nativeAd.getIcon();
        if (icon == null || icon.getDrawable() == null) {
            imageView.setImageDrawable(null);
            imageView.setVisibility(8);
        } else {
            imageView.setImageDrawable(icon.getDrawable());
            imageView.setVisibility(0);
        }
        nativeAdView.setNativeAd(nativeAd);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m7018else(TextView textView, String str) {
        if (str != null) {
            textView.setText(str);
            textView.setVisibility(0);
        } else {
            textView.setText((CharSequence) null);
            textView.setVisibility(8);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7019for(Activity activity, String str, List<NativeAd> list, Ctry ctry) {
        f13618do.remove(str);
        if (!C0830cn.f8635do && !activity.isFinishing() && !activity.isDestroyed()) {
            if (!list.isEmpty()) {
                try {
                    C3210kN.m7252if("AdMobNative", "Loaded");
                } catch (Exception unused) {
                }
            }
            Objects.requireNonNull(ctry);
            m7020if(new C2666e0(ctry, 1), list);
            return;
        }
        if (list != null) {
            for (NativeAd nativeAd : list) {
                if (nativeAd != null) {
                    try {
                        nativeAd.destroy();
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        Objects.requireNonNull(ctry);
        m7020if(new C2784g0(ctry), Collections.emptyList());
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> void m7020if(Consumer<T> consumer, T t) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            consumer.accept(t);
        } else {
            f13617do.post(new RunnableC2668e2(5, consumer, t));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static <A extends Cdo> void m7021new(Activity activity, String str, Supplier<A> supplier, IntSupplier intSupplier) {
        A a = supplier.get();
        if (a == null) {
            return;
        }
        int asInt = intSupplier.getAsInt();
        int max = asInt >= 2 ? Math.max(0, (asInt - 2) / 2) : 0;
        int mo1021do = a.mo1021do();
        if (mo1021do >= max) {
            return;
        }
        m7022try(activity, str, max - mo1021do, new C2876hb(a, supplier));
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7022try(final Activity activity, final String str, final int i, final Ctry ctry) {
        int i2 = 0;
        if (i > 0 && !C0830cn.f8635do && !activity.isFinishing() && !activity.isDestroyed()) {
            HashSet hashSet = f13618do;
            if (!hashSet.contains(str)) {
                Runnable runnable = new Runnable() { // from class: f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3128j0.m7022try(activity, str, i, ctry);
                    }
                };
                FE fe = new FE(ctry, 5);
                if (!C0170Dl.m381if()) {
                    if (f13619if.add(str)) {
                        C0170Dl.m383try(new Pz(6, str, runnable), new RunnableC0651Zj(str, 10));
                    } else {
                        fe.run();
                    }
                    i2 = 1;
                }
                if (i2 != 0) {
                    return;
                }
                hashSet.add(str);
                m7016case(i, activity, ctry, str, new ArrayList(i));
                return;
            }
        }
        Objects.requireNonNull(ctry);
        m7020if(new C2666e0(ctry, i2), Collections.emptyList());
    }
}

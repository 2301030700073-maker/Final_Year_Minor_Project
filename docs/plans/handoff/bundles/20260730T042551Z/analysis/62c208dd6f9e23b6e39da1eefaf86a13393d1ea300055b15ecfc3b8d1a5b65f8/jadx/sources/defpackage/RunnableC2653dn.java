package defpackage;

import android.app.Activity;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: dn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2653dn implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f12542break;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f12543for;

    /* renamed from: dn$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f12544do;

        public Cdo(Activity activity) {
            this.f12544do = activity;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RunnableC2653dn runnableC2653dn = RunnableC2653dn.this;
            int i = runnableC2653dn.f12543for;
            String str = runnableC2653dn.f12542break;
            Activity activity = this.f12544do;
            if (i == 2 && activity != null && str != null && !"AOEB".equals(str)) {
                VJ.m2574instanceof(activity, activity.getString(R.string.gpiabThanksPurchase));
            }
            C0830cn.f8635do = true;
            C0301Jk.m1048case();
            if (C0301Jk.f1677do != null) {
                C0301Jk.f1677do = null;
            }
            if (!C0420Ou.m1693else() && activity != null && C0420Ou.f2682do != null && C0420Ou.f2683do != null) {
                C0420Ou.m1695goto((AppCompatActivity) activity);
                C0420Ou.f2683do.m5951super(C0420Ou.f2682do, false);
                C0420Ou.m1694for(activity);
            }
            EA m440new = EA.m440new(activity);
            if (m440new != null) {
                m440new.m443goto();
            }
            if (activity != null) {
                AppCompatActivity appCompatActivity = (AppCompatActivity) activity;
                if (appCompatActivity.m3231throw() != null) {
                    appCompatActivity.m3231throw().mo3216final(activity.getString(R.string.mainTitleRCP));
                }
            }
            String[] strArr = O2.f2491for;
            C0830cn.m4943final(VJ.m2588this(runnableC2653dn.f12543for == 1 ? strArr[1] : strArr[2]), "S: true. " + str);
        }
    }

    public RunnableC2653dn(int i, String str) {
        this.f12543for = i;
        this.f12542break = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        appCompatActivity.runOnUiThread(new Cdo(appCompatActivity));
    }
}

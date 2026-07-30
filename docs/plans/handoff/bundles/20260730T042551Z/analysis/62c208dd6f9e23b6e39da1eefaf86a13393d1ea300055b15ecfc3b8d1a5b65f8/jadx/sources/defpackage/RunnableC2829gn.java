package defpackage;

import android.app.Activity;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: gn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2829gn implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f13211break;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f13212for;

    /* renamed from: gn$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f13213do;

        public Cdo(Activity activity) {
            this.f13213do = activity;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RunnableC2829gn runnableC2829gn = RunnableC2829gn.this;
            int i = runnableC2829gn.f13212for;
            Activity activity = this.f13213do;
            if (i == 2 && C0420Ou.f2680do != null) {
                VJ.m2574instanceof(activity, activity.getString(R.string.gpiabThanksPurchase));
            }
            if (!C0420Ou.m1688case() && activity != null && C0420Ou.f2682do != null && C0420Ou.f2683do != null) {
                C0420Ou.m1695goto((AppCompatActivity) activity);
                C0420Ou.f2683do.m5951super(C0420Ou.f2682do, false);
                C0420Ou.m1694for(activity);
            }
            EA m440new = EA.m440new(activity);
            if (m440new != null) {
                m440new.m443goto();
            }
            String[] strArr = O2.f2491for;
            C0830cn.m4943final(VJ.m2588this(runnableC2829gn.f13212for == 1 ? strArr[1] : strArr[2]), "S: true. " + runnableC2829gn.f13211break);
        }
    }

    public RunnableC2829gn(int i, String str) {
        this.f13212for = i;
        this.f13211break = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        appCompatActivity.runOnUiThread(new Cdo(appCompatActivity));
    }
}

package defpackage;

import android.app.Activity;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: en, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2711en implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f12709break;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f12710for;

    /* renamed from: en$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f12711do;

        public Cdo(Activity activity) {
            this.f12711do = activity;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Activity activity;
            RunnableC2711en runnableC2711en = RunnableC2711en.this;
            if (runnableC2711en.f12710for == 2 && (activity = this.f12711do) != null) {
                VJ.m2574instanceof(activity, activity.getString(R.string.gpiabThanksPurchase));
                VJ.m2574instanceof(activity, activity.getString(R.string.gpiabActionRemoveAds));
            }
            C0301Jk.m1048case();
            if (C0301Jk.f1677do != null) {
                C0301Jk.f1677do = null;
            }
            String[] strArr = O2.f2491for;
            C0830cn.m4943final(VJ.m2588this(runnableC2711en.f12710for == 1 ? strArr[1] : strArr[2]), "S: true. " + runnableC2711en.f12709break);
        }
    }

    public RunnableC2711en(int i, String str) {
        this.f12710for = i;
        this.f12709break = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        appCompatActivity.runOnUiThread(new Cdo(appCompatActivity));
    }
}

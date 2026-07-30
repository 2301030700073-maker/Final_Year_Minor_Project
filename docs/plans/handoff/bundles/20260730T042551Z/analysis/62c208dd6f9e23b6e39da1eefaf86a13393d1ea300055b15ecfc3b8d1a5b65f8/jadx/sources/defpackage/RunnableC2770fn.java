package defpackage;

import android.app.Activity;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: fn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC2770fn implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f12985break;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f12986for;

    /* renamed from: fn$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f12987do;

        public Cdo(Activity activity) {
            this.f12987do = activity;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RunnableC2770fn runnableC2770fn = RunnableC2770fn.this;
            int i = runnableC2770fn.f12986for;
            Activity activity = this.f12987do;
            if (i == 2 && activity != null) {
                VJ.m2574instanceof(activity, activity.getString(R.string.gpiabThanksPurchase));
            }
            int i2 = C0420Ou.f2678do;
            if (!(i2 == 5 || i2 == 4) && activity != null && C0420Ou.f2682do != null && C0420Ou.f2683do != null) {
                C0420Ou.m1695goto((AppCompatActivity) activity);
                C0420Ou.f2683do.m5951super(C0420Ou.f2682do, false);
                C0420Ou.m1694for(activity);
                C0420Ou.f2683do.post(new RunnableC0711an());
            }
            String[] strArr = O2.f2491for;
            C0830cn.m4943final(VJ.m2588this(runnableC2770fn.f12986for == 1 ? strArr[1] : strArr[2]), "S: true. " + runnableC2770fn.f12985break);
        }
    }

    public RunnableC2770fn(int i, String str) {
        this.f12986for = i;
        this.f12985break = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        appCompatActivity.runOnUiThread(new Cdo(appCompatActivity));
    }
}

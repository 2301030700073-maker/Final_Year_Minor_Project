package defpackage;

import android.app.Activity;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: bn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC0771bn implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f8447break;

    /* renamed from: bn$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f8448do;

        public Cdo(Activity activity) {
            this.f8448do = activity;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Activity activity = this.f8448do;
            if (activity != null) {
                VJ.m2574instanceof(activity, activity.getString(R.string.gpiabThanksPurchase));
            }
            C0420Ou.m1691const(C0830cn.f8640new, C0830cn.f8637for, C0830cn.f8638if, C0830cn.f8635do);
            String str = RunnableC0771bn.this.f8447break;
            String[] strArr = C0830cn.f8636do;
            boolean equals = str.equals(VJ.m2557break(strArr[2]));
            String[] strArr2 = C0830cn.f8639if;
            if ((equals || str.equals(VJ.m2559catch(strArr2[9])) || str.equals(VJ.m2559catch(strArr2[10])) || str.equals(VJ.m2559catch(strArr2[11]))) && activity != null) {
                VJ.m2574instanceof(activity, "Remove Ads already purchased. The banner, native, and interstitial ads have been removed.If the ads are still visible, please send a screenshot of them to the developer: rootchecker@joeykrim.com");
            }
            if ((str.equals(VJ.m2557break(strArr[3])) || str.equals(VJ.m2559catch(strArr2[6])) || str.equals(VJ.m2559catch(strArr2[7])) || str.equals(VJ.m2559catch(strArr2[8]))) && activity != null) {
                VJ.m2574instanceof(activity, "Verify BusyBox already purchased. If the \"Verify BusyBox\" tab is not visible, please send a screenshot to the developer: rootchecker@joeykrim.com");
            }
            if ((str.equals(VJ.m2557break(strArr[4])) || str.equals(VJ.m2557break(strArr[9])) || str.equals(VJ.m2559catch(strArr2[0])) || str.equals(VJ.m2559catch(strArr2[1])) || str.equals(VJ.m2559catch(strArr2[2]))) && activity != null) {
                VJ.m2574instanceof(activity, "Advanced Verify Root already purchased. If the \"Advanced Verify Root\" tab is not visible, please send a screenshot to the developer: rootchecker@joeykrim.com");
            }
            if ((str.equals(VJ.m2557break(strArr[5])) || str.equals(VJ.m2557break(strArr[7])) || str.equals(VJ.m2557break(strArr[8])) || str.equals(VJ.m2559catch(strArr2[3])) || str.equals(VJ.m2559catch(strArr2[4])) || str.equals(VJ.m2559catch(strArr2[5]))) && activity != null) {
                VJ.m2574instanceof(activity, "Bundle of items already purchased. If the \"Advanced Verify Root\" tab is not visible, please send a screenshot to the developer: rootchecker@joeykrim.com");
            }
        }
    }

    public RunnableC0771bn(String str) {
        this.f8447break = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        appCompatActivity.runOnUiThread(new Cdo(appCompatActivity));
    }
}

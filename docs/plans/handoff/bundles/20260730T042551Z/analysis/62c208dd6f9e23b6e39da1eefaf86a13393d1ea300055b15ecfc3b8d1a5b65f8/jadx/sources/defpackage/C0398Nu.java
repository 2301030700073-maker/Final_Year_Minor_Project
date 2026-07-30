package defpackage;

import androidx.appcompat.app.AppCompatActivity;
import androidx.viewpager.widget.ViewPager;
import com.db.chart.view.HorizontalStackBarChartView;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.joeykrim.rootcheck.MainActivity;
import java.util.ArrayList;

/* renamed from: Nu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0398Nu extends ViewPager.Cbreak {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatActivity f2449do;

    public C0398Nu(AppCompatActivity appCompatActivity) {
        this.f2449do = appCompatActivity;
    }

    @Override // androidx.viewpager.widget.ViewPager.Cgoto
    /* renamed from: new, reason: not valid java name */
    public final void mo1557new(int i) {
        ViewPager viewPager;
        boolean z;
        EA m440new;
        AppCompatActivity appCompatActivity;
        InterstitialAd interstitialAd;
        AppCompatActivity appCompatActivity2;
        J4 j4;
        C2667e1 c2667e1;
        String[] strArr;
        C2667e1 c2667e12;
        String[] strArr2;
        C2667e1 c2667e13;
        if (C0420Ou.f2680do == null || (viewPager = C0420Ou.f2682do) == null || viewPager.mo4678catch() == null) {
            return;
        }
        C3210kN.m7249else(C0420Ou.f2680do, i);
        String charSequence = C0420Ou.f2682do.mo4678catch().mo1700else(i).toString();
        if ("RANKINGS".equalsIgnoreCase(charSequence)) {
            HorizontalStackBarChartView horizontalStackBarChartView = C0126Bl.f265do;
            if (horizontalStackBarChartView != null && (strArr2 = C0126Bl.f271do) != null && strArr2.length > 0 && ((c2667e13 = C0126Bl.f266do) == null || !c2667e13.f12568do)) {
                C0126Bl.m208for(horizontalStackBarChartView, strArr2);
            }
            HorizontalStackBarChartView horizontalStackBarChartView2 = C0126Bl.f274if;
            if (horizontalStackBarChartView2 != null && (strArr = C0126Bl.f278if) != null && strArr.length > 0 && ((c2667e12 = C0126Bl.f275if) == null || !c2667e12.f12568do)) {
                C0126Bl.m206do(horizontalStackBarChartView2, strArr);
            }
            if (C0126Bl.f264do != null && (j4 = C0126Bl.f261do) != null && j4.m8055if() > 0 && ((c2667e1 = C0126Bl.f272for) == null || !c2667e1.f12568do)) {
                C0126Bl.m210if(C0126Bl.f264do, C0126Bl.f261do);
            }
        }
        boolean z2 = false;
        if (C0420Ou.f2684do != null && !charSequence.isEmpty()) {
            for (int i2 = 0; i2 < C0420Ou.f2684do.size(); i2++) {
                if (charSequence.equalsIgnoreCase(C0420Ou.f2684do.get(i2))) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            C0420Ou.m1698this(C0420Ou.f2680do);
            ArrayList<String> arrayList = C0420Ou.f2684do;
            if (arrayList != null) {
                int size = arrayList.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    } else if (charSequence.equalsIgnoreCase(C0420Ou.f2684do.get(size))) {
                        C0420Ou.f2684do.remove(size);
                    } else {
                        C0420Ou.m1687break(C0420Ou.f2684do.get(size));
                    }
                }
            }
        }
        if ((C0420Ou.m1688case() || C0420Ou.m1693else()) && "ROOT BASICS".equalsIgnoreCase(charSequence) && (m440new = EA.m440new(this.f2449do)) != null) {
            m440new.m443goto();
        }
        if (C0301Jk.m1050do() && ((int) (System.currentTimeMillis() - MainActivity.f12237for)) / 1000 >= 4 && !C0301Jk.f1681for) {
            z2 = true;
        }
        if (!z2 || (interstitialAd = C0301Jk.f1677do) == null || (appCompatActivity2 = C0420Ou.f2680do) == null) {
            if (C0301Jk.m1050do() && C0301Jk.f1677do == null && (appCompatActivity = C0420Ou.f2680do) != null) {
                C0301Jk.m1052for(appCompatActivity);
            }
        } else {
            interstitialAd.show(appCompatActivity2);
        }
    }
}

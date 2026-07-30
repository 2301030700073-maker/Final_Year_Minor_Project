package defpackage;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Views.CustomNestedScrollView;

/* renamed from: vJ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3854vJ extends Q4 {

    /* renamed from: do, reason: not valid java name */
    public static TextView f16058do;

    /* renamed from: for, reason: not valid java name */
    public static TextView f16059for;

    /* renamed from: if, reason: not valid java name */
    public static TextView f16060if;

    /* renamed from: vJ$case, reason: invalid class name */
    public class Ccase implements View.OnClickListener {
        public Ccase() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3854vJ c3854vJ = C3854vJ.this;
            if (c3854vJ.getActivity() != null) {
                if (O4.m1615native()) {
                    VJ.m2572implements(c3854vJ.getActivity(), 2);
                } else {
                    VJ.m2572implements(c3854vJ.getActivity(), -1);
                }
            }
        }
    }

    /* renamed from: vJ$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(C3854vJ.this.getActivity(), 19, "U-IAP-Bundle", 5);
        }
    }

    /* renamed from: vJ$else, reason: invalid class name */
    public class Celse implements View.OnClickListener {
        public Celse() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3854vJ c3854vJ = C3854vJ.this;
            if (c3854vJ.getActivity() != null) {
                if (O4.m1615native()) {
                    VJ.m2572implements(c3854vJ.getActivity(), 3);
                } else {
                    VJ.m2572implements(c3854vJ.getActivity(), -1);
                }
            }
        }
    }

    /* renamed from: vJ$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(C3854vJ.this.getActivity(), 21, "U-IAP-VB", 8);
        }
    }

    /* renamed from: vJ$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(C3854vJ.this.getActivity(), 20, "U-IAP-RCP", 7);
        }
    }

    /* renamed from: vJ$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(C3854vJ.this.getActivity(), 22, "U-IAP-RADS", 3);
        }
    }

    /* renamed from: vJ$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3854vJ c3854vJ = C3854vJ.this;
            if (c3854vJ.getActivity() != null) {
                if (O4.m1615native()) {
                    VJ.m2572implements(c3854vJ.getActivity(), 1);
                } else {
                    VJ.m2572implements(c3854vJ.getActivity(), -1);
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m8468new(boolean z, boolean z2, boolean z3, boolean z4, View view) {
        View findViewById;
        View findViewById2;
        View findViewById3;
        View findViewById4;
        View findViewById5;
        View findViewById6;
        View findViewById7;
        View findViewById8;
        if (view != null) {
            findViewById = view.findViewById(R.id.cardViewUpgradeRemoveAds);
            findViewById2 = view.findViewById(R.id.upgradeRemoveAdsCTA);
            findViewById3 = view.findViewById(R.id.cardViewUpgradeBusyBox);
            findViewById4 = view.findViewById(R.id.upgradeBusyBoxCTA);
            findViewById5 = view.findViewById(R.id.cardViewUpgradeRoot);
            findViewById6 = view.findViewById(R.id.upgradeRootCTA);
            findViewById7 = view.findViewById(R.id.cardViewUpgradeBundle);
            findViewById8 = view.findViewById(R.id.bundleCTA);
            view.findViewById(R.id.upgradeRootTempPurchased);
            view.findViewById(R.id.upgradeBusyBoxTempPurchased);
            view.findViewById(R.id.upgradeRemoveAdsTempPurchased);
        } else {
            AppCompatActivity appCompatActivity = C0420Ou.f2680do;
            if (appCompatActivity == null) {
                return;
            }
            findViewById = appCompatActivity.findViewById(R.id.cardViewUpgradeRemoveAds);
            findViewById2 = C0420Ou.f2680do.findViewById(R.id.upgradeRemoveAdsCTA);
            findViewById3 = C0420Ou.f2680do.findViewById(R.id.cardViewUpgradeBusyBox);
            findViewById4 = C0420Ou.f2680do.findViewById(R.id.upgradeBusyBoxCTA);
            findViewById5 = C0420Ou.f2680do.findViewById(R.id.cardViewUpgradeRoot);
            findViewById6 = C0420Ou.f2680do.findViewById(R.id.upgradeRootCTA);
            findViewById7 = C0420Ou.f2680do.findViewById(R.id.cardViewUpgradeBundle);
            findViewById8 = C0420Ou.f2680do.findViewById(R.id.bundleCTA);
            C0420Ou.f2680do.findViewById(R.id.upgradeRootTempPurchased);
            C0420Ou.f2680do.findViewById(R.id.upgradeBusyBoxTempPurchased);
            C0420Ou.f2680do.findViewById(R.id.upgradeRemoveAdsTempPurchased);
        }
        if (z4 && findViewById != null && findViewById2 != null) {
            findViewById.setClickable(false);
            TextView textView = (TextView) findViewById2;
            textView.setText(C0420Ou.f2680do.getString(R.string.upgradeCTAPurchased));
            textView.setTextColor(C0420Ou.f2680do.getResources().getColor(R.color.textColorSecondaryInverse));
        }
        if (z3 && findViewById3 != null && findViewById4 != null) {
            findViewById3.setClickable(false);
            TextView textView2 = (TextView) findViewById4;
            textView2.setText(C0420Ou.f2680do.getString(R.string.upgradeCTAPurchased));
            textView2.setTextColor(C0420Ou.f2680do.getResources().getColor(R.color.textColorSecondaryInverse));
        }
        if (z2 && findViewById5 != null && findViewById6 != null) {
            findViewById5.setClickable(false);
            TextView textView3 = (TextView) findViewById6;
            textView3.setText(C0420Ou.f2680do.getString(R.string.upgradeCTAPurchased));
            textView3.setTextColor(C0420Ou.f2680do.getResources().getColor(R.color.textColorSecondaryInverse));
        }
        if (!z || findViewById7 == null || findViewById8 == null) {
            return;
        }
        findViewById7.setClickable(false);
        TextView textView4 = (TextView) findViewById8;
        textView4.setText(C0420Ou.f2680do.getString(R.string.upgradeCTAPurchased));
        textView4.setTextColor(C0420Ou.f2680do.getResources().getColor(R.color.textColorSecondaryInverse));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.upgrades, viewGroup, false);
        CustomNestedScrollView customNestedScrollView = (CustomNestedScrollView) inflate.findViewById(R.id.upgradesCustomNestedScrollView);
        if (C3772tx.m8345static() && customNestedScrollView != null) {
            customNestedScrollView.setBackgroundResource(R.color.windowBackgroundDark);
        }
        inflate.findViewById(R.id.cardViewUpgradeBundle).setOnClickListener(new Cdo());
        inflate.findViewById(R.id.cardViewUpgradeRoot).setOnClickListener(new Cif());
        inflate.findViewById(R.id.cardViewUpgradeBusyBox).setOnClickListener(new Cfor());
        inflate.findViewById(R.id.cardViewUpgradeRemoveAds).setOnClickListener(new Cnew());
        C0420Ou.m1696if(C0420Ou.f2680do, inflate, 3);
        m8468new(C0830cn.f8640new, C0830cn.f8637for, C0830cn.f8638if, C0830cn.f8635do, inflate);
        f16058do = (TextView) inflate.findViewById(R.id.upgradeRootWatchAd);
        f16058do.setOnClickListener(new Ctry());
        f16060if = (TextView) inflate.findViewById(R.id.upgradeBusyBoxAdsWatchAd);
        f16060if.setOnClickListener(new Ccase());
        f16059for = (TextView) inflate.findViewById(R.id.upgradeRemoveAdsWatchAd);
        f16059for.setOnClickListener(new Celse());
        return inflate;
    }
}

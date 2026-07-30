package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.facebook.internal.AnalyticsEvents;
import com.google.firebase.perf.metrics.Trace;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Views.CustomNestedScrollView;
import com.joeykrim.rootcheck.Views.ProgressWheelv2;
import com.joeykrim.rootcheck.gpiab.BillingDataSource;

@TargetApi(21)
/* renamed from: oK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3443oK extends Q4 {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f14726for = 0;

    /* renamed from: break, reason: not valid java name */
    public TextView f14727break;

    /* renamed from: case, reason: not valid java name */
    public TextView f14728case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public CardView f14729case;

    /* renamed from: catch, reason: not valid java name */
    public TextView f14730catch;

    /* renamed from: class, reason: not valid java name */
    public TextView f14731class;

    /* renamed from: do, reason: not valid java name */
    public View f14732do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ImageView f14733do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f14734do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CardView f14735do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SwipeRefreshLayout f14736do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ProgressWheelv2 f14737do;

    /* renamed from: else, reason: not valid java name */
    public TextView f14738else;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public TextView f14739for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CardView f14740for;

    /* renamed from: goto, reason: not valid java name */
    public TextView f14741goto;

    /* renamed from: if, reason: not valid java name */
    public View f14742if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public TextView f14743if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CardView f14744if;

    /* renamed from: new, reason: not valid java name */
    public TextView f14745new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public CardView f14746new;

    /* renamed from: this, reason: not valid java name */
    public TextView f14747this;

    /* renamed from: try, reason: not valid java name */
    public TextView f14748try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public CardView f14749try;

    /* renamed from: oK$break, reason: invalid class name */
    public class Cbreak implements View.OnClickListener {
        public Cbreak() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C3443oK c3443oK = C3443oK.this;
                c3443oK.startActivity(VJ.d(c3443oK.getActivity(), 3, "VR-BPE-PromoCard"));
            } catch (Exception unused) {
                Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
            }
        }
    }

    /* renamed from: oK$case, reason: invalid class name */
    public class Ccase implements View.OnClickListener {
        public Ccase() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(C3443oK.this.getActivity(), 11, "VR-IAP-Bundle", 5);
        }
    }

    /* renamed from: oK$catch, reason: invalid class name */
    public class Ccatch implements View.OnClickListener {
        public Ccatch() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C3443oK c3443oK = C3443oK.this;
                c3443oK.startActivity(VJ.d(c3443oK.getActivity(), 4, "VR-RQL-PromoCard"));
            } catch (Exception unused) {
                Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
            }
        }
    }

    /* renamed from: oK$class, reason: invalid class name */
    public class Cclass implements View.OnClickListener {
        public Cclass() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C3443oK c3443oK = C3443oK.this;
                c3443oK.startActivity(VJ.d(c3443oK.getActivity(), 5, "VR-FIG-PromoCard"));
            } catch (Exception unused) {
                Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
            }
        }
    }

    /* renamed from: oK$const, reason: invalid class name */
    public class Cconst implements SwipeRefreshLayout.Ctry {
        public Cconst() {
        }

        @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.Ctry
        /* renamed from: do */
        public final void mo4599do() {
            C3443oK c3443oK = C3443oK.this;
            if (c3443oK.f14736do == null || c3443oK.getView() == null) {
                return;
            }
            FragmentActivity activity = c3443oK.getActivity();
            if (activity == null) {
                c3443oK.m7706else();
            } else if (MainActivity.f12236else || !MainActivity.f12238goto) {
                c3443oK.m7706else();
            } else {
                VJ.f(activity);
            }
        }
    }

    /* renamed from: oK$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3443oK c3443oK = C3443oK.this;
            if (c3443oK.getActivity() != null) {
                if (O4.m1615native()) {
                    VJ.m2572implements(c3443oK.getActivity(), 1);
                } else {
                    VJ.m2572implements(c3443oK.getActivity(), -1);
                }
            }
        }
    }

    /* renamed from: oK$else, reason: invalid class name */
    public class Celse implements View.OnClickListener {
        public Celse() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(C3443oK.this.getActivity(), 13, "VR-IAP-RCP", 7);
        }
    }

    /* renamed from: oK$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f14757do;

        public Cfor(FragmentActivity fragmentActivity) {
            this.f14757do = fragmentActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(this.f14757do, 13, "VR-IAP-RCP-B-SA", 7);
        }
    }

    /* renamed from: oK$goto, reason: invalid class name */
    public class Cgoto implements View.OnClickListener {
        public Cgoto() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(C3443oK.this.getActivity(), 14, "VR-IAP-VB", 8);
        }
    }

    /* renamed from: oK$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f14759do;

        public Cif(FragmentActivity fragmentActivity) {
            this.f14759do = fragmentActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(this.f14759do, 13, "VR-IAP-RCP-B-R", 7);
        }
    }

    /* renamed from: oK$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f14760do;

        public Cnew(FragmentActivity fragmentActivity) {
            this.f14760do = fragmentActivity;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(this.f14760do, 13, "VR-IAP-RCP-B-ID", 7);
        }
    }

    /* renamed from: oK$this, reason: invalid class name */
    public class Cthis implements View.OnClickListener {
        public Cthis() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z = BillingDataSource.f12296do;
            C3443oK c3443oK = C3443oK.this;
            if (!z) {
                try {
                    c3443oK.startActivity(VJ.d(c3443oK.getActivity(), 1, "VR-IAP-BundleV1"));
                    return;
                } catch (Exception unused) {
                    Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
                    return;
                }
            }
            try {
                VJ.m2566extends(c3443oK.getActivity(), 12, "VR-IAP-BundleV1", 4);
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
                try {
                    c3443oK.startActivity(VJ.d(c3443oK.getActivity(), 1, "VR-IAP-BundleV1"));
                } catch (Exception unused2) {
                    Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
                }
            }
        }
    }

    /* renamed from: oK$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.f(C3443oK.this.getActivity());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static C3443oK m7703new(Activity activity) {
        if (!(activity instanceof FragmentActivity)) {
            return null;
        }
        for (Fragment fragment : ((FragmentManager) ((FragmentActivity) activity).m4113class()).f6868do.m4177case()) {
            if ((fragment instanceof C3443oK) && fragment.isAdded()) {
                return (C3443oK) fragment;
            }
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7704try(boolean z, View view) {
        View findViewById;
        View findViewById2;
        if (view != null) {
            findViewById = view.findViewById(R.id.vrCardViewPromoRoot);
            findViewById2 = view.findViewById(R.id.vrUpgradeRootCTA);
        } else {
            AppCompatActivity appCompatActivity = C0420Ou.f2680do;
            if (appCompatActivity == null) {
                return;
            }
            findViewById = appCompatActivity.findViewById(R.id.vrCardViewPromoRoot);
            findViewById2 = C0420Ou.f2680do.findViewById(R.id.vrUpgradeRootCTA);
        }
        if (!z || findViewById == null || findViewById2 == null) {
            return;
        }
        findViewById.setClickable(false);
        TextView textView = (TextView) findViewById2;
        textView.setText(C0420Ou.f2680do.getString(R.string.upgradeCTAPurchased));
        textView.setTextColor(C0420Ou.f2680do.getResources().getColor(R.color.textColorSecondaryInverse));
    }

    /* renamed from: case, reason: not valid java name */
    public final void m7705case(Context context) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        if (context == null) {
            context = activity.getApplicationContext();
        }
        VJ.m2571if(context, this.f14727break);
        VJ.m2571if(context, this.f14730catch);
        VJ.m2571if(context, this.f14731class);
        CardView cardView = this.f14746new;
        if (cardView != null) {
            cardView.setOnClickListener(new Cif(activity));
        }
        CardView cardView2 = this.f14749try;
        if (cardView2 != null) {
            cardView2.setOnClickListener(new Cfor(activity));
        }
        CardView cardView3 = this.f14729case;
        if (cardView3 != null) {
            cardView3.setOnClickListener(new Cnew(activity));
        }
        CardView cardView4 = this.f14749try;
        if (cardView4 != null) {
            cardView4.setVisibility(0);
        }
        CardView cardView5 = this.f14729case;
        if (cardView5 != null) {
            cardView5.setVisibility(0);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m7706else() {
        if (this.f14736do == null || getView() == null) {
            return;
        }
        this.f14736do.m4594goto(false, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.verifyroot, viewGroup, false);
        CustomNestedScrollView customNestedScrollView = (CustomNestedScrollView) inflate.findViewById(R.id.vrCustomNestedScrollView);
        if (C3772tx.m8345static() && customNestedScrollView != null) {
            customNestedScrollView.setBackgroundResource(R.color.windowBackgroundDark);
        }
        this.f14733do = (ImageView) inflate.findViewById(R.id.imgViewResultIcon);
        this.f14737do = (ProgressWheelv2) inflate.findViewById(R.id.pwSpinnerv2);
        this.f14734do = (TextView) inflate.findViewById(R.id.txtRootResults);
        this.f14743if = (TextView) inflate.findViewById(R.id.txtVerifyTimestamp);
        this.f14739for = (TextView) inflate.findViewById(R.id.txtCurrentDevice);
        this.f14745new = (TextView) inflate.findViewById(R.id.txtVerifyRoot);
        this.f14735do = (CardView) inflate.findViewById(R.id.cardViewVerifyRoot);
        this.f14744if = (CardView) inflate.findViewById(R.id.cardViewPromoLM);
        this.f14748try = (TextView) inflate.findViewById(R.id.txtVerifyDuration);
        this.f14728case = (TextView) inflate.findViewById(R.id.txtVerifyDuration2);
        this.f14740for = (CardView) inflate.findViewById(R.id.cardViewProbRootBelow);
        this.f14741goto = (TextView) inflate.findViewById(R.id.probRootBelowTitle);
        this.f14747this = (TextView) inflate.findViewById(R.id.probRootBelowDetails);
        this.f14735do.setOnClickListener(new Ctry());
        inflate.findViewById(R.id.vrCardViewPromoBundle).setOnClickListener(new Ccase());
        inflate.findViewById(R.id.vrCardViewPromoRoot).setOnClickListener(new Celse());
        inflate.findViewById(R.id.vrCardViewPromoBusyBox).setOnClickListener(new Cgoto());
        inflate.findViewById(R.id.vrCardViewPromoRCPOld).setOnClickListener(new Cthis());
        inflate.findViewById(R.id.cardViewPromoBPE).setOnClickListener(new Cbreak());
        inflate.findViewById(R.id.cardViewPromoRQL).setOnClickListener(new Ccatch());
        inflate.findViewById(R.id.cardViewPromoFIG).setOnClickListener(new Cclass());
        FragmentActivity activity = getActivity();
        Trace trace = VJ.f4080do;
        C3443oK m7703new = m7703new(activity);
        TextView textView = m7703new != null ? m7703new.f14739for : null;
        if (activity != null && textView != null) {
            try {
                StringBuilder sb = new StringBuilder();
                Object[] objArr = new Object[1];
                String str = Build.MODEL;
                String str2 = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                if (str == null) {
                    str = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
                }
                objArr[0] = str;
                sb.append(activity.getString(R.string.verifyRootDeviceModel, objArr));
                sb.append(System.getProperty("line.separator"));
                Object[] objArr2 = new Object[1];
                String str3 = Build.VERSION.RELEASE;
                if (str3 != null) {
                    str2 = str3;
                }
                objArr2[0] = str2;
                sb.append(activity.getString(R.string.verifyRootAndroidVersion, objArr2));
                textView.setText(sb.toString());
                textView.setVisibility(0);
            } catch (Exception unused) {
            }
        }
        if (MainActivity.f12238goto) {
            try {
                C4007xw.m8678do(getActivity(), MainActivity.f12233catch, MainActivity.f12239if, false);
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
            VJ.m2589throw(getActivity());
        }
        this.f14746new = (CardView) inflate.findViewById(R.id.cardViewPromoRCPRecommend);
        this.f14727break = (TextView) inflate.findViewById(R.id.promoRCPRecommendExampleBlurry);
        this.f14729case = (CardView) inflate.findViewById(R.id.cardViewPromoRCPIDStatus);
        this.f14731class = (TextView) inflate.findViewById(R.id.promoRCPIdStatusExampleBlurry);
        this.f14749try = (CardView) inflate.findViewById(R.id.cardViewPromoRCPSUAppStatus);
        this.f14730catch = (TextView) inflate.findViewById(R.id.promoRCPSUAppStatusExampleBlurry);
        this.f14732do = inflate.findViewById(R.id.verifyRootSharingTopSeparator);
        this.f14742if = inflate.findViewById(R.id.verifyRootSharingSection);
        C0420Ou.m1696if(C0420Ou.f2680do, inflate, 1);
        m7704try(C0830cn.f8637for, inflate);
        if (MainActivity.f12238goto) {
            m7705case(getContext());
        }
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) inflate.findViewById(R.id.vrSwipeContainer);
        this.f14736do = swipeRefreshLayout;
        swipeRefreshLayout.m4592else(android.R.color.holo_blue_bright, android.R.color.holo_green_light, android.R.color.holo_orange_light, android.R.color.holo_red_light);
        this.f14736do.f7747do = new Cconst();
        this.f14738else = (TextView) inflate.findViewById(R.id.vrUpgradeRootWatchAd);
        this.f14738else.setOnClickListener(new Cdo());
        VJ.m2585super(getActivity());
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        AsyncTaskC3619rK asyncTaskC3619rK = C0420Ou.f2685do;
        if (asyncTaskC3619rK != null) {
            asyncTaskC3619rK.cancel(true);
            C0420Ou.f2685do = null;
        }
        CardView cardView = this.f14744if;
        if (cardView != null) {
            cardView.setOnClickListener(null);
        }
        SwipeRefreshLayout swipeRefreshLayout = this.f14736do;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.f7747do = null;
        }
        this.f14733do = null;
        this.f14737do = null;
        this.f14734do = null;
        this.f14743if = null;
        this.f14739for = null;
        this.f14745new = null;
        this.f14735do = null;
        this.f14744if = null;
        this.f14748try = null;
        this.f14728case = null;
        this.f14738else = null;
        this.f14740for = null;
        this.f14741goto = null;
        this.f14747this = null;
        this.f14736do = null;
        this.f14746new = null;
        this.f14727break = null;
        this.f14749try = null;
        this.f14730catch = null;
        this.f14729case = null;
        this.f14731class = null;
        super.onDestroyView();
    }
}

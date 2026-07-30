package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Views.CustomNestedScrollView;
import com.joeykrim.rootcheck.gpiab.BillingDataSource;
import com.joeykrim.rootcheckp.Rankings.RootBasicsLikeCountersJsonAdapter;
import com.like.LikeButton;
import defpackage.C3886vt;
import defpackage.WI;
import java.text.NumberFormat;
import java.util.List;

/* loaded from: classes3.dex */
public class EA extends Q4 {

    /* renamed from: do, reason: not valid java name */
    public static TextView f746do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static List<GA> f747do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CardView f748do;

    /* renamed from: EA$case, reason: invalid class name */
    public class Ccase implements View.OnClickListener {
        public Ccase() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                EA ea = EA.this;
                ea.startActivity(VJ.d(ea.getActivity(), 9, "RB-RQL-PromoCard"));
            } catch (Exception unused) {
                Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
            }
        }
    }

    /* renamed from: EA$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(EA.this.getActivity(), 15, "RB-IAP-Bundle", 5);
        }
    }

    /* renamed from: EA$else, reason: invalid class name */
    public class Celse implements View.OnClickListener {
        public Celse() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                EA ea = EA.this;
                ea.startActivity(VJ.d(ea.getActivity(), 10, "RB-FIG-PromoCard"));
            } catch (Exception unused) {
                Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
            }
        }
    }

    /* renamed from: EA$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(EA.this.getActivity(), 18, "RB-IAP-VB", 8);
        }
    }

    /* renamed from: EA$goto, reason: invalid class name */
    public class Cgoto implements View.OnClickListener {
        public Cgoto() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            EA ea = EA.this;
            if (ea.getActivity() != null) {
                if (O4.m1615native()) {
                    VJ.m2572implements(ea.getActivity(), 1);
                } else {
                    VJ.m2572implements(ea.getActivity(), -1);
                }
            }
        }
    }

    /* renamed from: EA$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VJ.m2566extends(EA.this.getActivity(), 17, "RB-IAP-RCP", 7);
        }
    }

    /* renamed from: EA$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z = BillingDataSource.f12296do;
            EA ea = EA.this;
            if (!z) {
                try {
                    ea.startActivity(VJ.d(ea.getActivity(), 6, "RB-IAP-BundleV1"));
                    return;
                } catch (Exception unused) {
                    Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
                    return;
                }
            }
            try {
                VJ.m2566extends(ea.getActivity(), 16, "RB-IAP-BundleV1", 4);
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
                try {
                    ea.startActivity(VJ.d(ea.getActivity(), 6, "RB-IAP-BundleV1"));
                } catch (Exception unused2) {
                    Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
                }
            }
        }
    }

    /* renamed from: EA$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                EA ea = EA.this;
                ea.startActivity(VJ.d(ea.getActivity(), 8, "RB-BPE-PromoCard"));
            } catch (Exception unused) {
                Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static int m438case() {
        List<GA> list = f747do;
        if (list == null || list.size() <= 0 || f747do.get(0).f1140do <= 0) {
            return 678988;
        }
        return f747do.get(0).f1140do;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m439else() {
        List<GA> list = f747do;
        if (list == null || list.size() <= 0 || f747do.get(0).f1142if <= 0) {
            return 429573;
        }
        return f747do.get(0).f1142if;
    }

    /* renamed from: new, reason: not valid java name */
    public static EA m440new(Activity activity) {
        if (!(activity instanceof FragmentActivity)) {
            return null;
        }
        for (Fragment fragment : ((FragmentManager) ((FragmentActivity) activity).m4113class()).f6868do.m4177case()) {
            if ((fragment instanceof EA) && fragment.isAdded() && fragment.getView() != null) {
                return (EA) fragment;
            }
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m441this(Activity activity, View view) {
        LikeButton likeButton;
        TextView textView;
        LikeButton likeButton2;
        TextView textView2;
        LikeButton likeButton3;
        TextView textView3;
        if (view == null && activity == null) {
            return;
        }
        if (view == null || activity == null) {
            SharedPreferences m8343public = C3772tx.m8343public();
            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (m8343public != null) {
                str = C3772tx.m8343public().getString("rootBasicsLikeCounters", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
            if (!str.isEmpty()) {
                List<GA> list = null;
                try {
                    C3886vt.Cdo cdo = new C3886vt.Cdo();
                    cdo.m8487do(new RootBasicsLikeCountersJsonAdapter());
                    list = (List) new C3886vt(cdo).m8484do(new WI.Cif(null, List.class, GA.class)).m6837if(str);
                } catch (Error e) {
                    C0766bi.m4854do().m4855for(e);
                } catch (Exception e2) {
                    C0766bi.m4854do().m4855for(e2);
                }
                f747do = list;
            }
            NumberFormat numberFormat = NumberFormat.getInstance();
            if (view != null) {
                likeButton = (LikeButton) view.findViewById(R.id.whatIsRootLikeBtn);
                textView = (TextView) view.findViewById(R.id.whatIsRootLikeCount);
            } else {
                likeButton = (LikeButton) activity.findViewById(R.id.whatIsRootLikeBtn);
                textView = (TextView) activity.findViewById(R.id.whatIsRootLikeCount);
            }
            if (likeButton != null && C3772tx.m8326class()) {
                likeButton.m6398if(Boolean.TRUE);
            }
            if (textView != null) {
                textView.setText(numberFormat.format((C3772tx.m8326class() ? 1 : 0) + m438case()));
                textView.setOnClickListener(new FA(likeButton));
                if (likeButton != null) {
                    likeButton.f12366do = new C4081zA(textView, numberFormat);
                }
            }
            if (view != null) {
                view.findViewById(R.id.relativeLayoutWhatIsRoot).setPadding(0, 0, 0, 0);
                view.findViewById(R.id.relativeLayoutWhatIsRootLike).setVisibility(0);
            } else {
                if (activity.findViewById(R.id.relativeLayoutWhatIsRoot) != null) {
                    activity.findViewById(R.id.relativeLayoutWhatIsRoot).setPadding(0, 0, 0, 0);
                }
                if (activity.findViewById(R.id.relativeLayoutWhatIsRootLike) != null) {
                    activity.findViewById(R.id.relativeLayoutWhatIsRootLike).setVisibility(0);
                }
            }
            if (view != null) {
                likeButton2 = (LikeButton) view.findViewById(R.id.whyRootLikebtn);
                textView2 = (TextView) view.findViewById(R.id.whyRootLikeCount);
            } else {
                likeButton2 = (LikeButton) activity.findViewById(R.id.whyRootLikebtn);
                textView2 = (TextView) activity.findViewById(R.id.whyRootLikeCount);
            }
            if (likeButton2 != null && C3772tx.m8327const()) {
                likeButton2.m6398if(Boolean.TRUE);
            }
            if (textView2 != null) {
                textView2.setText(numberFormat.format((C3772tx.m8327const() ? 1 : 0) + m439else()));
                textView2.setOnClickListener(new AA(likeButton2));
                if (likeButton2 != null) {
                    likeButton2.f12366do = new BA(textView2, numberFormat);
                }
            }
            if (view != null) {
                view.findViewById(R.id.relativeLayoutWhyRoot).setPadding(0, 0, 0, 0);
                view.findViewById(R.id.relativeLayoutWhyRootLike).setVisibility(0);
            } else {
                if (activity.findViewById(R.id.relativeLayoutWhyRoot) != null) {
                    activity.findViewById(R.id.relativeLayoutWhyRoot).setPadding(0, 0, 0, 0);
                }
                if (activity.findViewById(R.id.relativeLayoutWhyRootLike) != null) {
                    activity.findViewById(R.id.relativeLayoutWhyRootLike).setVisibility(0);
                }
            }
            if (view != null) {
                likeButton3 = (LikeButton) view.findViewById(R.id.howRootLikeBtn);
                textView3 = (TextView) view.findViewById(R.id.howRootLikeCount);
            } else {
                likeButton3 = (LikeButton) activity.findViewById(R.id.howRootLikeBtn);
                textView3 = (TextView) activity.findViewById(R.id.howRootLikeCount);
            }
            if (likeButton3 != null && C3772tx.m8325catch()) {
                likeButton3.m6398if(Boolean.TRUE);
            }
            if (textView3 != null) {
                textView3.setText(numberFormat.format((C3772tx.m8325catch() ? 1 : 0) + m442try()));
                textView3.setOnClickListener(new CA(likeButton3));
                if (likeButton3 != null) {
                    likeButton3.f12366do = new DA(textView3, numberFormat);
                }
            }
            if (view != null) {
                view.findViewById(R.id.relativeLayoutHowRoot).setPadding(0, 0, 0, 0);
                view.findViewById(R.id.relativeLayoutHowRootLike).setVisibility(0);
                return;
            }
            if (activity.findViewById(R.id.relativeLayoutHowRoot) != null) {
                activity.findViewById(R.id.relativeLayoutHowRoot).setPadding(0, 0, 0, 0);
            }
            if (activity.findViewById(R.id.relativeLayoutHowRootLike) != null) {
                activity.findViewById(R.id.relativeLayoutHowRootLike).setVisibility(0);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m442try() {
        List<GA> list = f747do;
        if (list == null || list.size() <= 0 || f747do.get(0).f1141for <= 0) {
            return 1192379;
        }
        return f747do.get(0).f1141for;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m443goto() {
        CardView cardView = this.f748do;
        if (cardView == null || cardView.getVisibility() != 0) {
            return;
        }
        this.f748do.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.rootbasics, viewGroup, false);
        CustomNestedScrollView customNestedScrollView = (CustomNestedScrollView) inflate.findViewById(R.id.rbCustomNestedScrollView);
        if (C3772tx.m8345static() && customNestedScrollView != null) {
            customNestedScrollView.setBackgroundResource(R.color.windowBackgroundDark);
        }
        inflate.findViewById(R.id.rbCardViewPromoBundle).setOnClickListener(new Cdo());
        this.f748do = (CardView) inflate.findViewById(R.id.rbCardViewPromoRoot);
        inflate.findViewById(R.id.rbCardViewPromoRoot).setOnClickListener(new Cif());
        inflate.findViewById(R.id.rbCardViewPromoBusyBox).setOnClickListener(new Cfor());
        inflate.findViewById(R.id.rbCardViewPromoRCPOld).setOnClickListener(new Cnew());
        inflate.findViewById(R.id.cardViewPromoBPE).setOnClickListener(new Ctry());
        inflate.findViewById(R.id.cardViewPromoRQL).setOnClickListener(new Ccase());
        inflate.findViewById(R.id.cardViewPromoFIG).setOnClickListener(new Celse());
        try {
            m441this(null, inflate);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        AppCompatActivity appCompatActivity = (AppCompatActivity) getActivity();
        try {
            Context mo3224try = appCompatActivity.m3231throw().mo3224try() != null ? appCompatActivity.m3231throw().mo3224try() : appCompatActivity.getApplicationContext();
            View findViewById = inflate.findViewById(R.id.popupMenuWhatIsRoot);
            if (findViewById != null) {
                PopupMenu popupMenu = new PopupMenu(mo3224try, findViewById);
                if (inflate.findViewById(R.id.relativeLayoutWhatIsRootLike).getVisibility() == 0) {
                    popupMenu.inflate(R.menu.feedback_only_not_useful);
                } else {
                    popupMenu.inflate(R.menu.feedback);
                }
                findViewById.setOnClickListener(new ViewOnClickListenerC0442Pu(popupMenu));
                popupMenu.setOnMenuItemClickListener(new C0464Qu(appCompatActivity));
                findViewById.setVisibility(0);
                View findViewById2 = inflate.findViewById(R.id.popupMenuWhyRoot);
                if (findViewById2 != null) {
                    PopupMenu popupMenu2 = new PopupMenu(mo3224try, findViewById2);
                    if (inflate.findViewById(R.id.relativeLayoutWhyRootLike).getVisibility() == 0) {
                        popupMenu2.inflate(R.menu.feedback_only_not_useful);
                    } else {
                        popupMenu2.inflate(R.menu.feedback);
                    }
                    findViewById2.setOnClickListener(new ViewOnClickListenerC0486Ru(popupMenu2));
                    popupMenu2.setOnMenuItemClickListener(new C0508Su(appCompatActivity));
                    findViewById2.setVisibility(0);
                    View findViewById3 = inflate.findViewById(R.id.popupMenuHowToRoot);
                    if (findViewById3 != null) {
                        PopupMenu popupMenu3 = new PopupMenu(mo3224try, findViewById3);
                        if (inflate.findViewById(R.id.relativeLayoutHowRootLike).getVisibility() == 0) {
                            popupMenu3.inflate(R.menu.feedback_only_not_useful);
                        } else {
                            popupMenu3.inflate(R.menu.feedback);
                        }
                        findViewById3.setOnClickListener(new ViewOnClickListenerC0530Tu(popupMenu3));
                        popupMenu3.setOnMenuItemClickListener(new C0552Uu(appCompatActivity));
                        findViewById3.setVisibility(0);
                    }
                }
            }
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
        C0420Ou.m1696if(C0420Ou.f2680do, inflate, 2);
        if (inflate.findViewById(R.id.rbCardViewPromoRoot) != null && (C0420Ou.m1688case() || C0420Ou.m1693else())) {
            inflate.findViewById(R.id.rbCardViewPromoRoot).setVisibility(8);
        }
        f746do = (TextView) inflate.findViewById(R.id.rbUpgradeRootWatchAd);
        f746do.setOnClickListener(new Cgoto());
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f748do = null;
        super.onDestroyView();
    }
}

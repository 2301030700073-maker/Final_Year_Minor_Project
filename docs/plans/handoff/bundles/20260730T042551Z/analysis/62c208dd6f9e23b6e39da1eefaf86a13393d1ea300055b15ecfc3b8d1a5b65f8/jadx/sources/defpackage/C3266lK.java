package defpackage;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Views.CustomNestedScrollView;
import com.joeykrim.rootcheckp.MainActivity;

/* renamed from: lK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3266lK extends Fragment {
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.rcp_nv_verifybusybox, viewGroup, false);
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        CustomNestedScrollView customNestedScrollView = (CustomNestedScrollView) inflate.findViewById(R.id.verifyBusyBoxCustomNestedScrollView);
        if (C3772tx.m8345static() && customNestedScrollView != null) {
            customNestedScrollView.setBackgroundResource(R.color.windowBackgroundDark);
        }
        C3384nK.f14496do = (ImageView) inflate.findViewById(R.id.imgViewResultIcon);
        C3384nK.f14497do = (TextView) inflate.findViewById(R.id.txtBusyBoxResults);
        CardView cardView = (CardView) inflate.findViewById(R.id.cardViewVerifyBusyBox);
        C3384nK.f14498do = cardView;
        cardView.setForeground(C0420Ou.m1699try(appCompatActivity));
        C3384nK.f14498do.setOnClickListener(new ViewOnClickListenerC3325mK(appCompatActivity));
        C3384nK.f14503if = (TextView) inflate.findViewById(R.id.sysEnvPathStatusTitle);
        C3384nK.f14500for = (TextView) inflate.findViewById(R.id.sysEnvPathStatusDetails);
        C3384nK.f14504if = (CardView) inflate.findViewById(R.id.cardViewSysEnvPathStatus);
        C3384nK.f14505new = (TextView) inflate.findViewById(R.id.binaryLocationDetails);
        C3384nK.f14501for = (CardView) inflate.findViewById(R.id.cardViewBinaryLocationStatus);
        C3384nK.f14508try = (TextView) inflate.findViewById(R.id.binaryInfoStatusDetails);
        C3384nK.f14506new = (CardView) inflate.findViewById(R.id.cardViewBinaryInfoStatus);
        C3384nK.f14494case = (TextView) inflate.findViewById(R.id.binaryVersionStatusTitle);
        C3384nK.f14499else = (TextView) inflate.findViewById(R.id.binaryVersionStatusDetails);
        C3384nK.f14509try = (CardView) inflate.findViewById(R.id.cardViewBinaryVersionStatus);
        C3384nK.f14502goto = (TextView) inflate.findViewById(R.id.busyBoxAppletsStatusTitle);
        C3384nK.f14507this = (TextView) inflate.findViewById(R.id.busyBoxAppletsStatusDetails);
        C3384nK.f14495case = (CardView) inflate.findViewById(R.id.cardViewBusyBoxAppletsStatus);
        if (MainActivity.f12319else) {
            C0251He.m861do(appCompatActivity);
        }
        return inflate;
    }
}

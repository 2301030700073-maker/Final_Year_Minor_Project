package defpackage;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.joeykrim.rootcheck.R;

/* loaded from: classes3.dex */
public class HA extends AbstractC0661Zt {
    @Override // defpackage.AbstractC0661Zt
    /* renamed from: new, reason: not valid java name */
    public final void mo821new() {
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        if (appCompatActivity == null) {
            return;
        }
        C3128j0.m7021new(appCompatActivity, "ca-app-pub-1866945732686288/4563595303", new KA(), new LA());
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        AppCompatActivity appCompatActivity;
        View inflate = layoutInflater.inflate(R.layout.rcp_nv_roothistory, viewGroup, false);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.rootHistoryLinLayout);
        if (C3772tx.m8345static() && linearLayout != null) {
            linearLayout.setBackgroundResource(R.color.windowBackgroundDark);
        }
        MA.f2132do = (TextView) inflate.findViewById(R.id.resultsHistoryNoItemsTitle);
        MA.f2133do = (RecyclerView) inflate.findViewById(R.id.rootHistoryRecyclerView);
        MA.f2133do.u(new LinearLayoutManager(1));
        MA.f2133do.f7343for = true;
        MA.f2134do = C3772tx.m8350throw();
        JA ja = MA.f2131do;
        if (ja != null) {
            ja.f1600do.m7024for(ja);
        }
        JA ja2 = new JA(MA.f2134do);
        MA.f2131do = ja2;
        MA.f2133do.t(ja2);
        if (getUserVisibleHint() && (appCompatActivity = C0420Ou.f2680do) != null) {
            C3128j0.m7021new(appCompatActivity, "ca-app-pub-1866945732686288/4563595303", new KA(), new LA());
        }
        return inflate;
    }
}

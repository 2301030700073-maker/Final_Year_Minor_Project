package defpackage;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.joeykrim.rootcheck.R;
import java.util.List;

/* renamed from: nl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3407nl extends AbstractC0661Zt {
    @Override // defpackage.AbstractC0661Zt
    /* renamed from: new */
    public final void mo821new() {
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        if (appCompatActivity == null) {
            return;
        }
        C3128j0.m7021new(appCompatActivity, "ca-app-pub-1866945732686288/9679765583", new C3466ol(), new C3525pl());
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        AppCompatActivity appCompatActivity;
        List<C3171jl> m213try;
        View inflate = layoutInflater.inflate(R.layout.rcp_nv_rootglobal, viewGroup, false);
        AppCompatActivity appCompatActivity2 = C0420Ou.f2680do;
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.globalRootLinLayout);
        if (C3772tx.m8345static() && linearLayout != null) {
            linearLayout.setBackgroundResource(R.color.windowBackgroundDark);
        }
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) inflate.findViewById(R.id.swipeContainer);
        C0126Bl.f263do = swipeRefreshLayout;
        swipeRefreshLayout.f7747do = new C3584ql(appCompatActivity2);
        swipeRefreshLayout.m4592else(android.R.color.holo_blue_bright, android.R.color.holo_green_light, android.R.color.holo_orange_light, android.R.color.holo_red_light);
        C0126Bl.f262do = (RecyclerView) inflate.findViewById(R.id.globalRootRecyclerView);
        C0126Bl.f262do.u(new LinearLayoutManager(1));
        C0126Bl.f262do.f7343for = true;
        if (appCompatActivity2 != null && (m213try = C0126Bl.m213try(appCompatActivity2)) != null && m213try.size() != 0) {
            C0126Bl.f276if = C0126Bl.m211new(appCompatActivity2.getApplicationContext(), m213try);
            C3289ll c3289ll = C0126Bl.f270do;
            if (c3289ll != null) {
                c3289ll.f14185do.m7024for(c3289ll);
            }
            C3289ll c3289ll2 = new C3289ll(m213try);
            C0126Bl.f270do = c3289ll2;
            C0126Bl.f262do.t(c3289ll2);
        }
        if (getUserVisibleHint() && (appCompatActivity = C0420Ou.f2680do) != null) {
            C3128j0.m7021new(appCompatActivity, "ca-app-pub-1866945732686288/9679765583", new C3466ol(), new C3525pl());
        }
        return inflate;
    }
}

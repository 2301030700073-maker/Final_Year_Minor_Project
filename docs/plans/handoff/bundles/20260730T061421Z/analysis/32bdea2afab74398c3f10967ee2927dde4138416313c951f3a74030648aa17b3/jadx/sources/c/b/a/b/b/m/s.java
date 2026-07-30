package c.b.a.b.b.m;

import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.widget.Toast;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.overview.NexusOverviewActionsView;

/* loaded from: classes.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public c.b.a.b.b.k.h f2729a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f2730b;

    public s(t tVar, o oVar) {
        this.f2730b = tVar;
    }

    public void a(boolean z) {
        ((NexusOverviewActionsView) this.f2730b.getActionsView()).f3304d.setVisibility(z ? 0 : 8);
    }

    public void b(boolean z) {
        final NexusOverviewActionsView nexusOverviewActionsView = (NexusOverviewActionsView) this.f2730b.getActionsView();
        Property property = View.ALPHA;
        if (!z) {
            if (nexusOverviewActionsView.f3301a.getVisibility() == 0) {
                return;
            }
            nexusOverviewActionsView.f3301a.setVisibility(0);
            nexusOverviewActionsView.f3301a.setAlpha(RecentsState.NO_OFFSET);
            nexusOverviewActionsView.f3301a.animate().setDuration(120L).alpha(1.0f);
            nexusOverviewActionsView.f3302b.animate().scaleX(0.8f).scaleY(0.8f).setDuration(283L).setInterpolator(NexusOverviewActionsView.e);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(nexusOverviewActionsView.f3302b, (Property<View, Float>) property, RecentsState.NO_OFFSET);
            ofFloat.setDuration(120L);
            ofFloat.start();
            ofFloat.addListener(new c.b.a.b.b.k.f(nexusOverviewActionsView));
            return;
        }
        if (nexusOverviewActionsView.f3302b.getVisibility() == 0) {
            return;
        }
        nexusOverviewActionsView.f3302b.setVisibility(0);
        nexusOverviewActionsView.f3302b.setAlpha(RecentsState.NO_OFFSET);
        nexusOverviewActionsView.f3302b.setScaleX(0.8f);
        nexusOverviewActionsView.f3302b.setScaleY(0.8f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(nexusOverviewActionsView.f3302b, (Property<View, Float>) property, 1.0f);
        ofFloat2.setDuration(120L);
        ofFloat2.start();
        nexusOverviewActionsView.f3302b.animate().scaleX(1.0f).scaleY(1.0f).setDuration(283L).setInterpolator(NexusOverviewActionsView.e);
        nexusOverviewActionsView.f3301a.animate().alpha(RecentsState.NO_OFFSET).setDuration(120L).withEndAction(new Runnable() { // from class: c.b.a.b.b.k.a
            @Override // java.lang.Runnable
            public final void run() {
                NexusOverviewActionsView.this.a();
            }
        });
    }

    public void c() {
        Toast.makeText(this.f2730b.f2731a, R.string.blocked_by_policy, 1).show();
    }
}

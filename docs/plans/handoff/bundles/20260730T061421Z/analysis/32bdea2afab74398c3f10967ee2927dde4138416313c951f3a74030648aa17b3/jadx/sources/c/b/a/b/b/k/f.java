package c.b.a.b.b.k;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.apps.nexuslauncher.overview.NexusOverviewActionsView;

/* loaded from: classes.dex */
public class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NexusOverviewActionsView f2608a;

    public f(NexusOverviewActionsView nexusOverviewActionsView) {
        this.f2608a = nexusOverviewActionsView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2608a.f3302b.setVisibility(8);
    }
}

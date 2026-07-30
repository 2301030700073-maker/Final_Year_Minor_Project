package b.b.g;

import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.android.quickstep.fallback.RecentsState;

/* renamed from: b.b.g.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0046f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f531a;

    public RunnableC0046f(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f531a = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f531a.s();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f531a;
        actionBarOverlayLayout.A = actionBarOverlayLayout.f46d.animate().translationY(RecentsState.NO_OFFSET).setListener(this.f531a.B);
    }
}

package b.b.c;

import android.view.View;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class S extends b.e.i.v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ W f281a;

    public S(W w) {
        this.f281a = w;
    }

    @Override // b.e.i.u
    public void a(View view) {
        View view2;
        W w = this.f281a;
        if (w.p && (view2 = w.g) != null) {
            view2.setTranslationY(RecentsState.NO_OFFSET);
            this.f281a.f289d.setTranslationY(RecentsState.NO_OFFSET);
        }
        this.f281a.f289d.setVisibility(8);
        ActionBarContainer actionBarContainer = this.f281a.f289d;
        actionBarContainer.f39a = false;
        actionBarContainer.setDescendantFocusability(262144);
        W w2 = this.f281a;
        w2.t = null;
        b.b.f.a aVar = w2.k;
        if (aVar != null) {
            aVar.d(w2.j);
            w2.j = null;
            w2.k = null;
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f281a.f288c;
        if (actionBarOverlayLayout != null) {
            b.e.i.q.B(actionBarOverlayLayout);
        }
    }
}

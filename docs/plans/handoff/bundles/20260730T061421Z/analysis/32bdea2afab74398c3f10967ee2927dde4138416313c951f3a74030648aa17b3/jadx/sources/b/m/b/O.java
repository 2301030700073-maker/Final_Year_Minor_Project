package b.m.b;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class O {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f1119a;

    public O(RecyclerView recyclerView) {
        this.f1119a = recyclerView;
    }

    public View a(int i) {
        return this.f1119a.getChildAt(i);
    }

    public int b() {
        return this.f1119a.getChildCount();
    }

    public void c(int i) {
        View childAt = this.f1119a.getChildAt(i);
        if (childAt != null) {
            this.f1119a.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        this.f1119a.removeViewAt(i);
    }
}

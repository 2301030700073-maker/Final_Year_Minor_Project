package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: jL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3149jL implements RecyclerView.Cconst {
    @Override // androidx.recyclerview.widget.RecyclerView.Cconst
    /* renamed from: do */
    public final void mo4404do(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (((ViewGroup.MarginLayoutParams) layoutParams).width != -1 || ((ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
            throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cconst
    /* renamed from: if */
    public final void mo4405if() {
    }
}

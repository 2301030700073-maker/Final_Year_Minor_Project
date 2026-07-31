package org.wikipedia.views;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MarginItemDecoration extends RecyclerView.ItemDecoration {
    public final Rect offsets;

    public MarginItemDecoration(int i, int i2, int i3, int i4) {
        Rect rect = new Rect();
        this.offsets = rect;
        rect.set(i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.getClass();
        view.getClass();
        state.getClass();
        super.getItemOffsets(rect, view, recyclerView, state);
        rect.set(this.offsets);
    }
}

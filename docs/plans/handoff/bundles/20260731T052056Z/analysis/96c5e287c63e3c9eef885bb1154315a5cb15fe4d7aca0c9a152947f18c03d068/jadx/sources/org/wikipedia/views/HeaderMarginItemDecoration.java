package org.wikipedia.views;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HeaderMarginItemDecoration extends MarginItemDecoration {
    @Override // org.wikipedia.views.MarginItemDecoration, androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.getClass();
        view.getClass();
        state.getClass();
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if ((childViewHolderInt != null ? childViewHolderInt.getAbsoluteAdapterPosition() : -1) == 0) {
            super.getItemOffsets(rect, view, recyclerView, state);
        }
    }
}

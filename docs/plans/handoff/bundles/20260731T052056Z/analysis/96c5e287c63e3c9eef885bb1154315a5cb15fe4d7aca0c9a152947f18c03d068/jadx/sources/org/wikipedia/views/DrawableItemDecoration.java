package org.wikipedia.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DrawableItemDecoration extends RecyclerView.ItemDecoration {
    public final boolean drawEnd;
    public final boolean drawStart;
    public final Drawable drawable;
    public final boolean skipSearchBar;

    public DrawableItemDecoration(Context context, boolean z, boolean z2, boolean z3) {
        this.drawStart = z;
        this.drawEnd = z2;
        this.skipSearchBar = z3;
        TypedValue typedValue = new TypedValue();
        typedValue = context.getTheme().resolveAttribute(R.attr.list_divider, typedValue, true) ? typedValue : null;
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969500");
            throw null;
        }
        Drawable drawable = TuplesKt.getDrawable(context, typedValue.resourceId);
        drawable.getClass();
        this.drawable = drawable;
    }

    public final Rect bounds(RecyclerView recyclerView, View view, boolean z) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        Rect rect = new Rect();
        rect.right = recyclerView.getWidth() - recyclerView.getPaddingRight();
        rect.left = recyclerView.getPaddingLeft();
        int intrinsicHeight = this.drawable.getIntrinsicHeight();
        layoutManager.getClass();
        int decoratedTop = z ? RecyclerView.LayoutManager.getDecoratedTop(view) : RecyclerView.LayoutManager.getDecoratedBottom(view) - intrinsicHeight;
        rect.top = decoratedTop;
        rect.bottom = decoratedTop + intrinsicHeight;
        return rect;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.getClass();
        view.getClass();
        state.getClass();
        super.getItemOffsets(rect, view, recyclerView, state);
        Drawable drawable = this.drawable;
        rect.top = drawable.getIntrinsicHeight();
        RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if ((childViewHolderInt != null ? childViewHolderInt.getAbsoluteAdapterPosition() : -1) == state.getItemCount() - 1) {
            rect.bottom = drawable.getIntrinsicHeight();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        Drawable drawable;
        canvas.getClass();
        state.getClass();
        if (recyclerView.getChildCount() != 0) {
            boolean z = this.skipSearchBar;
            if (z && recyclerView.getChildCount() == 1) {
                return;
            }
            int i = (recyclerView.getChildCount() <= 0 || recyclerView.getChildAt(0).findViewById(R.id.search_container) == null || !z) ? 0 : 1;
            int childCount = recyclerView.getChildCount() - 1;
            boolean z2 = this.drawStart;
            int i2 = z2 ? i : i + 1;
            while (true) {
                drawable = this.drawable;
                if (i2 >= childCount) {
                    break;
                }
                View childAt = recyclerView.getChildAt(i2);
                childAt.getClass();
                drawable.setBounds(bounds(recyclerView, childAt, true));
                drawable.draw(canvas);
                i2++;
            }
            if (z2 || recyclerView.getChildCount() > i + 1) {
                View childAt2 = recyclerView.getChildAt(childCount);
                childAt2.getClass();
                drawable.setBounds(bounds(recyclerView, childAt2, true));
                drawable.draw(canvas);
            }
            if (this.drawEnd) {
                View childAt3 = recyclerView.getChildAt(childCount);
                childAt3.getClass();
                drawable.setBounds(bounds(recyclerView, childAt3, false));
                drawable.draw(canvas);
            }
        }
    }

    public /* synthetic */ DrawableItemDecoration(Context context, boolean z, boolean z2, int i) {
        this(context, (i & 4) != 0 ? false : z, (i & 8) != 0 ? true : z2, (i & 16) == 0);
    }
}

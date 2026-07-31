package org.wikipedia.page.tabs;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.TypedValue;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.page.tabs.TabActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SwipeableTabTouchHelperCallback extends ItemTouchHelper.Callback {
    public final Paint itemBackgroundPaint;
    public final Paint swipeBackgroundPaint;
    public boolean swipeableEnabled;

    public SwipeableTabTouchHelperCallback(TabActivity tabActivity) {
        Paint paint = new Paint();
        this.swipeBackgroundPaint = paint;
        Paint paint2 = new Paint();
        this.itemBackgroundPaint = paint2;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        TypedValue typedValue = new TypedValue();
        typedValue = tabActivity.getTheme().resolveAttribute(R.attr.background_color, typedValue, true) ? typedValue : null;
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
            throw null;
        }
        paint.setColor(typedValue.data);
        paint2.setStyle(style);
        paint2.setColor(paint.getColor());
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        int i;
        recyclerView.getClass();
        viewHolder.getClass();
        if (viewHolder instanceof TabActivity.TabViewHolder) {
            i = 48;
        } else {
            i = 0;
        }
        return ItemTouchHelper.Callback.makeMovementFlags(0, i);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean isItemViewSwipeEnabled() {
        return this.swipeableEnabled;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean isLongPressDragEnabled() {
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
        canvas.getClass();
        viewHolder.getClass();
        View view = viewHolder.itemView;
        if (i != 1) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
            return;
        }
        canvas.drawRect(RecyclerView.DECELERATION_RATE, view.getTop(), view.getWidth(), view.getHeight() + view.getTop(), this.swipeBackgroundPaint);
        canvas.drawRect(f, view.getTop(), view.getWidth() + f, view.getHeight() + view.getTop(), this.itemBackgroundPaint);
        view.setTranslationX(f);
        view.setAlpha(1.0f - (Math.abs(f) / view.getWidth()));
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        recyclerView.getClass();
        viewHolder.getClass();
        return viewHolder.mItemViewType == viewHolder2.mItemViewType;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
        viewHolder.getClass();
        if (viewHolder instanceof TabActivity.TabViewHolder) {
            ((TabActivity.TabViewHolder) viewHolder).doCloseTab();
        }
    }
}

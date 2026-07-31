package org.wikipedia.views;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import okhttp3.Cache;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SwipeableItemTouchHelperCallback extends ItemTouchHelper.Callback {
    public final Paint itemBackgroundPaint;
    public final SwipeRefreshLayout refreshLayout;
    public final Paint swipeBackgroundPaint;
    public final boolean swipeIconAndTextFromTag;
    public Bitmap swipeIconBitmap;
    public final Paint swipeIconPaint;
    public final Integer swipeIconTint;
    public boolean swipeableEnabled;
    public final Paint valueTextPaint;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        boolean isSwipeable();

        void onSwipe();
    }

    public SwipeableItemTouchHelperCallback(Context context, int i, int i2, Integer num, boolean z, SwipeRefreshLayout swipeRefreshLayout) {
        this.swipeIconTint = num;
        this.swipeIconAndTextFromTag = z;
        this.refreshLayout = swipeRefreshLayout;
        Paint paint = new Paint();
        this.swipeBackgroundPaint = paint;
        this.swipeIconPaint = new Paint();
        Paint paint2 = new Paint();
        this.itemBackgroundPaint = paint2;
        Paint paint3 = new Paint();
        paint3.setColor(context.getColor(num != null ? num.intValue() : R.color.white));
        paint3.setTextSize(Okio__OkioKt.dpToPx(12.0f));
        paint3.setTextAlign(Paint.Align.CENTER);
        paint3.setTypeface(Typeface.create("sans-serif-medium", 0));
        this.valueTextPaint = paint3;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(context.getColor(i));
        paint2.setStyle(style);
        paint2.setColor(Cache.Companion.getThemedColor(context, R.attr.windowBackground));
        Drawable drawable = TuplesKt.getDrawable(context, i2);
        drawable.getClass();
        Drawable mutate = drawable.mutate();
        mutate.getClass();
        if (num != null) {
            mutate.setTint(context.getColor(num.intValue()));
        }
        this.swipeIconBitmap = UnsignedKt.toBitmap$default(mutate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        recyclerView.getClass();
        viewHolder.getClass();
        return ItemTouchHelper.Callback.makeMovementFlags(0, ((viewHolder instanceof Callback) && ((Callback) viewHolder).isSwipeable()) ? 48 : 0);
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
        String str;
        canvas.getClass();
        viewHolder.getClass();
        View view = viewHolder.itemView;
        if (i != 1) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
            return;
        }
        boolean z2 = this.swipeIconAndTextFromTag;
        if (!z2 || view.getTag(org.wikipedia.R.string.tag_icon_key) == null || view.getTag(org.wikipedia.R.string.tag_text_key) == null) {
            str = "";
        } else {
            str = view.getTag(org.wikipedia.R.string.tag_text_key).toString();
            Context context = recyclerView.getContext();
            context.getClass();
            Object tag = view.getTag(org.wikipedia.R.string.tag_icon_key);
            tag.getClass();
            Drawable drawable = TuplesKt.getDrawable(context, ((Integer) tag).intValue());
            drawable.getClass();
            Drawable mutate = drawable.mutate();
            mutate.getClass();
            Integer num = this.swipeIconTint;
            if (num != null) {
                mutate.setTint(context.getColor(num.intValue()));
            }
            this.swipeIconBitmap = UnsignedKt.toBitmap$default(mutate);
        }
        canvas.drawRect(RecyclerView.DECELERATION_RATE, view.getTop(), view.getWidth(), view.getHeight() + view.getTop(), this.swipeBackgroundPaint);
        int top = view.getTop();
        int height = view.getHeight() / 2;
        int height2 = this.swipeIconBitmap.getHeight();
        float f3 = (height - (z2 ? (int) (height2 / 1.4f) : height2 / 2)) + top;
        float height3 = (((this.swipeIconBitmap.getHeight() + (view.getHeight() / 2)) + view.getTop()) - 16.0f) + 2.0f;
        Bitmap bitmap = this.swipeIconBitmap;
        Paint paint = this.valueTextPaint;
        Paint paint2 = this.swipeIconPaint;
        if (f >= RecyclerView.DECELERATION_RATE) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Resources resources = Jsoup.getInstance().getResources();
            resources.getClass();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            displayMetrics.getClass();
            canvas.drawBitmap(bitmap, displayMetrics.density * 22.4f, f3, paint2);
            if (z2) {
                canvas.drawText(str, this.swipeIconBitmap.getWidth() + 32.0f, height3, paint);
            }
        } else {
            float right = view.getRight() - this.swipeIconBitmap.getWidth();
            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
            Resources resources2 = Jsoup.getInstance().getResources();
            resources2.getClass();
            DisplayMetrics displayMetrics2 = resources2.getDisplayMetrics();
            displayMetrics2.getClass();
            canvas.drawBitmap(bitmap, right - (displayMetrics2.density * 22.4f), f3, paint2);
            if (z2) {
                canvas.drawText(str, (view.getRight() - this.swipeIconBitmap.getWidth()) - 32.0f, height3, paint);
            }
        }
        canvas.drawRect(f, view.getTop(), view.getWidth() + f, view.getHeight() + view.getTop(), this.itemBackgroundPaint);
        view.setTranslationX(f);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        recyclerView.getClass();
        viewHolder.getClass();
        return viewHolder.mItemViewType == viewHolder2.mItemViewType;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void onSelectedChanged(int i) {
        SwipeRefreshLayout swipeRefreshLayout = this.refreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setEnabled(i != 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
        viewHolder.getClass();
        if (viewHolder instanceof Callback) {
            ((Callback) viewHolder).onSwipe();
        }
    }

    public /* synthetic */ SwipeableItemTouchHelperCallback(Context context) {
        this(context, org.wikipedia.R.color.red700, org.wikipedia.R.drawable.ic_delete_white_24dp, null, false, null);
    }
}

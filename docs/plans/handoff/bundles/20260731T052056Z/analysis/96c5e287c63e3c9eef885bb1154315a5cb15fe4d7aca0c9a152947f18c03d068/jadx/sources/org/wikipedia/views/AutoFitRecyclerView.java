package org.wikipedia.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import kotlin.Metadata;
import org.wikipedia.R$styleable;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lorg/wikipedia/views/AutoFitRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "columns", "I", "getColumns", "()I", "setColumns", "(I)V", "Lorg/wikipedia/views/AutoFitRecyclerView$Callback;", "callback", "Lorg/wikipedia/views/AutoFitRecyclerView$Callback;", "getCallback", "()Lorg/wikipedia/views/AutoFitRecyclerView$Callback;", "setCallback", "(Lorg/wikipedia/views/AutoFitRecyclerView$Callback;)V", "Callback", "org/wikipedia/views/ViewUtil", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class AutoFitRecyclerView extends RecyclerView {
    public Callback callback;
    public int columns;
    public final int minColumnCount;
    public final int minColumnWidth;
    public final StaggeredGridLayoutManager recyclerLayoutManager;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoFitRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.minColumnCount = 1;
        this.callback = new ViewUtil();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AutoFitRecyclerView);
        obtainStyledAttributes.getClass();
        this.minColumnWidth = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        int i = obtainStyledAttributes.getInt(0, 1);
        this.minColumnCount = i;
        obtainStyledAttributes.recycle();
        this.columns = i;
        StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(i);
        this.recyclerLayoutManager = staggeredGridLayoutManager;
        setLayoutManager(staggeredGridLayoutManager);
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final int getColumns() {
        return this.columns;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        try {
            super.onLayout(z, i, i2, i3, i4);
        } catch (Exception e) {
            L.logRemoteErrorIfProd(e);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int i4 = this.minColumnWidth;
        int i5 = this.minColumnCount;
        if (i4 > 0 && i5 < (i3 = measuredWidth / i4)) {
            i5 = i3;
        }
        if (this.columns != i5) {
            this.columns = i5;
            this.recyclerLayoutManager.setSpanCount(i5);
            this.callback.getClass();
        }
    }

    public final void setCallback(Callback callback) {
        callback.getClass();
        this.callback = callback;
    }

    public final void setColumns(int i) {
        this.columns = i;
    }
}

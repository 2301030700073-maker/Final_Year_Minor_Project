package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.CancellationSignal;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import b.m.b.Q;
import b.m.b.w0;
import com.android.launcher3.WidgetPreviewLoader;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.util.LabelComparator;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Comparator;

/* loaded from: classes.dex */
public class WidgetsListAdapter extends Q {
    public boolean mApplyBitmapDeferred;
    public final WidgetsDiffReporter mDiffReporter;
    public ArrayList mEntries = new ArrayList();
    public final View.OnClickListener mIconClickListener;
    public final View.OnLongClickListener mIconLongClickListener;
    public final int mIndent;
    public final LayoutInflater mLayoutInflater;
    public final WidgetPreviewLoader mWidgetPreviewLoader;

    public class WidgetListRowEntryComparator implements Comparator {
        public final LabelComparator mComparator = new LabelComparator();

        @Override // java.util.Comparator
        public int compare(WidgetListRowEntry widgetListRowEntry, WidgetListRowEntry widgetListRowEntry2) {
            return this.mComparator.compare(widgetListRowEntry.pkgItem.title.toString(), widgetListRowEntry2.pkgItem.title.toString());
        }
    }

    public WidgetsListAdapter(Context context, LayoutInflater layoutInflater, WidgetPreviewLoader widgetPreviewLoader, IconCache iconCache, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        this.mLayoutInflater = layoutInflater;
        this.mWidgetPreviewLoader = widgetPreviewLoader;
        this.mIconClickListener = onClickListener;
        this.mIconLongClickListener = onLongClickListener;
        this.mIndent = context.getResources().getDimensionPixelSize(R.dimen.widget_section_indent);
        this.mDiffReporter = new WidgetsDiffReporter(iconCache, this);
    }

    @Override // b.m.b.Q
    public int getItemCount() {
        return this.mEntries.size();
    }

    @Override // b.m.b.Q
    public long getItemId(int i) {
        return i;
    }

    @Override // b.m.b.Q
    public void onBindViewHolder(w0 w0Var, int i) {
        Bitmap bitmap;
        WidgetsRowViewHolder widgetsRowViewHolder = (WidgetsRowViewHolder) w0Var;
        WidgetListRowEntry widgetListRowEntry = (WidgetListRowEntry) this.mEntries.get(i);
        ArrayList arrayList = widgetListRowEntry.widgets;
        ViewGroup viewGroup = widgetsRowViewHolder.cellContainer;
        int max = Math.max(0, arrayList.size() - 1) + arrayList.size();
        int childCount = viewGroup.getChildCount();
        if (max > childCount) {
            while (childCount < max) {
                if ((childCount & 1) == 1) {
                    this.mLayoutInflater.inflate(R.layout.widget_list_divider, viewGroup);
                } else {
                    WidgetCell widgetCell = (WidgetCell) this.mLayoutInflater.inflate(R.layout.widget_cell, viewGroup, false);
                    widgetCell.setOnClickListener(this.mIconClickListener);
                    widgetCell.setOnLongClickListener(this.mIconLongClickListener);
                    viewGroup.addView(widgetCell);
                }
                childCount++;
            }
        } else if (max < childCount) {
            while (max < childCount) {
                viewGroup.getChildAt(max).setVisibility(8);
                max++;
            }
        }
        widgetsRowViewHolder.title.applyFromPackageItemInfo(widgetListRowEntry.pkgItem);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            int i3 = i2 * 2;
            WidgetCell widgetCell2 = (WidgetCell) viewGroup.getChildAt(i3);
            widgetCell2.applyFromCellItem((WidgetItem) arrayList.get(i2), this.mWidgetPreviewLoader);
            boolean z = this.mApplyBitmapDeferred;
            if (widgetCell2.mApplyBitmapDeferred != z) {
                widgetCell2.mApplyBitmapDeferred = z;
                if (!z && (bitmap = widgetCell2.mDeferredBitmap) != null) {
                    widgetCell2.applyPreview(bitmap);
                    widgetCell2.mDeferredBitmap = null;
                }
            }
            widgetCell2.ensurePreview();
            widgetCell2.setVisibility(0);
            if (i2 > 0) {
                viewGroup.getChildAt(i3 - 1).setVisibility(0);
            }
        }
    }

    @Override // b.m.b.Q
    public w0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        ViewGroup viewGroup2 = (ViewGroup) this.mLayoutInflater.inflate(R.layout.widgets_list_row_view, viewGroup, false);
        viewGroup2.findViewById(R.id.widgets_cell_list).setPaddingRelative(this.mIndent, 0, 1, 0);
        return new WidgetsRowViewHolder(viewGroup2);
    }

    @Override // b.m.b.Q
    public boolean onFailedToRecycleView(w0 w0Var) {
        return true;
    }

    @Override // b.m.b.Q
    public void onViewRecycled(w0 w0Var) {
        WidgetsRowViewHolder widgetsRowViewHolder = (WidgetsRowViewHolder) w0Var;
        int childCount = widgetsRowViewHolder.cellContainer.getChildCount();
        for (int i = 0; i < childCount; i += 2) {
            WidgetCell widgetCell = (WidgetCell) widgetsRowViewHolder.cellContainer.getChildAt(i);
            widgetCell.mWidgetImage.animate().cancel();
            WidgetImageView widgetImageView = widgetCell.mWidgetImage;
            widgetImageView.mBitmap = null;
            widgetImageView.mBadge = null;
            widgetImageView.invalidate();
            widgetCell.mWidgetName.setText((CharSequence) null);
            widgetCell.mWidgetDims.setText((CharSequence) null);
            CancellationSignal cancellationSignal = widgetCell.mActiveRequest;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
                widgetCell.mActiveRequest = null;
            }
        }
    }

    public void setApplyBitmapDeferred(boolean z, RecyclerView recyclerView) {
        Bitmap bitmap;
        this.mApplyBitmapDeferred = z;
        int childCount = recyclerView.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return;
            }
            WidgetsRowViewHolder widgetsRowViewHolder = (WidgetsRowViewHolder) recyclerView.getChildViewHolder(recyclerView.getChildAt(childCount));
            int childCount2 = widgetsRowViewHolder.cellContainer.getChildCount();
            while (true) {
                childCount2--;
                if (childCount2 >= 0) {
                    View childAt = widgetsRowViewHolder.cellContainer.getChildAt(childCount2);
                    if (childAt instanceof WidgetCell) {
                        WidgetCell widgetCell = (WidgetCell) childAt;
                        boolean z2 = this.mApplyBitmapDeferred;
                        if (widgetCell.mApplyBitmapDeferred != z2) {
                            widgetCell.mApplyBitmapDeferred = z2;
                            if (!z2 && (bitmap = widgetCell.mDeferredBitmap) != null) {
                                widgetCell.applyPreview(bitmap);
                                widgetCell.mDeferredBitmap = null;
                            }
                        }
                    }
                }
            }
        }
    }
}

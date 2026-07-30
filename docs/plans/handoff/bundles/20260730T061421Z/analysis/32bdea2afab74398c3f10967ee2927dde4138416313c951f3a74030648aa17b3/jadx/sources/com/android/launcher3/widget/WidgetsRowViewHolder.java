package com.android.launcher3.widget;

import android.view.ViewGroup;
import b.m.b.w0;
import com.android.launcher3.BubbleTextView;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class WidgetsRowViewHolder extends w0 {
    public final ViewGroup cellContainer;
    public final BubbleTextView title;

    public WidgetsRowViewHolder(ViewGroup viewGroup) {
        super(viewGroup);
        this.cellContainer = (ViewGroup) viewGroup.findViewById(R.id.widgets_cell_list);
        BubbleTextView bubbleTextView = (BubbleTextView) viewGroup.findViewById(R.id.section);
        this.title = bubbleTextView;
        bubbleTextView.setAccessibilityDelegate(null);
    }
}

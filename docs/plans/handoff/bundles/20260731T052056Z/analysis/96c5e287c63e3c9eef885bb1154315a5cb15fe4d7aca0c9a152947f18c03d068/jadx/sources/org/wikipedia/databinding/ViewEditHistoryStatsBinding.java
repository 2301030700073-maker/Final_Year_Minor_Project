package org.wikipedia.databinding;

import android.widget.TextView;
import org.wikipedia.views.EditHistoryStatsView;
import org.wikipedia.views.GraphView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewEditHistoryStatsBinding {
    public final TextView articleTitleView;
    public final TextView editCountsView;
    public final GraphView statsGraphView;

    public ViewEditHistoryStatsBinding(EditHistoryStatsView editHistoryStatsView, TextView textView, TextView textView2, GraphView graphView) {
        this.articleTitleView = textView;
        this.editCountsView = textView2;
        this.statsGraphView = graphView;
    }
}

package org.wikipedia.views;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.databinding.ViewEditHistoryStatsBinding;
import org.wikipedia.dataclient.restbase.Metrics;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditHistoryStatsView extends ConstraintLayout {
    public final ViewEditHistoryStatsBinding binding;

    public EditHistoryStatsView(Context context) {
        super(context, null);
        LayoutInflater.from(context).inflate(R.layout.view_edit_history_stats, this);
        int i = R.id.articleTitleView;
        TextView textView = (TextView) Room.findChildViewById(this, R.id.articleTitleView);
        if (textView != null) {
            i = R.id.editCountsView;
            TextView textView2 = (TextView) Room.findChildViewById(this, R.id.editCountsView);
            if (textView2 != null) {
                i = R.id.statsGraphView;
                GraphView graphView = (GraphView) Room.findChildViewById(this, R.id.statsGraphView);
                if (graphView != null) {
                    this.binding = new ViewEditHistoryStatsBinding(this, textView, textView2, graphView);
                    setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                    int roundedDpToPx = Okio__OkioKt.roundedDpToPx(16.0f);
                    setPadding(roundedDpToPx, 0, roundedDpToPx, 0);
                    return;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final ViewEditHistoryStatsBinding getBinding() {
        return this.binding;
    }

    public final void setup(PageTitle pageTitle, EditHistoryListViewModel.EditHistoryStats editHistoryStats) {
        pageTitle.getClass();
        ViewEditHistoryStatsBinding viewEditHistoryStatsBinding = this.binding;
        TextView textView = viewEditHistoryStatsBinding.articleTitleView;
        GraphView graphView = viewEditHistoryStatsBinding.statsGraphView;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(getContext().getString(R.string.page_edit_history_activity_title, Animation.CC.m("<a href=\"#\">", pageTitle.getDisplayText(), "</a>"))));
        if (editHistoryStats != null) {
            String str = editHistoryStats.revision.timeStamp;
            if (!StringsKt.isBlank(str)) {
                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                String dateStringWithSkeletonPattern = DateUtil.getDateStringWithSkeletonPattern("yyyy", DateUtil.iso8601DateParse(str));
                LocalDateTime now = LocalDateTime.now();
                LocalDate localDate = now.toLocalDate();
                localDate.getClass();
                String shortDateString = DateUtil.getShortDateString(localDate);
                LocalDate localDate2 = now.minusYears(1L).toLocalDate();
                localDate2.getClass();
                String shortDateString2 = DateUtil.getShortDateString(localDate2);
                TextView textView2 = viewEditHistoryStatsBinding.editCountsView;
                Resources resources = getContext().getResources();
                int i = editHistoryStats.allEdits.count;
                textView2.setText(resources.getQuantityString(R.plurals.page_edit_history_article_edits_since_year, i, Integer.valueOf(i), dateStringWithSkeletonPattern));
                List list = editHistoryStats.metrics;
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Float.valueOf(((Metrics.Results) it.next()).edits));
                }
                graphView.setData(arrayList);
                graphView.setContentDescription(getContext().getString(R.string.page_edit_history_metrics_content_description, shortDateString2, shortDateString));
                View view = new View[]{graphView}[0];
                RegexKt.setTooltipText(view, view.getContentDescription());
            }
        }
        viewEditHistoryStatsBinding.articleTitleView.setMovementMethod(new LinkMovementMethodExt(new TextLinkScope$$ExternalSyntheticLambda3(15, this, pageTitle)));
    }
}

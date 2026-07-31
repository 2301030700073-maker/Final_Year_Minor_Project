package org.wikipedia.descriptions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import kotlin.Metadata;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.ViewUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/suggestededits/PageSummaryForEdit;", "summaryForEdit", "", "setSummary", "(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditBottomBarView extends ConstraintLayout {
    public final MultipartBody.Builder binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptionEditBottomBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_description_edit_read_article_bar, this);
        int i = R.id.viewArticleTitle;
        TextView textView = (TextView) Room.findChildViewById(this, R.id.viewArticleTitle);
        if (textView != null) {
            i = R.id.viewDivider;
            View findChildViewById = Room.findChildViewById(this, R.id.viewDivider);
            if (findChildViewById != null) {
                i = R.id.viewDownChevron;
                if (((ImageView) Room.findChildViewById(this, R.id.viewDownChevron)) != null) {
                    i = R.id.viewImageThumbnail;
                    ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.viewImageThumbnail);
                    if (imageView != null) {
                        this.binding = new MultipartBody.Builder(this, textView, findChildViewById, imageView);
                        setVisibility(8);
                        return;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final void setSummary(PageSummaryForEdit summaryForEdit) {
        summaryForEdit.getClass();
        BitmapsKt.setLayoutDirectionByLang(this, summaryForEdit.lang);
        MultipartBody.Builder builder = this.binding;
        TextView textView = (TextView) builder.boundary;
        ImageView imageView = (ImageView) builder.parts;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(StringUtil.removeNamespace(summaryForEdit.displayTitle)));
        String str = summaryForEdit.thumbnailUrl;
        if (str == null || str.length() == 0) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
            ViewUtil.loadImage$default(imageView, str, null, 28);
        }
        setVisibility(0);
    }
}

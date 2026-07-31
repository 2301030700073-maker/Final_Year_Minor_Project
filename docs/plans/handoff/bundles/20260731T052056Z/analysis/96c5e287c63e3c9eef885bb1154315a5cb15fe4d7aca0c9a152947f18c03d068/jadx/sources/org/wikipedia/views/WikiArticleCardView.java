package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import kotlin.Metadata;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.databinding.ViewWikiArticleCardBinding;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\fJ\r\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\b0\u00130\u0012¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0018\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lorg/wikipedia/views/WikiArticleCardView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "title", "", "setTitle", "(Ljava/lang/String;)V", "description", "setDescription", "Lorg/wikipedia/views/FaceAndColorDetectImageView;", "getImageView", "()Lorg/wikipedia/views/FaceAndColorDetectImageView;", "", "Landroid/util/Pair;", "Landroid/view/View;", "getSharedElements", "()[Landroid/util/Pair;", "Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;", "binding", "Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;", "getBinding", "()Lorg/wikipedia/databinding/ViewWikiArticleCardBinding;", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WikiArticleCardView extends ConstraintLayout {
    public final ViewWikiArticleCardBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikiArticleCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_wiki_article_card, this);
        int i = R.id.articleDescription;
        GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(this, R.id.articleDescription);
        if (goneIfEmptyTextView != null) {
            i = R.id.articleDivider;
            View findChildViewById = Room.findChildViewById(this, R.id.articleDivider);
            if (findChildViewById != null) {
                i = R.id.articleExtract;
                if (((TextView) Room.findChildViewById(this, R.id.articleExtract)) != null) {
                    i = R.id.articleImage;
                    FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(this, R.id.articleImage);
                    if (faceAndColorDetectImageView != null) {
                        i = R.id.articleImageContainer;
                        FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(this, R.id.articleImageContainer);
                        if (frameLayout != null) {
                            i = R.id.articleTitle;
                            TextView textView = (TextView) Room.findChildViewById(this, R.id.articleTitle);
                            if (textView != null) {
                                this.binding = new ViewWikiArticleCardBinding(this, goneIfEmptyTextView, findChildViewById, faceAndColorDetectImageView, frameLayout, textView);
                                return;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final ViewWikiArticleCardBinding getBinding() {
        return this.binding;
    }

    public final FaceAndColorDetectImageView getImageView() {
        return this.binding.articleImage;
    }

    public final Pair<View, String>[] getSharedElements() {
        Context context = getContext();
        context.getClass();
        ViewWikiArticleCardBinding viewWikiArticleCardBinding = this.binding;
        return Cookie.Companion.getSharedElements(context, viewWikiArticleCardBinding.articleTitle, viewWikiArticleCardBinding.articleDescription, viewWikiArticleCardBinding.articleImage);
    }

    public final void setDescription(String description) {
        this.binding.articleDescription.setText(description);
    }

    public final void setTitle(String title) {
        title.getClass();
        TextView textView = this.binding.articleTitle;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(title));
    }
}

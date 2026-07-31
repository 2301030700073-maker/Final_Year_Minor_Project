package org.wikipedia.descriptions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.compose.ui.node.NodeChain;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.room.Room;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.descriptions.DescriptionEditLicenseView;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditReviewView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;", "callback", "", "setLoginCallback", "(Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditReviewView extends ConstraintLayout {
    public final NodeChain binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptionEditReviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_description_edit_review, this);
        int i = R.id.articleContainer;
        ScrollView scrollView = (ScrollView) Room.findChildViewById(this, R.id.articleContainer);
        if (scrollView != null) {
            i = R.id.articleExtract;
            TextView textView = (TextView) Room.findChildViewById(this, R.id.articleExtract);
            if (textView != null) {
                i = R.id.articleImage;
                FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(this, R.id.articleImage);
                if (faceAndColorDetectImageView != null) {
                    i = R.id.articleSubtitle;
                    GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(this, R.id.articleSubtitle);
                    if (goneIfEmptyTextView != null) {
                        i = R.id.articleTitle;
                        TextView textView2 = (TextView) Room.findChildViewById(this, R.id.articleTitle);
                        if (textView2 != null) {
                            i = R.id.galleryContainer;
                            FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(this, R.id.galleryContainer);
                            if (frameLayout != null) {
                                i = R.id.galleryDescriptionText;
                                AppTextView appTextView = (AppTextView) Room.findChildViewById(this, R.id.galleryDescriptionText);
                                if (appTextView != null) {
                                    i = R.id.galleryImage;
                                    ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.galleryImage);
                                    if (imageView != null) {
                                        i = R.id.indicatorDivider;
                                        View findChildViewById = Room.findChildViewById(this, R.id.indicatorDivider);
                                        if (findChildViewById != null) {
                                            i = R.id.licenseContainer;
                                            if (((LinearLayout) Room.findChildViewById(this, R.id.licenseContainer)) != null) {
                                                i = R.id.licenseView;
                                                DescriptionEditLicenseView descriptionEditLicenseView = (DescriptionEditLicenseView) Room.findChildViewById(this, R.id.licenseView);
                                                if (descriptionEditLicenseView != null) {
                                                    this.binding = new NodeChain(this, scrollView, textView, faceAndColorDetectImageView, goneIfEmptyTextView, textView2, frameLayout, appTextView, imageView, findChildViewById, descriptionEditLicenseView, 6);
                                                    return;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final void setLoginCallback(DescriptionEditLicenseView.Callback callback) {
        callback.getClass();
        ((DescriptionEditLicenseView) this.binding.cachedDiffer).setCallback(callback);
    }
}

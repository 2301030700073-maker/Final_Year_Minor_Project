package org.wikipedia.databinding;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.TextInputLayout;
import org.wikipedia.descriptions.DescriptionEditBottomBarView;
import org.wikipedia.descriptions.DescriptionEditReviewView;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.views.PlainPasteEditText;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewDescriptionEditBinding {
    public final GroupCaptchaBinding captchaContainer;
    public final MaterialButton learnMoreButton;
    public final DescriptionEditView rootView;
    public final Chip suggestedDescButton;
    public final ImageView viewDescriptionEditCancelButton;
    public final LinearLayout viewDescriptionEditContainer;
    public final TextView viewDescriptionEditHeader;
    public final TextView viewDescriptionEditPageSummary;
    public final LinearLayout viewDescriptionEditPageSummaryContainer;
    public final TextView viewDescriptionEditPageSummaryLabel;
    public final LinearProgressIndicator viewDescriptionEditProgressBar;
    public final DescriptionEditBottomBarView viewDescriptionEditReadArticleBarContainer;
    public final DescriptionEditReviewView viewDescriptionEditReviewContainer;
    public final TextView viewDescriptionEditSaveButton;
    public final ScrollView viewDescriptionEditScrollview;
    public final PlainPasteEditText viewDescriptionEditText;
    public final TextInputLayout viewDescriptionEditTextLayout;
    public final FrameLayout viewDescriptionEditToolbarContainer;

    public ViewDescriptionEditBinding(DescriptionEditView descriptionEditView, GroupCaptchaBinding groupCaptchaBinding, MaterialButton materialButton, Chip chip, ImageView imageView, LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2, TextView textView3, LinearProgressIndicator linearProgressIndicator, DescriptionEditBottomBarView descriptionEditBottomBarView, DescriptionEditReviewView descriptionEditReviewView, TextView textView4, ScrollView scrollView, PlainPasteEditText plainPasteEditText, TextInputLayout textInputLayout, FrameLayout frameLayout) {
        this.rootView = descriptionEditView;
        this.captchaContainer = groupCaptchaBinding;
        this.learnMoreButton = materialButton;
        this.suggestedDescButton = chip;
        this.viewDescriptionEditCancelButton = imageView;
        this.viewDescriptionEditContainer = linearLayout;
        this.viewDescriptionEditHeader = textView;
        this.viewDescriptionEditPageSummary = textView2;
        this.viewDescriptionEditPageSummaryContainer = linearLayout2;
        this.viewDescriptionEditPageSummaryLabel = textView3;
        this.viewDescriptionEditProgressBar = linearProgressIndicator;
        this.viewDescriptionEditReadArticleBarContainer = descriptionEditBottomBarView;
        this.viewDescriptionEditReviewContainer = descriptionEditReviewView;
        this.viewDescriptionEditSaveButton = textView4;
        this.viewDescriptionEditScrollview = scrollView;
        this.viewDescriptionEditText = plainPasteEditText;
        this.viewDescriptionEditTextLayout = textInputLayout;
        this.viewDescriptionEditToolbarContainer = frameLayout;
    }
}

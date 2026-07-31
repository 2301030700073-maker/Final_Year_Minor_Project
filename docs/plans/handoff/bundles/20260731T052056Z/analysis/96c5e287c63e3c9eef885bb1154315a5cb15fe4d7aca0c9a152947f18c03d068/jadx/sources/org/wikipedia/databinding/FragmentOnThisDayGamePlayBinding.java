package org.wikipedia.databinding;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import org.wikipedia.games.onthisday.ScoreView;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentOnThisDayGamePlayBinding {
    public final FrameLayout bottomContent;
    public final FrameLayout centerContent;
    public final TextView correctIncorrectText;
    public final ConstraintLayout currentQuestionContainer;
    public final WikiErrorView errorView;
    public final TextView nextQuestionText;
    public final TextView pointsText;
    public final ProgressBar progressBar;
    public final WikiCardView questionCard1;
    public final WikiCardView questionCard2;
    public final LinearLayout questionContainer1;
    public final LinearLayout questionContainer2;
    public final TextView questionDate1;
    public final TextView questionDate2;
    public final ScrollView questionScroll1;
    public final ScrollView questionScroll2;
    public final ImageView questionStatusIcon1;
    public final ImageView questionStatusIcon2;
    public final TextView questionText1;
    public final TextView questionText2;
    public final FaceAndColorDetectImageView questionThumbnail1;
    public final FaceAndColorDetectImageView questionThumbnail2;
    public final CoordinatorLayout rootView;
    public final ScoreView scoreView;
    public final TextView whichCameFirstText;

    public FragmentOnThisDayGamePlayBinding(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, TextView textView, ConstraintLayout constraintLayout, WikiErrorView wikiErrorView, TextView textView2, TextView textView3, ProgressBar progressBar, WikiCardView wikiCardView, WikiCardView wikiCardView2, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView4, TextView textView5, ScrollView scrollView, ScrollView scrollView2, ImageView imageView, ImageView imageView2, TextView textView6, TextView textView7, FaceAndColorDetectImageView faceAndColorDetectImageView, FaceAndColorDetectImageView faceAndColorDetectImageView2, ScoreView scoreView, TextView textView8) {
        this.rootView = coordinatorLayout;
        this.bottomContent = frameLayout;
        this.centerContent = frameLayout2;
        this.correctIncorrectText = textView;
        this.currentQuestionContainer = constraintLayout;
        this.errorView = wikiErrorView;
        this.nextQuestionText = textView2;
        this.pointsText = textView3;
        this.progressBar = progressBar;
        this.questionCard1 = wikiCardView;
        this.questionCard2 = wikiCardView2;
        this.questionContainer1 = linearLayout;
        this.questionContainer2 = linearLayout2;
        this.questionDate1 = textView4;
        this.questionDate2 = textView5;
        this.questionScroll1 = scrollView;
        this.questionScroll2 = scrollView2;
        this.questionStatusIcon1 = imageView;
        this.questionStatusIcon2 = imageView2;
        this.questionText1 = textView6;
        this.questionText2 = textView7;
        this.questionThumbnail1 = faceAndColorDetectImageView;
        this.questionThumbnail2 = faceAndColorDetectImageView2;
        this.scoreView = scoreView;
        this.whichCameFirstText = textView8;
    }
}

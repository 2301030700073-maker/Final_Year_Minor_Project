package org.wikipedia.games.onthisday;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.text.method.ScrollingMovementMethod;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.shape.ShapeAppearanceModel;
import j$.time.LocalDate;
import j$.time.MonthDay;
import j$.time.format.DateTimeFormatter;
import j$.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp$logOut$2;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.databinding.FragmentOnThisDayGamePlayBinding;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda0;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.page.PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.SingleLiveData$sam$androidx_lifecycle_Observer$0;
import org.wikipedia.util.log.L;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.ViewUtil;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OnThisDayGamePlayFragment extends Fragment {
    public FragmentOnThisDayGamePlayBinding _binding;
    public final AnimatorSet cardAnimatorSetIn = new AnimatorSet();
    public final AnimatorSet cardAnimatorSetOut = new AnimatorSet();
    public OnThisDayGameActivity mainActivity;
    public MediaPlayer mediaPlayer;
    public WikiCardView selectedCardView;
    public final Request.Builder viewModel$delegate;

    public OnThisDayGamePlayFragment() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(OnThisDayGameViewModel.class), new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGamePlayFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGamePlayFragment.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGamePlayFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGamePlayFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGamePlayFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGamePlayFragment.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGamePlayFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGamePlayFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGamePlayFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGamePlayFragment.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGamePlayFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGamePlayFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        });
    }

    public final void animateQuestionsIn() {
        WikiGamesEvent.submit$default(984, Boolean.valueOf(getViewModel$4().isArchiveGame), null, "impression", "game_play", getViewModel$4().getCurrentScreenName(), null, null);
        OnThisDayGameActivity onThisDayGameActivity = this.mainActivity;
        if (onThisDayGameActivity != null) {
            onThisDayGameActivity.showAppBarDateText();
        }
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = this._binding;
        fragmentOnThisDayGamePlayBinding.getClass();
        fragmentOnThisDayGamePlayBinding.whichCameFirstText.setAlpha(RecyclerView.DECELERATION_RATE);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = this._binding;
        fragmentOnThisDayGamePlayBinding2.getClass();
        fragmentOnThisDayGamePlayBinding2.questionCard1.setAlpha(RecyclerView.DECELERATION_RATE);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = this._binding;
        fragmentOnThisDayGamePlayBinding3.getClass();
        fragmentOnThisDayGamePlayBinding3.questionCard2.setAlpha(RecyclerView.DECELERATION_RATE);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = this._binding;
        fragmentOnThisDayGamePlayBinding4.getClass();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(fragmentOnThisDayGamePlayBinding4.whichCameFirstText, "alpha", RecyclerView.DECELERATION_RATE, 1.0f);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = this._binding;
        fragmentOnThisDayGamePlayBinding5.getClass();
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(fragmentOnThisDayGamePlayBinding5.questionCard1, "translationX", Okio__OkioKt.dpToPx(400.0f), RecyclerView.DECELERATION_RATE);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = this._binding;
        fragmentOnThisDayGamePlayBinding6.getClass();
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(fragmentOnThisDayGamePlayBinding6.questionCard1, "alpha", RecyclerView.DECELERATION_RATE, 1.0f);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = this._binding;
        fragmentOnThisDayGamePlayBinding7.getClass();
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(fragmentOnThisDayGamePlayBinding7.questionCard2, "translationX", Okio__OkioKt.dpToPx(400.0f), RecyclerView.DECELERATION_RATE);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = this._binding;
        fragmentOnThisDayGamePlayBinding8.getClass();
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(fragmentOnThisDayGamePlayBinding8.questionCard2, "alpha", RecyclerView.DECELERATION_RATE, 1.0f);
        DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        ofFloat.setDuration(750L);
        ofFloat.setStartDelay(500L);
        ofFloat.setInterpolator(decelerateInterpolator);
        ofFloat2.setDuration(750L);
        ofFloat2.setStartDelay(1250L);
        ofFloat2.setInterpolator(decelerateInterpolator);
        ofFloat3.setDuration(750L);
        ofFloat3.setStartDelay(1250L);
        ofFloat3.setInterpolator(decelerateInterpolator);
        ofFloat4.setDuration(750L);
        ofFloat4.setStartDelay(2000L);
        ofFloat4.setInterpolator(decelerateInterpolator);
        ofFloat5.setDuration(750L);
        ofFloat5.setStartDelay(2000L);
        ofFloat5.setInterpolator(decelerateInterpolator);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = this._binding;
        fragmentOnThisDayGamePlayBinding9.getClass();
        fragmentOnThisDayGamePlayBinding9.questionCard1.setEnabled(false);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding10 = this._binding;
        fragmentOnThisDayGamePlayBinding10.getClass();
        fragmentOnThisDayGamePlayBinding10.questionCard2.setEnabled(false);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding11 = this._binding;
        fragmentOnThisDayGamePlayBinding11.getClass();
        fragmentOnThisDayGamePlayBinding11.questionText1.setEnabled(false);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding12 = this._binding;
        fragmentOnThisDayGamePlayBinding12.getClass();
        fragmentOnThisDayGamePlayBinding12.questionText2.setEnabled(false);
        AnimatorSet animatorSet = this.cardAnimatorSetIn;
        animatorSet.removeAllListeners();
        animatorSet.cancel();
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5);
        animatorSet.addListener(new PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1(1, this));
        animatorSet.start();
    }

    public final void enqueueGoNext(OnThisDayGameViewModel.GameState gameState) {
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = this._binding;
        fragmentOnThisDayGamePlayBinding.getClass();
        fragmentOnThisDayGamePlayBinding.questionDate1.setVisibility(0);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = this._binding;
        fragmentOnThisDayGamePlayBinding2.getClass();
        fragmentOnThisDayGamePlayBinding2.questionDate2.setVisibility(0);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = this._binding;
        fragmentOnThisDayGamePlayBinding3.getClass();
        fragmentOnThisDayGamePlayBinding3.questionCard1.setEnabled(false);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = this._binding;
        fragmentOnThisDayGamePlayBinding4.getClass();
        fragmentOnThisDayGamePlayBinding4.questionCard2.setEnabled(false);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = this._binding;
        fragmentOnThisDayGamePlayBinding5.getClass();
        fragmentOnThisDayGamePlayBinding5.questionText1.setEnabled(false);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = this._binding;
        fragmentOnThisDayGamePlayBinding6.getClass();
        fragmentOnThisDayGamePlayBinding6.questionText2.setEnabled(false);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = this._binding;
        fragmentOnThisDayGamePlayBinding7.getClass();
        fragmentOnThisDayGamePlayBinding7.whichCameFirstText.setVisibility(8);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = this._binding;
        fragmentOnThisDayGamePlayBinding8.getClass();
        fragmentOnThisDayGamePlayBinding8.nextQuestionText.setText(gameState.currentQuestionIndex >= gameState.totalQuestions + (-1) ? R.string.on_this_day_game_finish : R.string.on_this_day_game_next);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = this._binding;
        fragmentOnThisDayGamePlayBinding9.getClass();
        fragmentOnThisDayGamePlayBinding9.nextQuestionText.setVisibility(0);
    }

    public final void enqueueSubmit(WikiCardView wikiCardView) {
        if ((getViewModel$4()._gameState.getValue() instanceof OnThisDayGameViewModel.CurrentQuestion) || (getViewModel$4()._gameState.getValue() instanceof OnThisDayGameViewModel.GameStarted)) {
            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = this._binding;
            fragmentOnThisDayGamePlayBinding.getClass();
            fragmentOnThisDayGamePlayBinding.questionCard1.setDefaultBorder();
            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = this._binding;
            fragmentOnThisDayGamePlayBinding2.getClass();
            fragmentOnThisDayGamePlayBinding2.questionCard2.setDefaultBorder();
            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = this._binding;
            fragmentOnThisDayGamePlayBinding3.getClass();
            fragmentOnThisDayGamePlayBinding3.nextQuestionText.setText(R.string.on_this_day_game_submit);
            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = this._binding;
            fragmentOnThisDayGamePlayBinding4.getClass();
            fragmentOnThisDayGamePlayBinding4.nextQuestionText.setVisibility(0);
            wikiCardView.setStrokeColor(Cache.Companion.getThemedColorStateList(requireContext(), R.attr.progressive_color));
            wikiCardView.setStrokeWidth(Okio__OkioKt.roundedDpToPx(2.0f));
            this.selectedCardView = wikiCardView;
        }
    }

    public final OnThisDayGameViewModel getViewModel$4() {
        return (OnThisDayGameViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_on_this_day_game_play, viewGroup, false);
        int i = R.id.bottomContent;
        FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.bottomContent);
        if (frameLayout != null) {
            i = R.id.centerContent;
            FrameLayout frameLayout2 = (FrameLayout) Room.findChildViewById(inflate, R.id.centerContent);
            if (frameLayout2 != null) {
                i = R.id.correctIncorrectText;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.correctIncorrectText);
                if (textView != null) {
                    i = R.id.currentQuestionContainer;
                    ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(inflate, R.id.currentQuestionContainer);
                    if (constraintLayout != null) {
                        i = R.id.errorView;
                        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.errorView);
                        if (wikiErrorView != null) {
                            i = R.id.nextQuestionText;
                            TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.nextQuestionText);
                            if (textView2 != null) {
                                i = R.id.pointsText;
                                TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.pointsText);
                                if (textView3 != null) {
                                    i = R.id.progressBar;
                                    ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.progressBar);
                                    if (progressBar != null) {
                                        i = R.id.questionCard1;
                                        WikiCardView wikiCardView = (WikiCardView) Room.findChildViewById(inflate, R.id.questionCard1);
                                        if (wikiCardView != null) {
                                            i = R.id.questionCard2;
                                            WikiCardView wikiCardView2 = (WikiCardView) Room.findChildViewById(inflate, R.id.questionCard2);
                                            if (wikiCardView2 != null) {
                                                i = R.id.questionContainer1;
                                                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.questionContainer1);
                                                if (linearLayout != null) {
                                                    i = R.id.questionContainer2;
                                                    LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.questionContainer2);
                                                    if (linearLayout2 != null) {
                                                        i = R.id.questionDate1;
                                                        TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.questionDate1);
                                                        if (textView4 != null) {
                                                            i = R.id.questionDate2;
                                                            TextView textView5 = (TextView) Room.findChildViewById(inflate, R.id.questionDate2);
                                                            if (textView5 != null) {
                                                                i = R.id.questionScroll1;
                                                                ScrollView scrollView = (ScrollView) Room.findChildViewById(inflate, R.id.questionScroll1);
                                                                if (scrollView != null) {
                                                                    i = R.id.questionScroll2;
                                                                    ScrollView scrollView2 = (ScrollView) Room.findChildViewById(inflate, R.id.questionScroll2);
                                                                    if (scrollView2 != null) {
                                                                        i = R.id.questionStatusIcon1;
                                                                        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.questionStatusIcon1);
                                                                        if (imageView != null) {
                                                                            i = R.id.questionStatusIcon2;
                                                                            ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.questionStatusIcon2);
                                                                            if (imageView2 != null) {
                                                                                i = R.id.questionText1;
                                                                                TextView textView6 = (TextView) Room.findChildViewById(inflate, R.id.questionText1);
                                                                                if (textView6 != null) {
                                                                                    i = R.id.questionText2;
                                                                                    TextView textView7 = (TextView) Room.findChildViewById(inflate, R.id.questionText2);
                                                                                    if (textView7 != null) {
                                                                                        i = R.id.questionThumbnail1;
                                                                                        FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(inflate, R.id.questionThumbnail1);
                                                                                        if (faceAndColorDetectImageView != null) {
                                                                                            i = R.id.questionThumbnail2;
                                                                                            FaceAndColorDetectImageView faceAndColorDetectImageView2 = (FaceAndColorDetectImageView) Room.findChildViewById(inflate, R.id.questionThumbnail2);
                                                                                            if (faceAndColorDetectImageView2 != null) {
                                                                                                i = R.id.scoreView;
                                                                                                ScoreView scoreView = (ScoreView) Room.findChildViewById(inflate, R.id.scoreView);
                                                                                                if (scoreView != null) {
                                                                                                    i = R.id.whichCameFirstText;
                                                                                                    TextView textView8 = (TextView) Room.findChildViewById(inflate, R.id.whichCameFirstText);
                                                                                                    if (textView8 != null) {
                                                                                                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) inflate;
                                                                                                        this._binding = new FragmentOnThisDayGamePlayBinding(coordinatorLayout, frameLayout, frameLayout2, textView, constraintLayout, wikiErrorView, textView2, textView3, progressBar, wikiCardView, wikiCardView2, linearLayout, linearLayout2, textView4, textView5, scrollView, scrollView2, imageView, imageView2, textView6, textView7, faceAndColorDetectImageView, faceAndColorDetectImageView2, scoreView, textView8);
                                                                                                        coordinatorLayout.getClass();
                                                                                                        return coordinatorLayout;
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
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.mCalled = true;
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        this.mediaPlayer = new MediaPlayer();
        AppCompatActivity activity = getActivity();
        this.mainActivity = activity instanceof OnThisDayGameActivity ? (OnThisDayGameActivity) activity : null;
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = this._binding;
        fragmentOnThisDayGamePlayBinding.getClass();
        final int i = 0;
        fragmentOnThisDayGamePlayBinding.errorView.setRetryClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGamePlayFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i2 = i;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.f$0;
                switch (i2) {
                    case 0:
                        OnThisDayGameViewModel viewModel$4 = onThisDayGamePlayFragment.getViewModel$4();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$4), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$4, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$4, true, null), 2);
                        break;
                    case 1:
                        onThisDayGamePlayFragment.requireActivity().finish();
                        break;
                    case 2:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 3:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding2.questionCard1);
                        break;
                    case 4:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding3.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding3.questionCard1);
                        break;
                    case 5:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 6:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding4.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding4.questionCard2);
                        break;
                    case 7:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding5.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding5.questionCard2);
                        break;
                    default:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding6.getClass();
                        fragmentOnThisDayGamePlayBinding6.nextQuestionText.setVisibility(8);
                        WikiCardView wikiCardView = onThisDayGamePlayFragment.selectedCardView;
                        if (wikiCardView == null) {
                            OnThisDayGameViewModel viewModel$42 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$42), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$42, 1), null, new WikipediaApp$logOut$2(viewModel$42, 0, null), 2);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding7.getClass();
                            fragmentOnThisDayGamePlayBinding7.nextQuestionText.setVisibility(8);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding8.getClass();
                            fragmentOnThisDayGamePlayBinding8.questionCard1.setDefaultBorder();
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding9.getClass();
                            fragmentOnThisDayGamePlayBinding9.questionCard2.setDefaultBorder();
                            break;
                        } else {
                            Object tag = wikiCardView.getTag();
                            tag.getClass();
                            OnThisDayGameViewModel viewModel$43 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$43), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$43, 1), null, new WikipediaApp$logOut$2(viewModel$43, ((OnThisDay.Event) tag).year, null), 2);
                            onThisDayGamePlayFragment.selectedCardView = null;
                            break;
                        }
                }
            }
        });
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = this._binding;
        fragmentOnThisDayGamePlayBinding2.getClass();
        final int i2 = 1;
        fragmentOnThisDayGamePlayBinding2.errorView.setBackClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGamePlayFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i2;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.f$0;
                switch (i22) {
                    case 0:
                        OnThisDayGameViewModel viewModel$4 = onThisDayGamePlayFragment.getViewModel$4();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$4), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$4, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$4, true, null), 2);
                        break;
                    case 1:
                        onThisDayGamePlayFragment.requireActivity().finish();
                        break;
                    case 2:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 3:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding22.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding22.questionCard1);
                        break;
                    case 4:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding3.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding3.questionCard1);
                        break;
                    case 5:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 6:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding4.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding4.questionCard2);
                        break;
                    case 7:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding5.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding5.questionCard2);
                        break;
                    default:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding6.getClass();
                        fragmentOnThisDayGamePlayBinding6.nextQuestionText.setVisibility(8);
                        WikiCardView wikiCardView = onThisDayGamePlayFragment.selectedCardView;
                        if (wikiCardView == null) {
                            OnThisDayGameViewModel viewModel$42 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$42), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$42, 1), null, new WikipediaApp$logOut$2(viewModel$42, 0, null), 2);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding7.getClass();
                            fragmentOnThisDayGamePlayBinding7.nextQuestionText.setVisibility(8);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding8.getClass();
                            fragmentOnThisDayGamePlayBinding8.questionCard1.setDefaultBorder();
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding9.getClass();
                            fragmentOnThisDayGamePlayBinding9.questionCard2.setDefaultBorder();
                            break;
                        } else {
                            Object tag = wikiCardView.getTag();
                            tag.getClass();
                            OnThisDayGameViewModel viewModel$43 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$43), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$43, 1), null, new WikipediaApp$logOut$2(viewModel$43, ((OnThisDay.Event) tag).year, null), 2);
                            onThisDayGamePlayFragment.selectedCardView = null;
                            break;
                        }
                }
            }
        });
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = this._binding;
        fragmentOnThisDayGamePlayBinding3.getClass();
        final int i3 = 2;
        fragmentOnThisDayGamePlayBinding3.questionCard1.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGamePlayFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i3;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.f$0;
                switch (i22) {
                    case 0:
                        OnThisDayGameViewModel viewModel$4 = onThisDayGamePlayFragment.getViewModel$4();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$4), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$4, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$4, true, null), 2);
                        break;
                    case 1:
                        onThisDayGamePlayFragment.requireActivity().finish();
                        break;
                    case 2:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 3:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding22.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding22.questionCard1);
                        break;
                    case 4:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding32 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding32.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding32.questionCard1);
                        break;
                    case 5:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 6:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding4.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding4.questionCard2);
                        break;
                    case 7:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding5.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding5.questionCard2);
                        break;
                    default:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding6.getClass();
                        fragmentOnThisDayGamePlayBinding6.nextQuestionText.setVisibility(8);
                        WikiCardView wikiCardView = onThisDayGamePlayFragment.selectedCardView;
                        if (wikiCardView == null) {
                            OnThisDayGameViewModel viewModel$42 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$42), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$42, 1), null, new WikipediaApp$logOut$2(viewModel$42, 0, null), 2);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding7.getClass();
                            fragmentOnThisDayGamePlayBinding7.nextQuestionText.setVisibility(8);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding8.getClass();
                            fragmentOnThisDayGamePlayBinding8.questionCard1.setDefaultBorder();
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding9.getClass();
                            fragmentOnThisDayGamePlayBinding9.questionCard2.setDefaultBorder();
                            break;
                        } else {
                            Object tag = wikiCardView.getTag();
                            tag.getClass();
                            OnThisDayGameViewModel viewModel$43 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$43), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$43, 1), null, new WikipediaApp$logOut$2(viewModel$43, ((OnThisDay.Event) tag).year, null), 2);
                            onThisDayGamePlayFragment.selectedCardView = null;
                            break;
                        }
                }
            }
        });
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = this._binding;
        fragmentOnThisDayGamePlayBinding4.getClass();
        final int i4 = 3;
        fragmentOnThisDayGamePlayBinding4.questionContainer1.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGamePlayFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i4;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.f$0;
                switch (i22) {
                    case 0:
                        OnThisDayGameViewModel viewModel$4 = onThisDayGamePlayFragment.getViewModel$4();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$4), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$4, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$4, true, null), 2);
                        break;
                    case 1:
                        onThisDayGamePlayFragment.requireActivity().finish();
                        break;
                    case 2:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 3:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding22.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding22.questionCard1);
                        break;
                    case 4:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding32 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding32.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding32.questionCard1);
                        break;
                    case 5:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 6:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding42 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding42.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding42.questionCard2);
                        break;
                    case 7:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding5.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding5.questionCard2);
                        break;
                    default:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding6.getClass();
                        fragmentOnThisDayGamePlayBinding6.nextQuestionText.setVisibility(8);
                        WikiCardView wikiCardView = onThisDayGamePlayFragment.selectedCardView;
                        if (wikiCardView == null) {
                            OnThisDayGameViewModel viewModel$42 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$42), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$42, 1), null, new WikipediaApp$logOut$2(viewModel$42, 0, null), 2);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding7.getClass();
                            fragmentOnThisDayGamePlayBinding7.nextQuestionText.setVisibility(8);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding8.getClass();
                            fragmentOnThisDayGamePlayBinding8.questionCard1.setDefaultBorder();
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding9.getClass();
                            fragmentOnThisDayGamePlayBinding9.questionCard2.setDefaultBorder();
                            break;
                        } else {
                            Object tag = wikiCardView.getTag();
                            tag.getClass();
                            OnThisDayGameViewModel viewModel$43 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$43), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$43, 1), null, new WikipediaApp$logOut$2(viewModel$43, ((OnThisDay.Event) tag).year, null), 2);
                            onThisDayGamePlayFragment.selectedCardView = null;
                            break;
                        }
                }
            }
        });
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = this._binding;
        fragmentOnThisDayGamePlayBinding5.getClass();
        final int i5 = 4;
        fragmentOnThisDayGamePlayBinding5.questionText1.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGamePlayFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i5;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.f$0;
                switch (i22) {
                    case 0:
                        OnThisDayGameViewModel viewModel$4 = onThisDayGamePlayFragment.getViewModel$4();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$4), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$4, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$4, true, null), 2);
                        break;
                    case 1:
                        onThisDayGamePlayFragment.requireActivity().finish();
                        break;
                    case 2:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 3:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding22.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding22.questionCard1);
                        break;
                    case 4:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding32 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding32.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding32.questionCard1);
                        break;
                    case 5:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 6:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding42 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding42.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding42.questionCard2);
                        break;
                    case 7:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding52 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding52.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding52.questionCard2);
                        break;
                    default:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding6.getClass();
                        fragmentOnThisDayGamePlayBinding6.nextQuestionText.setVisibility(8);
                        WikiCardView wikiCardView = onThisDayGamePlayFragment.selectedCardView;
                        if (wikiCardView == null) {
                            OnThisDayGameViewModel viewModel$42 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$42), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$42, 1), null, new WikipediaApp$logOut$2(viewModel$42, 0, null), 2);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding7.getClass();
                            fragmentOnThisDayGamePlayBinding7.nextQuestionText.setVisibility(8);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding8.getClass();
                            fragmentOnThisDayGamePlayBinding8.questionCard1.setDefaultBorder();
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding9.getClass();
                            fragmentOnThisDayGamePlayBinding9.questionCard2.setDefaultBorder();
                            break;
                        } else {
                            Object tag = wikiCardView.getTag();
                            tag.getClass();
                            OnThisDayGameViewModel viewModel$43 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$43), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$43, 1), null, new WikipediaApp$logOut$2(viewModel$43, ((OnThisDay.Event) tag).year, null), 2);
                            onThisDayGamePlayFragment.selectedCardView = null;
                            break;
                        }
                }
            }
        });
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = this._binding;
        fragmentOnThisDayGamePlayBinding6.getClass();
        final int i6 = 5;
        fragmentOnThisDayGamePlayBinding6.questionCard2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGamePlayFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i6;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.f$0;
                switch (i22) {
                    case 0:
                        OnThisDayGameViewModel viewModel$4 = onThisDayGamePlayFragment.getViewModel$4();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$4), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$4, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$4, true, null), 2);
                        break;
                    case 1:
                        onThisDayGamePlayFragment.requireActivity().finish();
                        break;
                    case 2:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 3:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding22.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding22.questionCard1);
                        break;
                    case 4:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding32 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding32.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding32.questionCard1);
                        break;
                    case 5:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 6:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding42 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding42.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding42.questionCard2);
                        break;
                    case 7:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding52 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding52.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding52.questionCard2);
                        break;
                    default:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding62 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding62.getClass();
                        fragmentOnThisDayGamePlayBinding62.nextQuestionText.setVisibility(8);
                        WikiCardView wikiCardView = onThisDayGamePlayFragment.selectedCardView;
                        if (wikiCardView == null) {
                            OnThisDayGameViewModel viewModel$42 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$42), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$42, 1), null, new WikipediaApp$logOut$2(viewModel$42, 0, null), 2);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding7.getClass();
                            fragmentOnThisDayGamePlayBinding7.nextQuestionText.setVisibility(8);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding8.getClass();
                            fragmentOnThisDayGamePlayBinding8.questionCard1.setDefaultBorder();
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding9.getClass();
                            fragmentOnThisDayGamePlayBinding9.questionCard2.setDefaultBorder();
                            break;
                        } else {
                            Object tag = wikiCardView.getTag();
                            tag.getClass();
                            OnThisDayGameViewModel viewModel$43 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$43), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$43, 1), null, new WikipediaApp$logOut$2(viewModel$43, ((OnThisDay.Event) tag).year, null), 2);
                            onThisDayGamePlayFragment.selectedCardView = null;
                            break;
                        }
                }
            }
        });
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = this._binding;
        fragmentOnThisDayGamePlayBinding7.getClass();
        final int i7 = 6;
        fragmentOnThisDayGamePlayBinding7.questionContainer2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGamePlayFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i7;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.f$0;
                switch (i22) {
                    case 0:
                        OnThisDayGameViewModel viewModel$4 = onThisDayGamePlayFragment.getViewModel$4();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$4), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$4, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$4, true, null), 2);
                        break;
                    case 1:
                        onThisDayGamePlayFragment.requireActivity().finish();
                        break;
                    case 2:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 3:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding22.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding22.questionCard1);
                        break;
                    case 4:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding32 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding32.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding32.questionCard1);
                        break;
                    case 5:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 6:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding42 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding42.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding42.questionCard2);
                        break;
                    case 7:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding52 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding52.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding52.questionCard2);
                        break;
                    default:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding62 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding62.getClass();
                        fragmentOnThisDayGamePlayBinding62.nextQuestionText.setVisibility(8);
                        WikiCardView wikiCardView = onThisDayGamePlayFragment.selectedCardView;
                        if (wikiCardView == null) {
                            OnThisDayGameViewModel viewModel$42 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$42), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$42, 1), null, new WikipediaApp$logOut$2(viewModel$42, 0, null), 2);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding72 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding72.getClass();
                            fragmentOnThisDayGamePlayBinding72.nextQuestionText.setVisibility(8);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding8.getClass();
                            fragmentOnThisDayGamePlayBinding8.questionCard1.setDefaultBorder();
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding9.getClass();
                            fragmentOnThisDayGamePlayBinding9.questionCard2.setDefaultBorder();
                            break;
                        } else {
                            Object tag = wikiCardView.getTag();
                            tag.getClass();
                            OnThisDayGameViewModel viewModel$43 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$43), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$43, 1), null, new WikipediaApp$logOut$2(viewModel$43, ((OnThisDay.Event) tag).year, null), 2);
                            onThisDayGamePlayFragment.selectedCardView = null;
                            break;
                        }
                }
            }
        });
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = this._binding;
        fragmentOnThisDayGamePlayBinding8.getClass();
        final int i8 = 7;
        fragmentOnThisDayGamePlayBinding8.questionText2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGamePlayFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i8;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.f$0;
                switch (i22) {
                    case 0:
                        OnThisDayGameViewModel viewModel$4 = onThisDayGamePlayFragment.getViewModel$4();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$4), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$4, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$4, true, null), 2);
                        break;
                    case 1:
                        onThisDayGamePlayFragment.requireActivity().finish();
                        break;
                    case 2:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 3:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding22.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding22.questionCard1);
                        break;
                    case 4:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding32 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding32.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding32.questionCard1);
                        break;
                    case 5:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 6:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding42 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding42.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding42.questionCard2);
                        break;
                    case 7:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding52 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding52.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding52.questionCard2);
                        break;
                    default:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding62 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding62.getClass();
                        fragmentOnThisDayGamePlayBinding62.nextQuestionText.setVisibility(8);
                        WikiCardView wikiCardView = onThisDayGamePlayFragment.selectedCardView;
                        if (wikiCardView == null) {
                            OnThisDayGameViewModel viewModel$42 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$42), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$42, 1), null, new WikipediaApp$logOut$2(viewModel$42, 0, null), 2);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding72 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding72.getClass();
                            fragmentOnThisDayGamePlayBinding72.nextQuestionText.setVisibility(8);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding82 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding82.getClass();
                            fragmentOnThisDayGamePlayBinding82.questionCard1.setDefaultBorder();
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding9.getClass();
                            fragmentOnThisDayGamePlayBinding9.questionCard2.setDefaultBorder();
                            break;
                        } else {
                            Object tag = wikiCardView.getTag();
                            tag.getClass();
                            OnThisDayGameViewModel viewModel$43 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$43), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$43, 1), null, new WikipediaApp$logOut$2(viewModel$43, ((OnThisDay.Event) tag).year, null), 2);
                            onThisDayGamePlayFragment.selectedCardView = null;
                            break;
                        }
                }
            }
        });
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = this._binding;
        fragmentOnThisDayGamePlayBinding9.getClass();
        fragmentOnThisDayGamePlayBinding9.questionText1.setMovementMethod(new ScrollingMovementMethod());
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding10 = this._binding;
        fragmentOnThisDayGamePlayBinding10.getClass();
        fragmentOnThisDayGamePlayBinding10.questionText2.setMovementMethod(new ScrollingMovementMethod());
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding11 = this._binding;
        fragmentOnThisDayGamePlayBinding11.getClass();
        final int i9 = 8;
        fragmentOnThisDayGamePlayBinding11.nextQuestionText.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGamePlayFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ OnThisDayGamePlayFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i9;
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = this.f$0;
                switch (i22) {
                    case 0:
                        OnThisDayGameViewModel viewModel$4 = onThisDayGamePlayFragment.getViewModel$4();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$4), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$4, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$4, true, null), 2);
                        break;
                    case 1:
                        onThisDayGamePlayFragment.requireActivity().finish();
                        break;
                    case 2:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 3:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding22.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding22.questionCard1);
                        break;
                    case 4:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding32 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding32.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding32.questionCard1);
                        break;
                    case 5:
                        view2.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit((WikiCardView) view2);
                        break;
                    case 6:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding42 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding42.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding42.questionCard2);
                        break;
                    case 7:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding52 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding52.getClass();
                        onThisDayGamePlayFragment.enqueueSubmit(fragmentOnThisDayGamePlayBinding52.questionCard2);
                        break;
                    default:
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding62 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding62.getClass();
                        fragmentOnThisDayGamePlayBinding62.nextQuestionText.setVisibility(8);
                        WikiCardView wikiCardView = onThisDayGamePlayFragment.selectedCardView;
                        if (wikiCardView == null) {
                            OnThisDayGameViewModel viewModel$42 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$42), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$42, 1), null, new WikipediaApp$logOut$2(viewModel$42, 0, null), 2);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding72 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding72.getClass();
                            fragmentOnThisDayGamePlayBinding72.nextQuestionText.setVisibility(8);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding82 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding82.getClass();
                            fragmentOnThisDayGamePlayBinding82.questionCard1.setDefaultBorder();
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding92 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding92.getClass();
                            fragmentOnThisDayGamePlayBinding92.questionCard2.setDefaultBorder();
                            break;
                        } else {
                            Object tag = wikiCardView.getTag();
                            tag.getClass();
                            OnThisDayGameViewModel viewModel$43 = onThisDayGamePlayFragment.getViewModel$4();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$43), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$43, 1), null, new WikipediaApp$logOut$2(viewModel$43, ((OnThisDay.Event) tag).year, null), 2);
                            onThisDayGamePlayFragment.selectedCardView = null;
                            break;
                        }
                }
            }
        });
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding12 = this._binding;
        fragmentOnThisDayGamePlayBinding12.getClass();
        fragmentOnThisDayGamePlayBinding12.rootView.setOnApplyWindowInsetsListener(new MainActivity$$ExternalSyntheticLambda0(i3, this));
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding13 = this._binding;
        fragmentOnThisDayGamePlayBinding13.getClass();
        ScoreView scoreView = fragmentOnThisDayGamePlayBinding13.scoreView;
        scoreView.removeAllViews();
        ArrayList arrayList = scoreView.scoreViews;
        arrayList.clear();
        for (int i10 = 0; i10 < 5; i10++) {
            ShapeableImageView shapeableImageView = new ShapeableImageView(scoreView.getContext(), null, 0);
            int roundedDpToPx = Okio__OkioKt.roundedDpToPx(22.0f);
            int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(2.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(roundedDpToPx, roundedDpToPx);
            layoutParams.setMarginStart(roundedDpToPx2);
            layoutParams.setMarginEnd(roundedDpToPx2);
            shapeableImageView.setLayoutParams(layoutParams);
            Context context = scoreView.getContext();
            context.getClass();
            shapeableImageView.setBackgroundColor(Cache.Companion.getThemedColor(context, R.attr.paper_color));
            shapeableImageView.setStrokeWidth(1.0f);
            Context context2 = scoreView.getContext();
            context2.getClass();
            shapeableImageView.setStrokeColor(ColorStateList.valueOf(Cache.Companion.getThemedColor(context2, R.attr.paper_color)));
            shapeableImageView.setPadding(2, 2, 2, 2);
            shapeableImageView.setShapeAppearanceModel(ShapeAppearanceModel.builder(scoreView.getContext(), 0, R.style.CircularImageView).build());
            arrayList.add(shapeableImageView);
            scoreView.addView(shapeableImageView);
        }
        getViewModel$4()._gameState.observe(getViewLifecycleOwner(), new SingleLiveData$sam$androidx_lifecycle_Observer$0(new MainActivity$$ExternalSyntheticLambda1(15, this), i4));
    }

    public final void playSound(String str) {
        Prefs prefs = Prefs.INSTANCE;
        if (Prefs.isOtdSoundOn()) {
            try {
                MediaPlayer mediaPlayer = this.mediaPlayer;
                if (mediaPlayer != null) {
                    mediaPlayer.reset();
                    Context requireContext = requireContext();
                    Uri parse = Uri.parse("android.resource://" + requireContext().getPackageName() + "/raw/" + str);
                    parse.getClass();
                    mediaPlayer.setDataSource(requireContext, parse);
                    mediaPlayer.prepare();
                    mediaPlayer.start();
                }
            } catch (Exception e) {
                L.e(e);
            }
        }
    }

    public final void setCorrectIcon(ImageView imageView) {
        imageView.setImageResource(R.drawable.check_circle_24px);
        imageView.setImageTintList(Cache.Companion.getThemedColorStateList(requireContext(), R.attr.success_color));
        imageView.setVisibility(0);
    }

    public final void updateGameState(OnThisDayGameViewModel.GameState gameState) {
        int i;
        int i2;
        gameState.getClass();
        OnThisDayGameViewModel.QuestionState questionState = gameState.currentQuestionState;
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = this._binding;
        fragmentOnThisDayGamePlayBinding.getClass();
        fragmentOnThisDayGamePlayBinding.progressBar.setVisibility(8);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = this._binding;
        fragmentOnThisDayGamePlayBinding2.getClass();
        fragmentOnThisDayGamePlayBinding2.errorView.setVisibility(8);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = this._binding;
        fragmentOnThisDayGamePlayBinding3.getClass();
        fragmentOnThisDayGamePlayBinding3.scoreView.setVisibility(0);
        OnThisDayGameActivity onThisDayGameActivity = this.mainActivity;
        if (onThisDayGameActivity != null) {
            onThisDayGameActivity.showAppBarDateText();
        }
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = this._binding;
        fragmentOnThisDayGamePlayBinding4.getClass();
        fragmentOnThisDayGamePlayBinding4.questionDate1.setVisibility(8);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = this._binding;
        fragmentOnThisDayGamePlayBinding5.getClass();
        fragmentOnThisDayGamePlayBinding5.questionDate2.setVisibility(8);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = this._binding;
        fragmentOnThisDayGamePlayBinding6.getClass();
        fragmentOnThisDayGamePlayBinding6.questionStatusIcon1.setVisibility(8);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = this._binding;
        fragmentOnThisDayGamePlayBinding7.getClass();
        fragmentOnThisDayGamePlayBinding7.questionStatusIcon2.setVisibility(8);
        String format = MonthDay.of(getViewModel$4().currentDate.getMonthValue(), getViewModel$4().currentDate.getDayOfMonth()).format(DateTimeFormatter.ofPattern(DateFormat.getBestDateTimePattern(Locale.getDefault(), "MMMM d")));
        OnThisDayGameActivity onThisDayGameActivity2 = this.mainActivity;
        if (onThisDayGameActivity2 != null) {
            format.getClass();
            Request.Builder builder = onThisDayGameActivity2.binding;
            if (builder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TextView) builder.headers).setText(format);
        }
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = this._binding;
        fragmentOnThisDayGamePlayBinding8.getClass();
        ScoreView scoreView = fragmentOnThisDayGamePlayBinding8.scoreView;
        List list = gameState.answerState;
        int i3 = gameState.currentQuestionIndex;
        boolean z = questionState.goToNext;
        list.getClass();
        int size = list.size();
        int i4 = 0;
        while (true) {
            boolean z2 = true;
            if (i4 >= size) {
                OnThisDay.Event event = questionState.event1;
                OnThisDay.Event event2 = questionState.event2;
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = this._binding;
                fragmentOnThisDayGamePlayBinding9.getClass();
                fragmentOnThisDayGamePlayBinding9.questionCard1.setTag(event);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding10 = this._binding;
                fragmentOnThisDayGamePlayBinding10.getClass();
                fragmentOnThisDayGamePlayBinding10.questionCard2.setTag(event2);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding11 = this._binding;
                fragmentOnThisDayGamePlayBinding11.getClass();
                TextView textView = fragmentOnThisDayGamePlayBinding11.questionDate1;
                FormatStyle formatStyle = FormatStyle.LONG;
                textView.setText(DateTimeFormatter.ofLocalizedDate(formatStyle).format(LocalDate.of(event.year, getViewModel$4().currentDate.getMonthValue(), getViewModel$4().currentDate.getDayOfMonth())));
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding12 = this._binding;
                fragmentOnThisDayGamePlayBinding12.getClass();
                TextView textView2 = fragmentOnThisDayGamePlayBinding12.questionText1;
                ViewGroup.LayoutParams layoutParams = textView2.getLayoutParams();
                if (layoutParams == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    return;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.bottomMargin = 0;
                textView2.setLayoutParams(marginLayoutParams);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding13 = this._binding;
                fragmentOnThisDayGamePlayBinding13.getClass();
                fragmentOnThisDayGamePlayBinding13.questionText1.setText(event.text);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding14 = this._binding;
                fragmentOnThisDayGamePlayBinding14.getClass();
                fragmentOnThisDayGamePlayBinding14.questionText1.setScrollY(0);
                getViewModel$4();
                String thumbnailUrlForEvent = OnThisDayGameViewModel.getThumbnailUrlForEvent(event);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding15 = this._binding;
                fragmentOnThisDayGamePlayBinding15.getClass();
                fragmentOnThisDayGamePlayBinding15.questionThumbnail1.setTag(Boolean.valueOf(thumbnailUrlForEvent == null || thumbnailUrlForEvent.length() == 0));
                if (thumbnailUrlForEvent == null || thumbnailUrlForEvent.length() == 0) {
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding16 = this._binding;
                    fragmentOnThisDayGamePlayBinding16.getClass();
                    fragmentOnThisDayGamePlayBinding16.questionThumbnail1.setVisibility(8);
                } else {
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding17 = this._binding;
                    fragmentOnThisDayGamePlayBinding17.getClass();
                    fragmentOnThisDayGamePlayBinding17.questionThumbnail1.setVisibility(0);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding18 = this._binding;
                    fragmentOnThisDayGamePlayBinding18.getClass();
                    ViewUtil.loadImage$default(fragmentOnThisDayGamePlayBinding18.questionThumbnail1, thumbnailUrlForEvent, null, 20);
                }
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding19 = this._binding;
                fragmentOnThisDayGamePlayBinding19.getClass();
                fragmentOnThisDayGamePlayBinding19.questionDate2.setText(DateTimeFormatter.ofLocalizedDate(formatStyle).format(LocalDate.of(event2.year, getViewModel$4().currentDate.getMonthValue(), getViewModel$4().currentDate.getDayOfMonth())));
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding20 = this._binding;
                fragmentOnThisDayGamePlayBinding20.getClass();
                TextView textView3 = fragmentOnThisDayGamePlayBinding20.questionText2;
                ViewGroup.LayoutParams layoutParams2 = textView3.getLayoutParams();
                if (layoutParams2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    return;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                marginLayoutParams2.bottomMargin = 0;
                textView3.setLayoutParams(marginLayoutParams2);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding21 = this._binding;
                fragmentOnThisDayGamePlayBinding21.getClass();
                fragmentOnThisDayGamePlayBinding21.questionText2.setText(event2.text);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = this._binding;
                fragmentOnThisDayGamePlayBinding22.getClass();
                fragmentOnThisDayGamePlayBinding22.questionText2.setScrollY(0);
                getViewModel$4();
                String thumbnailUrlForEvent2 = OnThisDayGameViewModel.getThumbnailUrlForEvent(event2);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding23 = this._binding;
                fragmentOnThisDayGamePlayBinding23.getClass();
                FaceAndColorDetectImageView faceAndColorDetectImageView = fragmentOnThisDayGamePlayBinding23.questionThumbnail2;
                if (thumbnailUrlForEvent2 != null && thumbnailUrlForEvent2.length() != 0) {
                    z2 = false;
                }
                faceAndColorDetectImageView.setTag(Boolean.valueOf(z2));
                if (thumbnailUrlForEvent2 == null || thumbnailUrlForEvent2.length() == 0) {
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding24 = this._binding;
                    fragmentOnThisDayGamePlayBinding24.getClass();
                    fragmentOnThisDayGamePlayBinding24.questionThumbnail2.setVisibility(8);
                } else {
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding25 = this._binding;
                    fragmentOnThisDayGamePlayBinding25.getClass();
                    fragmentOnThisDayGamePlayBinding25.questionThumbnail2.setVisibility(0);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding26 = this._binding;
                    fragmentOnThisDayGamePlayBinding26.getClass();
                    ViewUtil.loadImage$default(fragmentOnThisDayGamePlayBinding26.questionThumbnail2, thumbnailUrlForEvent2, null, 20);
                }
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding27 = this._binding;
                fragmentOnThisDayGamePlayBinding27.getClass();
                fragmentOnThisDayGamePlayBinding27.whichCameFirstText.setVisibility(0);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding28 = this._binding;
                fragmentOnThisDayGamePlayBinding28.getClass();
                fragmentOnThisDayGamePlayBinding28.whichCameFirstText.setText(R.string.on_this_day_game_title);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding29 = this._binding;
                fragmentOnThisDayGamePlayBinding29.getClass();
                fragmentOnThisDayGamePlayBinding29.pointsText.setVisibility(8);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding30 = this._binding;
                fragmentOnThisDayGamePlayBinding30.getClass();
                fragmentOnThisDayGamePlayBinding30.nextQuestionText.setVisibility(8);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding31 = this._binding;
                fragmentOnThisDayGamePlayBinding31.getClass();
                fragmentOnThisDayGamePlayBinding31.questionDate1.setTextColor(Cache.Companion.getThemedColor(requireContext(), R.attr.primary_color));
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding32 = this._binding;
                fragmentOnThisDayGamePlayBinding32.getClass();
                fragmentOnThisDayGamePlayBinding32.questionDate2.setTextColor(Cache.Companion.getThemedColor(requireContext(), R.attr.primary_color));
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding33 = this._binding;
                fragmentOnThisDayGamePlayBinding33.getClass();
                fragmentOnThisDayGamePlayBinding33.questionDate1.setBackgroundResource(R.drawable.game_date_background_neutral);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding34 = this._binding;
                fragmentOnThisDayGamePlayBinding34.getClass();
                fragmentOnThisDayGamePlayBinding34.questionDate2.setBackgroundResource(R.drawable.game_date_background_neutral);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding35 = this._binding;
                fragmentOnThisDayGamePlayBinding35.getClass();
                fragmentOnThisDayGamePlayBinding35.centerContent.setVisibility(8);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding36 = this._binding;
                fragmentOnThisDayGamePlayBinding36.getClass();
                fragmentOnThisDayGamePlayBinding36.correctIncorrectText.setText((CharSequence) null);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding37 = this._binding;
                fragmentOnThisDayGamePlayBinding37.getClass();
                fragmentOnThisDayGamePlayBinding37.currentQuestionContainer.setVisibility(0);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding38 = this._binding;
                fragmentOnThisDayGamePlayBinding38.getClass();
                fragmentOnThisDayGamePlayBinding38.rootView.post(new MainFragment$$ExternalSyntheticLambda5(9, this));
                OnThisDayGameActivity onThisDayGameActivity3 = this.mainActivity;
                if (onThisDayGameActivity3 != null) {
                    onThisDayGameActivity3.getDelegate().invalidateOptionsMenu();
                    return;
                }
                return;
            }
            boolean z3 = i4 < i3 || (i4 == i3 && z);
            boolean z4 = z3 && ((Boolean) list.get(i4)).booleanValue();
            ImageView imageView = (ImageView) scoreView.scoreViews.get(i4);
            if (z3) {
                i = z4 ? R.drawable.ic_check_circle_black_24dp : R.drawable.ic_cancel_24px;
            } else {
                if (z3) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                i = R.drawable.shape_circle;
            }
            if (z3) {
                i2 = z4 ? R.attr.success_color : R.attr.destructive_color;
            } else {
                if (z3) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                i2 = R.attr.paper_color;
            }
            imageView.setImageResource(i);
            Context context = scoreView.getContext();
            context.getClass();
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(i2, typedValue, true)) {
                typedValue = null;
            }
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i2, "Attribute not found; ID="));
                return;
            } else {
                imageView.setImageTintList(ColorStateList.valueOf(typedValue.data));
                i4++;
            }
        }
    }

    public final void updateQuestionEndLayout() {
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = this._binding;
        fragmentOnThisDayGamePlayBinding.getClass();
        fragmentOnThisDayGamePlayBinding.whichCameFirstText.setVisibility(8);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = this._binding;
        fragmentOnThisDayGamePlayBinding2.getClass();
        fragmentOnThisDayGamePlayBinding2.nextQuestionText.setVisibility(8);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = this._binding;
        fragmentOnThisDayGamePlayBinding3.getClass();
        fragmentOnThisDayGamePlayBinding3.centerContent.setVisibility(0);
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = this._binding;
        fragmentOnThisDayGamePlayBinding4.getClass();
        if (fragmentOnThisDayGamePlayBinding4.questionThumbnail1.getVisibility() != 0) {
            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = this._binding;
            fragmentOnThisDayGamePlayBinding5.getClass();
            TextView textView = fragmentOnThisDayGamePlayBinding5.questionText1;
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            if (layoutParams == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                return;
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.bottomMargin = Okio__OkioKt.roundedDpToPx(40.0f);
                textView.setLayoutParams(marginLayoutParams);
            }
        }
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = this._binding;
        fragmentOnThisDayGamePlayBinding6.getClass();
        if (fragmentOnThisDayGamePlayBinding6.questionThumbnail2.getVisibility() == 0) {
            return;
        }
        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = this._binding;
        fragmentOnThisDayGamePlayBinding7.getClass();
        TextView textView2 = fragmentOnThisDayGamePlayBinding7.questionText2;
        ViewGroup.LayoutParams layoutParams2 = textView2.getLayoutParams();
        if (layoutParams2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams2.bottomMargin = Okio__OkioKt.roundedDpToPx(40.0f);
        textView2.setLayoutParams(marginLayoutParams2);
    }
}

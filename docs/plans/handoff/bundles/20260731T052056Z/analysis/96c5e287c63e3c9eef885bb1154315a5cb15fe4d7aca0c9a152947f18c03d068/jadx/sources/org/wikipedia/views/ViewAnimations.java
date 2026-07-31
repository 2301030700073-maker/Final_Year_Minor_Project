package org.wikipedia.views;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.edit.summaries.EditSummaryFragment$$ExternalSyntheticLambda0;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewAnimations {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long MEDIUM_ANIMATION_DURATION;
    public static final long SHORT_ANIMATION_DURATION;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class CancelStateAnimatorListenerAdapter extends AnimatorListenerAdapter {
        public boolean canceled;

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            animator.getClass();
            this.canceled = true;
        }
    }

    static {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        SHORT_ANIMATION_DURATION = Jsoup.getInstance().getResources().getInteger(R.integer.config_shortAnimTime);
        MEDIUM_ANIMATION_DURATION = Jsoup.getInstance().getResources().getInteger(R.integer.config_mediumAnimTime);
    }

    public static void ensureTranslationY(View view, int i, WikiGames$$ExternalSyntheticLambda0 wikiGames$$ExternalSyntheticLambda0) {
        view.getClass();
        float f = i;
        if (view.getTranslationY() == f) {
            return;
        }
        ViewPropertyAnimator duration = view.animate().translationY(f).setDuration(SHORT_ANIMATION_DURATION);
        duration.getClass();
        if (wikiGames$$ExternalSyntheticLambda0 != null) {
            duration.withEndAction(new ViewAnimations$$ExternalSyntheticLambda0(0, wikiGames$$ExternalSyntheticLambda0));
        }
        duration.start();
    }

    public static void fadeIn(View view, final EditSummaryFragment$$ExternalSyntheticLambda0 editSummaryFragment$$ExternalSyntheticLambda0) {
        view.getClass();
        view.setAlpha(RecyclerView.DECELERATION_RATE);
        view.setVisibility(0);
        view.animate().alpha(1.0f).setDuration(MEDIUM_ANIMATION_DURATION).setListener(new CancelStateAnimatorListenerAdapter() { // from class: org.wikipedia.views.ViewAnimations$fadeIn$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                Runnable runnable;
                animator.getClass();
                if (this.canceled || (runnable = editSummaryFragment$$ExternalSyntheticLambda0) == null) {
                    return;
                }
                runnable.run();
            }
        }).start();
    }

    public static void fadeOut(final View view, final EditSummaryFragment$$ExternalSyntheticLambda0 editSummaryFragment$$ExternalSyntheticLambda0) {
        view.getClass();
        view.animate().cancel();
        view.animate().alpha(RecyclerView.DECELERATION_RATE).setDuration(MEDIUM_ANIMATION_DURATION).setListener(new CancelStateAnimatorListenerAdapter() { // from class: org.wikipedia.views.ViewAnimations$fadeOut$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                animator.getClass();
                if (this.canceled) {
                    return;
                }
                View view2 = view;
                view2.setVisibility(8);
                view2.setAlpha(1.0f);
                Runnable runnable = editSummaryFragment$$ExternalSyntheticLambda0;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }).start();
    }
}

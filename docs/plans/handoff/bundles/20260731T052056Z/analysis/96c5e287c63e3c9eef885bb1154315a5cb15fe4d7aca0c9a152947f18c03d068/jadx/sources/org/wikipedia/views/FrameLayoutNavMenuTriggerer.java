package org.wikipedia.views;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.drawerlayout.widget.FixedDrawerLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio__OkioKt;
import org.wikipedia.analytics.eventplatform.ArticleInteractionEvent;
import org.wikipedia.analytics.eventplatform.ArticleTocInteractionEvent;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.SidePanelHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;", "callback", "Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;", "getCallback", "()Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;", "setCallback", "(Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;)V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FrameLayoutNavMenuTriggerer extends FrameLayout {
    public static boolean CHILD_VIEW_SCROLLED;
    public Callback callback;
    public float initialX;
    public float initialY;
    public boolean maybeSwiping;
    public static final int SWIPE_SLOP_Y = Okio__OkioKt.roundedDpToPx(32.0f);
    public static final int SWIPE_SLOP_X = Okio__OkioKt.roundedDpToPx(100.0f);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameLayoutNavMenuTriggerer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    public final Callback getCallback() {
        return this.callback;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        motionEvent.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (CHILD_VIEW_SCROLLED) {
            CHILD_VIEW_SCROLLED = false;
            this.initialX = motionEvent.getX();
            this.initialY = motionEvent.getY();
        }
        int i = 1;
        if (actionMasked == 0) {
            this.initialX = motionEvent.getX();
            this.initialY = motionEvent.getY();
            this.maybeSwiping = true;
            return false;
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.maybeSwiping = false;
            return false;
        }
        if (actionMasked == 2 && this.maybeSwiping) {
            if (Math.abs((int) (motionEvent.getY() - this.initialY)) > SWIPE_SLOP_Y) {
                this.maybeSwiping = false;
                return false;
            }
            if (Math.abs(motionEvent.getX() - this.initialX) > SWIPE_SLOP_X) {
                this.maybeSwiping = false;
                Callback callback = this.callback;
                if (callback != null) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.setAction(3);
                    post(new SurveyDialog$$ExternalSyntheticLambda7(this, obtain, i));
                    char c = 3;
                    if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) != 1 ? motionEvent.getX() <= this.initialX : motionEvent.getX() > this.initialX) {
                        c = 5;
                    }
                    PageActivity pageActivity = (PageActivity) callback;
                    if (pageActivity.currentActionModes.isEmpty() && c == 5) {
                        PageFragment pageFragment = pageActivity.pageFragment;
                        if (pageFragment == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                            throw null;
                        }
                        ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                        if (articleInteractionEvent != null) {
                            articleInteractionEvent.submitEvent("toc_swipe");
                        }
                        PageFragment pageFragment2 = pageActivity.pageFragment;
                        if (pageFragment2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                            throw null;
                        }
                        SidePanelHandler sidePanelHandler = pageFragment2.getSidePanelHandler();
                        ActivityPageBinding activityPageBinding = sidePanelHandler.binding;
                        ((FixedDrawerLayout) activityPageBinding.navigationDrawer).openDrawer((FrameLayout) activityPageBinding.sidePanelContainer);
                        sidePanelHandler.currentItemSelected = -1;
                        sidePanelHandler.onScrollerMoved(RecyclerView.DECELERATION_RATE, false);
                        ArticleTocInteractionEvent articleTocInteractionEvent = sidePanelHandler.articleTocInteractionEvent;
                        if (articleTocInteractionEvent != null) {
                            articleTocInteractionEvent.numOpens++;
                            articleTocInteractionEvent.lastScrollStartMillis = System.currentTimeMillis();
                            return false;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }
}

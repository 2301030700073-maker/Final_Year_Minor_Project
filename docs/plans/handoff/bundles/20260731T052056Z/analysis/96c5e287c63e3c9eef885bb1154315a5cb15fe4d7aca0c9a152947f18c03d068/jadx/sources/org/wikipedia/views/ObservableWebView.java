package org.wikipedia.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlowImpl;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.events.WebViewInvalidateEvent;
import org.wikipedia.page.ViewHideHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0011\b\u0007\u0018\u00002\u00020\u0001:\u0005\u001b\u001c\u001d\u001e\u001fB\u001d\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R$\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R$\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0014R$\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0019\u0010\u0012\u001a\u0004\b\u001a\u0010\u0014¨\u0006 "}, d2 = {"Lorg/wikipedia/views/ObservableWebView;", "Landroid/webkit/WebView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "scrollEventsEnabled", "Z", "getScrollEventsEnabled", "()Z", "setScrollEventsEnabled", "(Z)V", "", "value", "touchStartX", "F", "getTouchStartX", "()F", "touchStartY", "getTouchStartY", "lastTouchX", "getLastTouchX", "lastTouchY", "getLastTouchY", "OnClickListener", "OnScrollChangeListener", "org/wikipedia/page/ViewHideHandler", "OnUpOrCancelMotionEventListener", "OnContentHeightChangedListener", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ObservableWebView extends WebView {
    public static final WebViewInvalidateEvent INVALIDATE_EVENT = new WebViewInvalidateEvent();
    public static final int MAX_HUMAN_SCROLL;
    public int currentContentHeight;
    public int drawEventsWhileSwiping;
    public long lastScrollTime;
    public float lastTouchX;
    public float lastTouchY;
    public final ArrayList onClickListeners;
    public final ArrayList onContentHeightChangedListeners;
    public final ArrayList onDownMotionEventListeners;
    public final ArrayList onScrollChangeListeners;
    public final ArrayList onUpOrCancelMotionEventListeners;
    public boolean scrollEventsEnabled;
    public int totalAmountScrolled;
    public final int touchSlop;
    public float touchStartX;
    public float touchStartY;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnClickListener {
        void onClick();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnContentHeightChangedListener {
        void onContentHeightChanged(int i);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnScrollChangeListener {
        void onScrollChanged(int i, int i2);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnUpOrCancelMotionEventListener {
        void onUpOrCancelMotionEvent();
    }

    static {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        resources.getDisplayMetrics().getClass();
        Resources resources2 = Jsoup.getInstance().getResources();
        resources2.getClass();
        DisplayMetrics displayMetrics = resources2.getDisplayMetrics();
        displayMetrics.getClass();
        MAX_HUMAN_SCROLL = (int) (500.0f * displayMetrics.density);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.onClickListeners = new ArrayList();
        this.onScrollChangeListeners = new ArrayList();
        this.onDownMotionEventListeners = new ArrayList();
        this.onUpOrCancelMotionEventListeners = new ArrayList();
        this.onContentHeightChangedListeners = new ArrayList();
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.scrollEventsEnabled = true;
    }

    public final void clearAllListeners() {
        this.onClickListeners.clear();
        this.onScrollChangeListeners.clear();
        this.onDownMotionEventListeners.clear();
        this.onUpOrCancelMotionEventListeners.clear();
        this.onContentHeightChangedListeners.clear();
    }

    public final float getLastTouchX() {
        return this.lastTouchX;
    }

    public final float getLastTouchY() {
        return this.lastTouchY;
    }

    public final boolean getScrollEventsEnabled() {
        return this.scrollEventsEnabled;
    }

    public final float getTouchStartX() {
        return this.touchStartX;
    }

    public final float getTouchStartY() {
        return this.touchStartY;
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        if (isInEditMode()) {
            return;
        }
        int i = this.drawEventsWhileSwiping + 1;
        this.drawEventsWhileSwiping = i;
        if (i > 4) {
            FrameLayoutNavMenuTriggerer.CHILD_VIEW_SCROLLED = true;
        }
        if (this.currentContentHeight != getContentHeight()) {
            this.currentContentHeight = getContentHeight();
            Iterator it = this.onContentHeightChangedListeners.iterator();
            while (it.hasNext()) {
                ((OnContentHeightChangedListener) it.next()).onContentHeightChanged(this.currentContentHeight);
            }
        }
        SharedFlowImpl sharedFlowImpl = FlowEventBus._events;
        FlowEventBus.post(INVALIDATE_EVENT);
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        int i5 = i2 - i4;
        boolean z = Math.abs(i5) < MAX_HUMAN_SCROLL;
        if (this.scrollEventsEnabled) {
            Iterator it = this.onScrollChangeListeners.iterator();
            while (it.hasNext()) {
                ((OnScrollChangeListener) it.next()).onScrollChanged(i4, i2);
            }
        }
        if (z) {
            int i6 = this.totalAmountScrolled + i5;
            this.totalAmountScrolled = i6;
            Math.abs(i6);
            this.lastScrollTime = System.currentTimeMillis();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ArrayList arrayList;
        motionEvent.getClass();
        if (motionEvent.getButtonState() == 2 && motionEvent.getActionMasked() == 0) {
            final float x = motionEvent.getX();
            final float y = motionEvent.getY();
            post(new Runnable() { // from class: org.wikipedia.views.ObservableWebView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WebViewInvalidateEvent webViewInvalidateEvent = ObservableWebView.INVALIDATE_EVENT;
                    ObservableWebView.this.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis() + 1000, 0, x, y, 0));
                }
            });
            return true;
        }
        this.lastTouchX = motionEvent.getX();
        this.lastTouchY = motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            ArrayList arrayList2 = this.onUpOrCancelMotionEventListeners;
            if (actionMasked == 1) {
                float abs = Math.abs(motionEvent.getX() - this.touchStartX);
                float f = this.touchSlop;
                if (abs <= f && Math.abs(motionEvent.getY() - this.touchStartY) <= f && getHitTestResult().getType() == 0 && ((arrayList = this.onClickListeners) == null || !arrayList.isEmpty())) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        OnClickListener onClickListener = (OnClickListener) it.next();
                        motionEvent.getX();
                        motionEvent.getY();
                        onClickListener.onClick();
                    }
                }
                this.drawEventsWhileSwiping = 0;
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((OnUpOrCancelMotionEventListener) it2.next()).onUpOrCancelMotionEvent();
                }
                this.drawEventsWhileSwiping = 0;
            } else if (actionMasked == 3) {
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    ((OnUpOrCancelMotionEventListener) it3.next()).onUpOrCancelMotionEvent();
                }
                this.drawEventsWhileSwiping = 0;
            }
        } else {
            Iterator it4 = this.onDownMotionEventListeners.iterator();
            while (it4.hasNext()) {
                ((ViewHideHandler) it4.next()).getClass();
            }
            if (System.currentTimeMillis() - this.lastScrollTime > 500) {
                this.totalAmountScrolled = 0;
            }
            this.touchStartX = motionEvent.getX();
            this.touchStartY = motionEvent.getY();
            this.drawEventsWhileSwiping = 0;
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void setScrollEventsEnabled(boolean z) {
        this.scrollEventsEnabled = z;
    }
}

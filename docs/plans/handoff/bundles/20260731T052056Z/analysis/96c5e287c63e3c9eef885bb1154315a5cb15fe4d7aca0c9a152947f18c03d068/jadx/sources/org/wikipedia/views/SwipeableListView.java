package org.wikipedia.views;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import io.getstream.photoview.PhotoViewAttacher;
import kotlin.Metadata;
import org.maplibre.android.gestures.StandardScaleGestureDetector;
import org.wikipedia.page.SidePanelHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lorg/wikipedia/views/SwipeableListView;", "Landroid/widget/ListView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;", "listener", "Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;", "getListener", "()Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;", "setListener", "(Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;)V", "", "rtl", "Z", "getRtl", "()Z", "setRtl", "(Z)V", "OnSwipeOutListener", "ViewGestureListener", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SwipeableListView extends ListView {
    public static final /* synthetic */ int $r8$clinit = 0;
    public OnSwipeOutListener listener;
    public boolean rtl;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnSwipeOutListener {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ViewGestureListener extends GestureDetector.SimpleOnGestureListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ ViewGestureListener(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            switch (this.$r8$classId) {
                case 2:
                    if (motionEvent.getActionMasked() == 0) {
                        StandardScaleGestureDetector standardScaleGestureDetector = (StandardScaleGestureDetector) this.this$0;
                        standardScaleGestureDetector.quickScale = true;
                        standardScaleGestureDetector.quickScaleFocalPoint = new PointF(motionEvent.getX(), motionEvent.getY());
                    }
                    return true;
                default:
                    return super.onDoubleTapEvent(motionEvent);
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            OnSwipeOutListener listener;
            switch (this.$r8$classId) {
                case 0:
                    SwipeableListView swipeableListView = (SwipeableListView) this.this$0;
                    motionEvent2.getClass();
                    if (motionEvent != null) {
                        int i = SwipeableListView.$r8$clinit;
                        if (!swipeableListView.rtl ? !(motionEvent2.getY() - motionEvent.getY() > 300.0f || motionEvent2.getX() - motionEvent.getX() <= 200.0f) : !(motionEvent.getY() - motionEvent2.getY() > 300.0f || motionEvent.getX() - motionEvent2.getX() <= 200.0f)) {
                            if (Math.abs(f) > 100.0f && Math.abs(f2) < 2000.0f && (listener = swipeableListView.getListener()) != null) {
                                ((SidePanelHandler) ((OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) listener).f$0).hide();
                            }
                        }
                    }
                    return false;
                case 1:
                    motionEvent2.getClass();
                    return false;
                default:
                    return super.onFling(motionEvent, motionEvent2, f, f2);
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            switch (this.$r8$classId) {
                case 1:
                    motionEvent.getClass();
                    PhotoViewAttacher photoViewAttacher = (PhotoViewAttacher) this.this$0;
                    View.OnLongClickListener onLongClickListener = photoViewAttacher.mLongClickListener;
                    if (onLongClickListener != null) {
                        onLongClickListener.onLongClick(photoViewAttacher.mImageView);
                        break;
                    }
                    break;
                default:
                    super.onLongPress(motionEvent);
                    break;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        setOnTouchListener(new SwipeableListView$$ExternalSyntheticLambda0(0, new GestureDetector(context, new ViewGestureListener(0, this))));
    }

    public final OnSwipeOutListener getListener() {
        return this.listener;
    }

    public final boolean getRtl() {
        return this.rtl;
    }

    public final void setListener(OnSwipeOutListener onSwipeOutListener) {
        this.listener = onSwipeOutListener;
    }

    public final void setRtl(boolean z) {
        this.rtl = z;
    }
}

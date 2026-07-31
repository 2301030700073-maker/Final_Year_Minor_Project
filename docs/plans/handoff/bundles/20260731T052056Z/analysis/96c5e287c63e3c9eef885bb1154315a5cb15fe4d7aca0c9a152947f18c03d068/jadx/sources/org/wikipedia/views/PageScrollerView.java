package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatImageView;
import kotlin.Metadata;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.SidePanelHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lorg/wikipedia/views/PageScrollerView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/views/PageScrollerView$Callback;", "callback", "Lorg/wikipedia/views/PageScrollerView$Callback;", "getCallback", "()Lorg/wikipedia/views/PageScrollerView$Callback;", "setCallback", "(Lorg/wikipedia/views/PageScrollerView$Callback;)V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PageScrollerView extends AppCompatImageView {
    public Callback callback;
    public boolean dragging;
    public float prevY;
    public long startMillis;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageScrollerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    public final Callback getCallback() {
        return this.callback;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        motionEvent.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            motionEvent.getRawX();
            this.prevY = motionEvent.getRawY();
            if (!this.dragging) {
                this.dragging = true;
            }
            this.startMillis = System.currentTimeMillis();
        } else if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked == 3 && this.dragging) {
                    this.dragging = false;
                    Callback callback = this.callback;
                    if (callback != null) {
                        ((SidePanelHandler) ((AvPlayer) callback).player).hide();
                    }
                }
            } else if (this.dragging) {
                float rawY = motionEvent.getRawY() - this.prevY;
                Callback callback2 = this.callback;
                if (callback2 != null) {
                    ((SidePanelHandler) ((AvPlayer) callback2).player).onScrollerMoved(rawY, true);
                }
                motionEvent.getRawX();
                this.prevY = motionEvent.getRawY();
            }
        } else if (this.dragging) {
            this.dragging = false;
            long currentTimeMillis = System.currentTimeMillis() - this.startMillis;
            Callback callback3 = this.callback;
            if (currentTimeMillis >= 250 && callback3 != null) {
                ((SidePanelHandler) ((AvPlayer) callback3).player).hide();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }
}

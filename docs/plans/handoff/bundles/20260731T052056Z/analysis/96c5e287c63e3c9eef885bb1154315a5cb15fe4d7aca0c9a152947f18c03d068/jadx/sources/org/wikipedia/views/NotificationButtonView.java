package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.room.Room;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\n2\b\b\u0001\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\f¨\u0006\u000f"}, d2 = {"Lorg/wikipedia/views/NotificationButtonView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "count", "", "setUnreadCount", "(I)V", "icon", "setIcon", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NotificationButtonView extends FrameLayout {
    public final OkHttpCall.AnonymousClass1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_notification_button, this);
        int i = R.id.iconImage;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.iconImage);
        if (imageView != null) {
            i = R.id.unreadDot;
            NotificationDotView notificationDotView = (NotificationDotView) Room.findChildViewById(this, R.id.unreadDot);
            if (notificationDotView != null) {
                this.binding = new OkHttpCall.AnonymousClass1(this, imageView, notificationDotView, 14);
                setLayoutParams(new ViewGroup.LayoutParams(Okio__OkioKt.roundedDpToPx(48.0f), -1));
                TypedValue typedValue = new TypedValue();
                typedValue = context.getTheme().resolveAttribute(R.attr.selectableItemBackgroundBorderless, typedValue, true) ? typedValue : null;
                if (typedValue == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969941");
                    throw null;
                }
                setBackgroundResource(typedValue.resourceId);
                setFocusable(true);
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final void runAnimation() {
        startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.tab_list_zoom_enter));
    }

    public final void setIcon(int icon) {
        ((ImageView) this.binding.val$callback).setImageResource(icon);
    }

    public final void setUnreadCount(int count) {
        OkHttpCall.AnonymousClass1 anonymousClass1 = this.binding;
        ((NotificationDotView) anonymousClass1.this$0).setUnreadCount(count);
        ((NotificationDotView) anonymousClass1.this$0).setVisibility(count > 0 ? 0 : 8);
    }
}

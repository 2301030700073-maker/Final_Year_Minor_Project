package org.wikipedia.descriptions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.room.Room;
import kotlin.Metadata;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.views.AppTextView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditSuccessView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;", "callback", "Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;", "getCallback", "()Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;", "setCallback", "(Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;)V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditSuccessView extends FrameLayout {
    public Callback callback;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptionEditSuccessView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.view_description_edit_success, (ViewGroup) this, false);
        addView(inflate);
        int i = R.id.view_description_edit_success_done_button;
        Button button = (Button) Room.findChildViewById(inflate, R.id.view_description_edit_success_done_button);
        if (button != null) {
            i = R.id.view_description_edit_success_hint_text;
            AppTextView appTextView = (AppTextView) Room.findChildViewById(inflate, R.id.view_description_edit_success_hint_text);
            if (appTextView != null) {
                i = R.id.view_success_edit_center_text_container;
                if (((LinearLayout) Room.findChildViewById(inflate, R.id.view_success_edit_center_text_container)) != null) {
                    i = R.id.view_success_edit_did_you_know_container;
                    if (((LinearLayout) Room.findChildViewById(inflate, R.id.view_success_edit_did_you_know_container)) != null) {
                        String string = getResources().getString(R.string.description_edit_success_article_edit_hint);
                        string.getClass();
                        Headers.Companion.setTextWithDrawables(appTextView, string, R.drawable.ic_mode_edit_white_24dp);
                        button.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(9, this));
                        return;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        throw null;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }
}

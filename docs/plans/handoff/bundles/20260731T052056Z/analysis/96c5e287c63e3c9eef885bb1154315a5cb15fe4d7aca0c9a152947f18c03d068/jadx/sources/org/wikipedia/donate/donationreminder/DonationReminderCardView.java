package org.wikipedia.donate.donationreminder;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.button.MaterialButton;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.databinding.ViewDonationReminderCardBinding;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\fR\u0017\u0010\u0010\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lorg/wikipedia/donate/donationreminder/DonationReminderCardView;", "Lorg/wikipedia/views/WikiCardView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "title", "", "setTitle", "(Ljava/lang/String;)V", "text", "setMessage", "Lorg/wikipedia/databinding/ViewDonationReminderCardBinding;", "binding", "Lorg/wikipedia/databinding/ViewDonationReminderCardBinding;", "getBinding", "()Lorg/wikipedia/databinding/ViewDonationReminderCardBinding;", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DonationReminderCardView extends WikiCardView {
    public final ViewDonationReminderCardBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DonationReminderCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_donation_reminder_card, (ViewGroup) this, false);
        addView(inflate);
        int i = R.id.buttonsContainer;
        if (((FlexboxLayout) Room.findChildViewById(inflate, R.id.buttonsContainer)) != null) {
            i = R.id.messageTextView;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.messageTextView);
            if (textView != null) {
                i = R.id.messageTitleView;
                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.messageTitleView);
                if (textView2 != null) {
                    i = R.id.negativeButton;
                    MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.negativeButton);
                    if (materialButton != null) {
                        i = R.id.positiveButton;
                        MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(inflate, R.id.positiveButton);
                        if (materialButton2 != null) {
                            this.binding = new ViewDonationReminderCardBinding(textView, textView2, materialButton, materialButton2);
                            setStrokeWidth(Okio__OkioKt.roundedDpToPx(1.0f));
                            setElevation(RecyclerView.DECELERATION_RATE);
                            return;
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        throw null;
    }

    public final ViewDonationReminderCardBinding getBinding() {
        return this.binding;
    }

    public final void setMessage(String text) {
        text.getClass();
        this.binding.messageTextView.setText(text);
    }

    public final void setTitle(String title) {
        title.getClass();
        String concat = title.concat("  %");
        SpannableString spannableString = new SpannableString(concat);
        Drawable drawable = getContext().getDrawable(R.drawable.ic_heart_24);
        drawable.getClass();
        int dpToPx = (int) Okio__OkioKt.dpToPx(20.0f);
        Context context = getContext();
        TypedValue m = ViewSizeResolver$CC.m(context);
        if (!context.getTheme().resolveAttribute(R.attr.destructive_color, m, true)) {
            m = null;
        }
        if (m == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
            return;
        }
        drawable.setTint(m.data);
        drawable.setBounds(0, 0, dpToPx, dpToPx);
        spannableString.setSpan(new ImageSpan(drawable, 0), concat.length() - 1, concat.length(), 33);
        this.binding.messageTitleView.setText(spannableString);
    }
}

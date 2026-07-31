package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import org.wikipedia.R;
import org.wikipedia.databinding.ViewMessageCardBinding;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\fJ\u0015\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\fJ\u0015\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\fJ\u0015\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\fJ\u0019\u0010\u0013\u001a\u00020\n2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0013\u0010\fJ\u0015\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0018\u0010\fR\u0017\u0010\u001a\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lorg/wikipedia/views/MessageCardView;", "Lorg/wikipedia/views/WikiCardView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "title", "", "setMessageTitle", "(Ljava/lang/String;)V", "text", "setMessageText", "message", "setOnboarding", "setPaused", "setDisabled", "setIPBlocked", "Landroid/view/View$OnClickListener;", "onClickListener", "setRequiredLogin", "(Landroid/view/View$OnClickListener;)V", "setMessageLabel", "Lorg/wikipedia/databinding/ViewMessageCardBinding;", "binding", "Lorg/wikipedia/databinding/ViewMessageCardBinding;", "getBinding", "()Lorg/wikipedia/databinding/ViewMessageCardBinding;", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MessageCardView extends WikiCardView {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ViewMessageCardBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_message_card, (ViewGroup) this, false);
        addView(inflate);
        int i = R.id.buttonsContainer;
        FlexboxLayout flexboxLayout = (FlexboxLayout) Room.findChildViewById(inflate, R.id.buttonsContainer);
        if (flexboxLayout != null) {
            i = R.id.containerClickArea;
            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.containerClickArea);
            if (linearLayout != null) {
                i = R.id.imageView;
                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.imageView);
                if (imageView != null) {
                    i = R.id.messageLabel;
                    Chip chip = (Chip) Room.findChildViewById(inflate, R.id.messageLabel);
                    if (chip != null) {
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
                                        this.binding = new ViewMessageCardBinding(flexboxLayout, linearLayout, imageView, chip, textView, textView2, materialButton, materialButton2);
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        throw null;
    }

    public final ViewMessageCardBinding getBinding() {
        return this.binding;
    }

    public final void setDefaultState() {
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        viewMessageCardBinding.imageView.setVisibility(0);
        viewMessageCardBinding.messageTitleView.setVisibility(0);
        viewMessageCardBinding.buttonsContainer.setVisibility(0);
        MaterialButton materialButton = viewMessageCardBinding.positiveButton;
        materialButton.setText(getContext().getString(R.string.suggested_edits_learn_more));
        materialButton.setIconResource(R.drawable.ic_open_in_new_black_24px);
        materialButton.setOnClickListener(new MessageCardView$$ExternalSyntheticLambda0(this, 2));
        viewMessageCardBinding.containerClickArea.setOnClickListener(new MessageCardView$$ExternalSyntheticLambda0(this, 3));
    }

    public final void setDisabled(String message) {
        message.getClass();
        setDefaultState();
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        viewMessageCardBinding.messageTitleView.setText(getContext().getString(R.string.suggested_edits_disabled_title));
        TextView textView = viewMessageCardBinding.messageTextView;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(message));
        viewMessageCardBinding.imageView.setImageResource(R.drawable.ic_suggested_edits_disabled);
    }

    public final void setIPBlocked(String message) {
        setDefaultState();
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        ImageView imageView = viewMessageCardBinding.imageView;
        TextView textView = viewMessageCardBinding.messageTextView;
        TextView textView2 = viewMessageCardBinding.messageTitleView;
        imageView.setVisibility(8);
        if (message == null || message.length() == 0) {
            textView2.setVisibility(0);
            textView2.setText(getContext().getString(R.string.suggested_edits_ip_blocked_title));
            textView.setText(getContext().getString(R.string.suggested_edits_ip_blocked_message));
        } else {
            textView2.setVisibility(8);
            StringUtil stringUtil = StringUtil.INSTANCE;
            textView.setText(StringUtil.fromHtml(message));
            int i = LinkMovementMethodExt.$r8$clinit;
            textView.setMovementMethod(Path.Companion.getExternalLinkMovementMethod$default());
        }
        viewMessageCardBinding.positiveButton.setOnClickListener(new MessageCardView$$ExternalSyntheticLambda0(this, 0));
        setOnClickListener(new MessageCardView$$ExternalSyntheticLambda0(this, 1));
    }

    public final void setImageResource(int i, boolean z) {
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        if (!z) {
            viewMessageCardBinding.imageView.setVisibility(8);
        } else {
            viewMessageCardBinding.imageView.setVisibility(0);
            viewMessageCardBinding.imageView.setImageResource(i);
        }
    }

    public final void setMessageLabel(String message) {
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        viewMessageCardBinding.messageLabel.setText(message);
        viewMessageCardBinding.messageLabel.setVisibility((message == null || message.length() == 0) ? 8 : 0);
    }

    public final void setMessageText(String text) {
        text.getClass();
        this.binding.messageTextView.setText(text);
    }

    public final void setMessageTitle(String title) {
        title.getClass();
        this.binding.messageTitleView.setText(title);
    }

    public final void setNegativeButton(int i, View.OnClickListener onClickListener) {
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        viewMessageCardBinding.negativeButton.setText(getContext().getString(i));
        MaterialButton materialButton = viewMessageCardBinding.negativeButton;
        materialButton.setOnClickListener(onClickListener);
        materialButton.setVisibility(0);
    }

    public final void setOnboarding(String message) {
        message.getClass();
        setImageResource(R.drawable.ic_suggested_edits_onboarding, true);
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        viewMessageCardBinding.messageTitleView.setVisibility(8);
        TextView textView = viewMessageCardBinding.messageTextView;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(message.toString()));
        viewMessageCardBinding.buttonsContainer.setVisibility(8);
    }

    public final void setPaused(String message) {
        message.getClass();
        setDefaultState();
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        viewMessageCardBinding.messageTitleView.setText(getContext().getString(R.string.suggested_edits_paused_title));
        TextView textView = viewMessageCardBinding.messageTextView;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(message));
        viewMessageCardBinding.imageView.setImageResource(R.drawable.ic_suggested_edits_paused);
    }

    public final void setPositiveButton(int i, View.OnClickListener onClickListener) {
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        viewMessageCardBinding.positiveButton.setText(getContext().getString(i));
        viewMessageCardBinding.positiveButton.setOnClickListener(onClickListener);
        viewMessageCardBinding.containerClickArea.setOnClickListener(onClickListener);
    }

    public final void setRequiredLogin(View.OnClickListener onClickListener) {
        onClickListener.getClass();
        ViewMessageCardBinding viewMessageCardBinding = this.binding;
        viewMessageCardBinding.imageView.setVisibility(0);
        TextView textView = viewMessageCardBinding.messageTitleView;
        textView.setVisibility(0);
        viewMessageCardBinding.buttonsContainer.setVisibility(0);
        textView.setText(getContext().getString(R.string.suggested_edits_encourage_account_creation_title));
        viewMessageCardBinding.messageTextView.setText(getContext().getString(R.string.suggested_edits_encourage_account_creation_message));
        viewMessageCardBinding.imageView.setImageResource(R.drawable.ic_require_login_header);
        MaterialButton materialButton = viewMessageCardBinding.positiveButton;
        materialButton.setText(getContext().getString(R.string.suggested_edits_encourage_account_creation_login_button));
        materialButton.setOnClickListener(onClickListener);
        viewMessageCardBinding.containerClickArea.setOnClickListener(onClickListener);
    }
}

package org.wikipedia.views;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import kotlin.Metadata;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.R$styleable;
import org.wikipedia.databinding.ViewWikitextKeyboardButtonBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lorg/wikipedia/views/WikitextKeyboardButtonView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "binding", "Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;", "getBinding", "()Lorg/wikipedia/databinding/ViewWikitextKeyboardButtonBinding;", "setExpandable", "", "expandable", "", "setExpanded", "expanded", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WikitextKeyboardButtonView extends FrameLayout {
    public final ViewWikitextKeyboardButtonBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikitextKeyboardButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_wikitext_keyboard_button, this);
        int i = R.id.expand_notch;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.expand_notch);
        if (imageView != null) {
            i = R.id.wikitext_button_image;
            ImageView imageView2 = (ImageView) Room.findChildViewById(this, R.id.wikitext_button_image);
            if (imageView2 != null) {
                i = R.id.wikitext_button_text;
                TextView textView = (TextView) Room.findChildViewById(this, R.id.wikitext_button_text);
                if (textView != null) {
                    this.binding = new ViewWikitextKeyboardButtonBinding(this, imageView, imageView2, textView);
                    int roundedDpToPx = Okio__OkioKt.roundedDpToPx(48.0f);
                    setLayoutParams(new ViewGroup.LayoutParams(roundedDpToPx, roundedDpToPx));
                    if (attributeSet != null) {
                        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.WikitextKeyboardButtonView, 0, 0);
                        int resourceId = obtainStyledAttributes.getResourceId(1, 0);
                        String string = obtainStyledAttributes.getString(2);
                        String string2 = obtainStyledAttributes.getString(0);
                        TypedValue typedValue = new TypedValue();
                        typedValue = context.getTheme().resolveAttribute(R.attr.primary_color, typedValue, true) ? typedValue : null;
                        if (typedValue == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
                            throw null;
                        }
                        int color = obtainStyledAttributes.getColor(3, typedValue.data);
                        if (resourceId != 0) {
                            textView.setVisibility(8);
                            imageView2.setVisibility(0);
                            imageView2.setImageResource(resourceId);
                        } else {
                            textView.setVisibility(0);
                            imageView2.setVisibility(8);
                            if (string != null && string.length() != 0) {
                                textView.setText(string);
                            }
                            textView.setTextColor(color);
                        }
                        if (string2 != null && string2.length() != 0) {
                            setContentDescription(string2);
                            View view = new View[]{this}[0];
                            RegexKt.setTooltipText(view, view.getContentDescription());
                        }
                        obtainStyledAttributes.recycle();
                    }
                    setClickable(true);
                    setFocusable(true);
                    TypedValue typedValue2 = new TypedValue();
                    typedValue2 = context.getTheme().resolveAttribute(android.R.attr.selectableItemBackground, typedValue2, true) ? typedValue2 : null;
                    if (typedValue2 != null) {
                        setBackgroundResource(typedValue2.resourceId);
                        return;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=16843534");
                        throw null;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final ViewWikitextKeyboardButtonBinding getBinding() {
        return this.binding;
    }

    public final void setExpandable(boolean expandable) {
        this.binding.expandNotch.setVisibility(expandable ? 0 : 8);
    }

    public final void setExpanded(boolean expanded) {
        Context context = getContext();
        context.getClass();
        int i = expanded ? R.attr.progressive_color : R.attr.primary_color;
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Attribute not found; ID="));
            return;
        }
        int i2 = typedValue.data;
        ViewWikitextKeyboardButtonBinding viewWikitextKeyboardButtonBinding = this.binding;
        ImageView imageView = viewWikitextKeyboardButtonBinding.wikitextButtonImage;
        ImageView imageView2 = viewWikitextKeyboardButtonBinding.expandNotch;
        imageView.setImageTintList(ColorStateList.valueOf(i2));
        imageView2.setImageResource(expanded ? R.drawable.ic_arrow_drop_up_24 : R.drawable.ic_arrow_drop_down_black_24dp);
        imageView2.setImageTintList(ColorStateList.valueOf(i2));
        viewWikitextKeyboardButtonBinding.wikitextButtonText.setTextColor(i2);
    }
}

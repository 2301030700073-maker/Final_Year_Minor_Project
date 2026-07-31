package org.wikipedia.views;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.room.Room;
import java.util.Locale;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.R$styleable;
import org.wikipedia.databinding.ViewLangCodeBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\b\b\u0001\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u000f\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\n2\b\b\u0001\u0010\u0014\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0010J\u0015\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0013¨\u0006\u0016"}, d2 = {"Lorg/wikipedia/views/LangCodeView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "langCode", "", "setLangCode", "(Ljava/lang/String;)V", "", "textColor", "setTextColor", "(I)V", "Landroid/content/res/ColorStateList;", "colors", "(Landroid/content/res/ColorStateList;)V", "tintColor", "setBackgroundTint", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LangCodeView extends FrameLayout {
    public final ViewLangCodeBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LangCodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_lang_code, this);
        TextView textView = (TextView) Room.findChildViewById(this, R.id.langCodeText);
        if (textView == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(R.id.langCodeText)));
            throw null;
        }
        this.binding = new ViewLangCodeBinding(this, textView);
        TypedValue typedValue = new TypedValue();
        typedValue = context.getTheme().resolveAttribute(R.attr.primary_color, typedValue, true) ? typedValue : null;
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
            throw null;
        }
        int i = typedValue.data;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LangCodeView);
        obtainStyledAttributes.getClass();
        int color = obtainStyledAttributes.getColor(2, i);
        int color2 = obtainStyledAttributes.getColor(0, i);
        boolean z = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        setLayoutParams(new ViewGroup.LayoutParams(Okio__OkioKt.roundedDpToPx(48.0f), -1));
        setTextColor(color);
        setBackgroundTint(color2);
        textView.setBackgroundResource(z ? R.drawable.square_shape_border_filled : R.drawable.square_shape_border);
        setFocusable(true);
    }

    public final void setBackgroundTint(int tintColor) {
        TextView textView = this.binding.langCodeText;
        ColorStateList valueOf = ColorStateList.valueOf(tintColor);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        textView.setBackgroundTintList(valueOf);
    }

    public final void setLangCode(String langCode) {
        langCode.getClass();
        ViewLangCodeBinding viewLangCodeBinding = this.binding;
        TextView textView = viewLangCodeBinding.langCodeText;
        String upperCase = langCode.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        textView.setText(StringsKt__StringsJVMKt.replace$default(upperCase, "-", "-\n"));
        UuidKt.setAutoSizeTextTypeUniformWithConfiguration(viewLangCodeBinding.langCodeText, 1, 10, 2);
    }

    public final void setTextColor(ColorStateList colors) {
        colors.getClass();
        this.binding.langCodeText.setTextColor(colors);
    }

    public final void setTextColor(int textColor) {
        this.binding.langCodeText.setTextColor(textColor);
    }

    public final void setBackgroundTint(ColorStateList colors) {
        colors.getClass();
        TextView textView = this.binding.langCodeText;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        textView.setBackgroundTintList(colors);
    }
}

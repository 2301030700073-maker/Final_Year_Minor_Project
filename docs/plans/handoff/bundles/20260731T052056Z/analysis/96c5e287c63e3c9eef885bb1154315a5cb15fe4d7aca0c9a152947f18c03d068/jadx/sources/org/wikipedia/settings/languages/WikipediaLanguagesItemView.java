package org.wikipedia.settings.languages;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import coil3.size.ViewSizeResolver$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikipediaLanguagesItemView extends LinearLayout {
    public Retrofit binding;
    public Callback callback;
    public int position;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setCheckBoxChecked(boolean z) {
        ((CheckBox) this.binding.serviceMethodCache).setChecked(z);
        updateBackgroundColor();
    }

    public final void setCheckBoxEnabled(boolean z) {
        Retrofit retrofit = this.binding;
        TextView textView = (TextView) retrofit.converterFactories;
        CheckBox checkBox = (CheckBox) retrofit.serviceMethodCache;
        textView.setVisibility(z ? 8 : 0);
        checkBox.setVisibility(z ? 0 : 8);
        if (z) {
            return;
        }
        checkBox.setChecked(false);
        Context context = getContext();
        context.getClass();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue != null) {
            setBackgroundColor(typedValue.data);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
        }
    }

    public final void setDragHandleEnabled(boolean z) {
        ((ImageView) this.binding.baseUrl).setVisibility(z ? 0 : 8);
    }

    public final void setDragHandleTouchListener(View.OnTouchListener onTouchListener) {
        ((ImageView) this.binding.baseUrl).setOnTouchListener(onTouchListener);
    }

    public final void updateBackgroundColor() {
        TypedValue typedValue;
        if (((CheckBox) this.binding.serviceMethodCache).isChecked()) {
            Context context = getContext();
            TypedValue m = ViewSizeResolver$CC.m(context);
            typedValue = context.getTheme().resolveAttribute(R.attr.background_color, m, true) ? m : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
                return;
            }
        } else {
            Context context2 = getContext();
            TypedValue m2 = ViewSizeResolver$CC.m(context2);
            typedValue = context2.getTheme().resolveAttribute(R.attr.paper_color, m2, true) ? m2 : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                return;
            }
        }
        setBackgroundColor(typedValue.data);
    }
}

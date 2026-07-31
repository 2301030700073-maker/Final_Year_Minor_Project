package org.wikipedia.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import kotlin.Metadata;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.R$styleable;
import org.wikipedia.WikipediaApp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lorg/wikipedia/views/WikiCardView;", "Lcom/google/android/material/card/MaterialCardView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class WikiCardView extends MaterialCardView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikiCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        if (isInEditMode()) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.WikiCardView);
        obtainStyledAttributes.getClass();
        int i = Build.VERSION.SDK_INT;
        float dimension = obtainStyledAttributes.getDimension(0, Okio__OkioKt.dpToPx(i >= 28 ? 8.0f : 2.0f));
        if (obtainStyledAttributes.getBoolean(1, true)) {
            setDefaultBorder();
        }
        if (i >= 28) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            if (Jsoup.getInstance().currentTheme.isDark()) {
                setCardElevation(RecyclerView.DECELERATION_RATE);
            } else {
                setCardElevation(dimension);
                setOutlineAmbientShadowColor(getContext().getColor(R.color.gray300));
                setOutlineSpotShadowColor(getContext().getColor(R.color.gray300));
            }
        } else {
            setCardElevation(dimension);
        }
        Context context2 = getContext();
        context2.getClass();
        setRippleColor(Cache.Companion.getThemedColorStateList(context2, R.attr.overlay_color));
        obtainStyledAttributes.recycle();
    }

    public final void setDefaultBorder() {
        setStrokeWidth(Okio__OkioKt.roundedDpToPx(0.5f));
        Context context = getContext();
        context.getClass();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.border_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue != null) {
            setStrokeColor(typedValue.data);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968724");
        }
    }
}

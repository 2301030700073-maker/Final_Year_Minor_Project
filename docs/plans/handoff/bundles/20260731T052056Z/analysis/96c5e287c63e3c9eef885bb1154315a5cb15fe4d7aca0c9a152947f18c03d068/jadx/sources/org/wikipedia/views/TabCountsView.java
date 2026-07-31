package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.room.Room;
import kotlin.Metadata;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.ViewLangCodeBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lorg/wikipedia/views/TabCountsView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TabCountsView extends FrameLayout {
    public final ViewLangCodeBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabCountsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.view_tabs_count, this);
        TextView textView = (TextView) Room.findChildViewById(this, R.id.tabsCountText);
        if (textView == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(R.id.tabsCountText)));
            throw null;
        }
        this.binding = new ViewLangCodeBinding(this, textView);
        setLayoutParams(new ViewGroup.LayoutParams(Okio__OkioKt.roundedDpToPx(48.0f), -1));
        TypedValue typedValue = new TypedValue();
        typedValue = context.getTheme().resolveAttribute(R.attr.selectableItemBackgroundBorderless, typedValue, true) ? typedValue : null;
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969941");
            throw null;
        }
        setBackgroundResource(typedValue.resourceId);
        setFocusable(true);
    }

    public final void updateTabCount(boolean z) {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        int tabCount = Jsoup.getInstance().getTabCount();
        ViewLangCodeBinding viewLangCodeBinding = this.binding;
        viewLangCodeBinding.langCodeText.setText(String.valueOf(tabCount));
        UuidKt.setAutoSizeTextTypeUniformWithConfiguration(viewLangCodeBinding.langCodeText, 7, 10, 2);
        if (z) {
            startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.tab_list_zoom_enter));
        }
    }
}

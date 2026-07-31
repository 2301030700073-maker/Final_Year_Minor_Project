package org.wikipedia.page;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.material.textview.MaterialTextView;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import okhttp3.Cache;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.page.action.PageActionItem;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lorg/wikipedia/page/PageActionTabLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/page/action/PageActionItem$Callback;", "callback", "Lorg/wikipedia/page/action/PageActionItem$Callback;", "getCallback", "()Lorg/wikipedia/page/action/PageActionItem$Callback;", "setCallback", "(Lorg/wikipedia/page/action/PageActionItem$Callback;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PageActionTabLayout extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public PageActionItem.Callback callback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageActionTabLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        update();
    }

    public final PageActionItem.Callback getCallback() {
        PageActionItem.Callback callback = this.callback;
        if (callback != null) {
            return callback;
        }
        Intrinsics.throwUninitializedPropertyAccessException("callback");
        throw null;
    }

    public final void setCallback(PageActionItem.Callback callback) {
        callback.getClass();
        this.callback = callback;
    }

    public final void update() {
        removeAllViews();
        Typeface create = Typeface.create("sans-serif-medium", 0);
        Context context = getContext();
        context.getClass();
        ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, R.attr.primary_color);
        Context context2 = getContext();
        context2.getClass();
        int themedAttributeId = Cache.Companion.getThemedAttributeId(context2, R.attr.selectableItemBackgroundBorderless);
        Prefs prefs = Prefs.INSTANCE;
        Iterator it = Prefs.getCustomizeToolbarOrder().iterator();
        while (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            MaterialTextView materialTextView = new MaterialTextView(getContext(), null);
            materialTextView.setGravity(17);
            materialTextView.setPadding(Okio__OkioKt.roundedDpToPx(2.0f), Okio__OkioKt.roundedDpToPx(12.0f), Okio__OkioKt.roundedDpToPx(2.0f), 0);
            materialTextView.setBackgroundResource(themedAttributeId);
            materialTextView.setTextColor(themedColorStateList);
            materialTextView.setTextAlignment(4);
            materialTextView.setTypeface(create, 0);
            materialTextView.setTextSize(0, getResources().getDimension(R.dimen.bottom_nav_label_text_size));
            materialTextView.setMaxLines(2);
            materialTextView.setEllipsize(TextUtils.TruncateAt.END);
            PageActionItem.Companion.getClass();
            PageActionItem find = PageActionItem.Companion.find(intValue);
            materialTextView.setId(find.getViewId());
            materialTextView.setText(getContext().getString(find.getTitleResId()));
            materialTextView.setContentDescription(materialTextView.getText());
            View view = new View[]{materialTextView}[0];
            RegexKt.setTooltipText(view, view.getContentDescription());
            UuidKt.setCompoundDrawableTintList(materialTextView, themedColorStateList);
            materialTextView.setCompoundDrawablesWithIntrinsicBounds(0, find.getIconResId(), 0, 0);
            materialTextView.setCompoundDrawablePadding(-Okio__OkioKt.roundedDpToPx(4.0f));
            materialTextView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(16, this, find));
            materialTextView.setFocusable(true);
            addView(materialTextView, new LinearLayout.LayoutParams(0, -1, 1.0f));
        }
    }
}

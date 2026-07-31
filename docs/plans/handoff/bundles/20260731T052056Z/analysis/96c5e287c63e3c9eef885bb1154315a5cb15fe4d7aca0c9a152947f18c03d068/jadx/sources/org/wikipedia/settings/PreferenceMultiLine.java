package org.wikipedia.settings;

import android.R;
import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import kotlin.Metadata;
import okio.Okio__OkioKt;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000b¨\u0006\f"}, d2 = {"Lorg/wikipedia/settings/PreferenceMultiLine;", "Landroidx/preference/Preference;", "Landroid/content/Context;", "ctx", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PreferenceMultiLine extends Preference {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreferenceMultiLine(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        context.getClass();
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        TextView textView = (TextView) preferenceViewHolder.itemView.findViewById(R.id.title);
        if (textView != null) {
            textView.setSingleLine(false);
        }
        if (textView != null) {
            textView.setTypeface(Typeface.SANS_SERIF, 0);
        }
        if (textView != null) {
            textView.setPadding(0, 0, 0, Okio__OkioKt.roundedDpToPx(4.0f));
        }
        if (this.mOnClickListener == null) {
            this.mOnClickListener = new SearchFragment$$ExternalSyntheticLambda1(7, this);
        }
    }

    @Override // androidx.preference.Preference
    public final void performClick() {
        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
        Context context = this.mContext;
        context.getClass();
        String str = this.mKey;
        if (str == null || str.length() == 0) {
            str = String.valueOf(this.mTitle);
        }
        companion.getClass();
        BreadCrumbLogEvent.Companion.logSettingsSelection(context, str, null);
        super.performClick();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreferenceMultiLine(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreferenceMultiLine(Context context) {
        super(context, null);
        context.getClass();
    }
}

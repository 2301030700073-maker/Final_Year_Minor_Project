package org.wikipedia.settings;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.preference.PreferenceViewHolder;
import androidx.preference.SwitchPreferenceCompat;
import kotlin.Metadata;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0017\u0018\u00002\u00020\u0001B#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000b¨\u0006\f"}, d2 = {"Lorg/wikipedia/settings/SwitchPreferenceMultiLine;", "Landroidx/preference/SwitchPreferenceCompat;", "Landroid/content/Context;", "ctx", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class SwitchPreferenceMultiLine extends SwitchPreferenceCompat {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchPreferenceMultiLine(Context context) {
        super(context, null);
        context.getClass();
        this.mWidgetLayoutResId = R.layout.preference_material_switch;
    }

    @Override // androidx.preference.Preference
    public final boolean callChangeListener(Object obj) {
        boolean callChangeListener = super.callChangeListener(obj);
        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
        Context context = this.mContext;
        context.getClass();
        String str = this.mKey;
        str.getClass();
        companion.getClass();
        BreadCrumbLogEvent.Companion.logSettingsSelection(context, str, (Boolean) obj);
        return callChangeListener;
    }

    @Override // androidx.preference.SwitchPreferenceCompat, androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        TextView textView = (TextView) preferenceViewHolder.itemView.findViewById(android.R.id.title);
        if (textView != null) {
            textView.setSingleLine(false);
        }
        if (textView != null) {
            textView.setTypeface(Typeface.SANS_SERIF, 0);
        }
        if (textView != null) {
            textView.setPadding(0, 0, 0, Okio__OkioKt.roundedDpToPx(4.0f));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchPreferenceMultiLine(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.mWidgetLayoutResId = R.layout.preference_material_switch;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchPreferenceMultiLine(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.mWidgetLayoutResId = R.layout.preference_material_switch;
    }
}

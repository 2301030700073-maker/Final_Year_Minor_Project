package org.wikipedia.settings;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.preference.EditTextPreference;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.wikipedia.R;
import org.wikipedia.R$styleable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001B/\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lorg/wikipedia/settings/EditTextAutoSummarizePreference;", "Landroidx/preference/EditTextPreference;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class EditTextAutoSummarizePreference extends EditTextPreference {
    public final boolean autoSummarize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditTextAutoSummarizePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.getClass();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.EditTextAutoSummarizePreference, i, i2);
        obtainStyledAttributes.getClass();
        boolean z = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
        this.autoSummarize = z;
    }

    @Override // androidx.preference.Preference
    public final void onAttached() {
        super.onAttached();
        updateAutoSummary(getPersistedString(null));
    }

    @Override // androidx.preference.Preference
    public boolean persistString(String str) {
        boolean persistString = super.persistString(str);
        updateAutoSummary(str);
        return persistString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
    
        if (r1.contains(r2.mKey) != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateAutoSummary(java.lang.String r3) {
        /*
            r2 = this;
            boolean r0 = r2.autoSummarize
            if (r0 == 0) goto L37
            androidx.preference.PreferenceManager r0 = r2.mPreferenceManager
            r1 = 0
            if (r0 == 0) goto Le
            android.content.SharedPreferences r0 = r0.getSharedPreferences()
            goto Lf
        Le:
            r0 = r1
        Lf:
            if (r0 == 0) goto L37
            boolean r0 = r2.shouldPersist()
            if (r0 == 0) goto L2b
            androidx.preference.PreferenceManager r0 = r2.mPreferenceManager
            if (r0 == 0) goto L1f
            android.content.SharedPreferences r1 = r0.getSharedPreferences()
        L1f:
            r1.getClass()
            java.lang.String r0 = r2.mKey
            boolean r0 = r1.contains(r0)
            if (r0 == 0) goto L2b
            goto L34
        L2b:
            android.content.Context r3 = r2.mContext
            r0 = 2131887786(0x7f1206aa, float:1.9410189E38)
            java.lang.String r3 = r3.getString(r0)
        L34:
            r2.setSummary(r3)
        L37:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.settings.EditTextAutoSummarizePreference.updateAutoSummary(java.lang.String):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EditTextAutoSummarizePreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EditTextAutoSummarizePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        context.getClass();
    }

    public /* synthetic */ EditTextAutoSummarizePreference(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i3 & 4) != 0 ? R.attr.editTextAutoSummarizePreferenceStyle : i, (i3 & 8) != 0 ? R.style.EditTextAutoSummarizePreference : i2);
    }
}

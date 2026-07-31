package org.wikipedia.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import coil3.util.UtilsKt;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.wikipedia.R;
import org.wikipedia.R$styleable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lorg/wikipedia/settings/LongPreference;", "Lorg/wikipedia/settings/EditTextAutoSummarizePreference;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class LongPreference extends EditTextAutoSummarizePreference {
    public final int radix;
    public final String summaryFormat;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.getClass();
        this.radix = 10;
        String str = "%d";
        this.summaryFormat = "%d";
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LongPreference, 0, 0);
        this.radix = obtainStyledAttributes.getInteger(1, 10);
        String string = obtainStyledAttributes.getString(2);
        if (string != null && string.length() != 0) {
            str = string;
        }
        this.summaryFormat = str;
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public String getPersistedString(String str) {
        long radixStringToLong = radixStringToLong(str);
        if (shouldPersist()) {
            radixStringToLong = this.mPreferenceManager.getSharedPreferences().getLong(this.mKey, radixStringToLong);
        }
        return String.format(this.summaryFormat, Arrays.copyOf(new Object[]{Long.valueOf(radixStringToLong)}, 1));
    }

    public boolean persistRadixString(String str) {
        long radixStringToLong = radixStringToLong(str);
        if (!shouldPersist()) {
            return false;
        }
        long j = ~radixStringToLong;
        boolean shouldPersist = shouldPersist();
        String str2 = this.mKey;
        if (shouldPersist) {
            j = this.mPreferenceManager.getSharedPreferences().getLong(str2, j);
        }
        if (radixStringToLong == j) {
            return true;
        }
        SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
        editor.putLong(str2, radixStringToLong);
        tryCommit(editor);
        return true;
    }

    @Override // org.wikipedia.settings.EditTextAutoSummarizePreference, androidx.preference.Preference
    public final boolean persistString(String str) {
        boolean persistRadixString = persistRadixString(str);
        updateAutoSummary(str);
        return persistRadixString;
    }

    public final long radixStringToLong(String str) {
        if (str == null || str.length() == 0 || str.equals("null")) {
            return 0L;
        }
        int i = this.radix;
        UtilsKt.checkRadix(i);
        return Long.parseLong(str, i);
    }

    public String sanitizeRadixString(String str) {
        return String.format(this.summaryFormat, Arrays.copyOf(new Object[]{Long.valueOf(radixStringToLong(str))}, 1));
    }

    @Override // org.wikipedia.settings.EditTextAutoSummarizePreference
    public final void updateAutoSummary(String str) {
        super.updateAutoSummary(sanitizeRadixString(str));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LongPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LongPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LongPreference(Context context) {
        this(context, null, 0, 0, 14, null);
        context.getClass();
    }

    public /* synthetic */ LongPreference(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? R.attr.longPreferenceStyle : i, (i3 & 8) != 0 ? R.style.LongPreference : i2);
    }
}

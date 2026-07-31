package org.wikipedia.settings;

import android.content.Context;
import android.util.AttributeSet;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lorg/wikipedia/settings/IntPreference;", "Lorg/wikipedia/settings/LongPreference;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class IntPreference extends LongPreference {
    public /* synthetic */ IntPreference(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? R.attr.intPreferenceStyle : i, (i3 & 8) != 0 ? R.style.IntPreference : i2);
    }

    @Override // org.wikipedia.settings.LongPreference, androidx.preference.Preference
    public final String getPersistedString(String str) {
        int persistedInt = getPersistedInt((int) radixStringToLong(str));
        String str2 = this.summaryFormat;
        if (str2 == null) {
            str2 = "";
        }
        return String.format(str2, Arrays.copyOf(new Object[]{Integer.valueOf(persistedInt)}, 1));
    }

    @Override // org.wikipedia.settings.LongPreference
    public final boolean persistRadixString(String str) {
        return persistInt((int) radixStringToLong(str));
    }

    @Override // org.wikipedia.settings.LongPreference
    public final String sanitizeRadixString(String str) {
        int radixStringToLong = (int) radixStringToLong(str);
        String str2 = this.summaryFormat;
        if (str2 == null) {
            str2 = "";
        }
        return String.format(str2, Arrays.copyOf(new Object[]{Integer.valueOf(radixStringToLong)}, 1));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public IntPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public IntPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public IntPreference(Context context) {
        this(context, null, 0, 0, 14, null);
        context.getClass();
    }
}

package org.schabi.newpipe.settings.custom;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import androidx.preference.ListPreference;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.util.Localization;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DurationListPreference extends ListPreference {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DurationListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        context.getClass();
    }

    @Override // androidx.preference.Preference
    public final void onAttached() {
        super.onAttached();
        CharSequence[] charSequenceArr = this.mEntries;
        CharSequence[] charSequenceArr2 = this.mEntryValues;
        CharSequence[] charSequenceArr3 = new CharSequence[charSequenceArr2.length];
        int length = charSequenceArr2.length;
        for (int i = 0; i < length; i++) {
            try {
                CharSequence charSequence = charSequenceArr2[i];
                charSequence.getClass();
                int parseInt = Integer.parseInt((String) charSequence);
                if (parseInt <= 0) {
                    charSequenceArr3[i] = charSequenceArr[i];
                } else {
                    String str = Localization.TAG;
                    if (parseInt < 0) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("duration can not be negative");
                        return;
                    }
                    long j = parseInt;
                    int i2 = (int) (j / 86400);
                    long j2 = j % 86400;
                    int i3 = (int) (j2 / 3600);
                    long j3 = j2 % 3600;
                    int i4 = (int) (j3 / 60);
                    int i5 = (int) (j3 % 60);
                    Resources resources = this.mContext.getResources();
                    charSequenceArr3[i] = i2 > 0 ? resources.getQuantityString(R.plurals.days, i2, Integer.valueOf(i2)) : i3 > 0 ? resources.getQuantityString(R.plurals.hours, i3, Integer.valueOf(i3)) : i4 > 0 ? resources.getQuantityString(R.plurals.minutes, i4, Integer.valueOf(i4)) : resources.getQuantityString(R.plurals.seconds, i5, Integer.valueOf(i5));
                }
            } catch (NumberFormatException e) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m("Invalid number was set in the preference entry values array", e);
                return;
            }
        }
        this.mEntries = charSequenceArr3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DurationListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DurationListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DurationListPreference(Context context) {
        super(context, null);
        context.getClass();
    }
}

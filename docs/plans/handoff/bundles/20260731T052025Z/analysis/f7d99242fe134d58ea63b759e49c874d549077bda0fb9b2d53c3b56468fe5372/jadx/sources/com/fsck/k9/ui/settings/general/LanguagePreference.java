package com.fsck.k9.ui.settings.general;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.res.CamUtils;
import androidx.preference.ListPreference;
import com.fsck.k9.R;
import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LanguagePreference extends ListPreference {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguagePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.getClass();
        String[] stringArray = context.getResources().getStringArray(R.array.supported_languages);
        stringArray.getClass();
        Set set = ArraysKt___ArraysKt.toSet(stringArray);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        CharSequence[] charSequenceArr = this.mEntryValues;
        charSequenceArr.getClass();
        int length = charSequenceArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            int i5 = i4 + 1;
            if (CollectionsKt.contains(set, charSequenceArr[i3])) {
                CharSequence charSequence = this.mEntries[i4];
                charSequence.getClass();
                arrayList.add(charSequence);
                CharSequence charSequence2 = this.mEntryValues[i4];
                charSequence2.getClass();
                arrayList2.add(charSequence2);
            }
            i3++;
            i4 = i5;
        }
        this.mEntries = (CharSequence[]) arrayList.toArray(new CharSequence[0]);
        this.mEntryValues = (CharSequence[]) arrayList2.toArray(new CharSequence[0]);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LanguagePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LanguagePreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LanguagePreference(Context context) {
        this(context, null, 0, 0, 14, null);
        context.getClass();
    }

    public /* synthetic */ LanguagePreference(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? CamUtils.getAttr(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle) : i, (i3 & 8) != 0 ? 0 : i2);
    }
}

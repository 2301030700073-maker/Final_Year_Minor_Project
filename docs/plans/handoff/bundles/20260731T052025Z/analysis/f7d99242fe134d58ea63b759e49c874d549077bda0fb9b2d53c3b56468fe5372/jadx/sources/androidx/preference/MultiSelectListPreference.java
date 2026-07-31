package androidx.preference;

import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import androidx.compose.ui.unit.IntRectKt;
import androidx.fragment.app.FragmentState;
import androidx.preference.Preference;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {
    public final CharSequence[] mEntries;
    public final CharSequence[] mEntryValues;
    public final HashSet mValues;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultiSelectListPreference(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130969037(0x7f0401cd, float:1.7546745E38)
            r1 = 16842897(0x1010091, float:2.3693964E-38)
            int r0 = androidx.core.content.res.CamUtils.getAttr(r4, r0, r1)
            r1 = 0
            r3.<init>(r4, r5, r0, r1)
            java.util.HashSet r2 = new java.util.HashSet
            r2.<init>()
            r3.mValues = r2
            int[] r2 = androidx.preference.R$styleable.MultiSelectListPreference
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r2, r0, r1)
            r5 = 2
            java.lang.CharSequence[] r5 = r4.getTextArray(r5)
            if (r5 != 0) goto L26
            java.lang.CharSequence[] r5 = r4.getTextArray(r1)
        L26:
            r3.mEntries = r5
            r5 = 3
            java.lang.CharSequence[] r5 = r4.getTextArray(r5)
            if (r5 != 0) goto L34
            r5 = 1
            java.lang.CharSequence[] r5 = r4.getTextArray(r5)
        L34:
            r3.mEntryValues = r5
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.MultiSelectListPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setValues(savedState.mValues);
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.mPersistent) {
            return absSavedState;
        }
        SavedState savedState = new SavedState();
        savedState.mValues = this.mValues;
        return savedState;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        Set<String> set = (Set) obj;
        if (shouldPersist()) {
            IntRectKt preferenceDataStore = getPreferenceDataStore();
            String str = this.mKey;
            set = preferenceDataStore != null ? preferenceDataStore.getStringSet(str, set) : this.mPreferenceManager.getSharedPreferences().getStringSet(str, set);
        }
        setValues(set);
    }

    public final void setValues(Set set) {
        HashSet hashSet = this.mValues;
        hashSet.clear();
        hashSet.addAll(set);
        if (shouldPersist()) {
            boolean shouldPersist = shouldPersist();
            String str = this.mKey;
            Set<String> set2 = null;
            if (shouldPersist) {
                IntRectKt preferenceDataStore = getPreferenceDataStore();
                set2 = preferenceDataStore != null ? preferenceDataStore.getStringSet(str, null) : this.mPreferenceManager.getSharedPreferences().getStringSet(str, null);
            }
            if (!set.equals(set2)) {
                IntRectKt preferenceDataStore2 = getPreferenceDataStore();
                if (preferenceDataStore2 != null) {
                    preferenceDataStore2.putStringSet(str, set);
                } else {
                    SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
                    editor.putStringSet(str, set);
                    tryCommit(editor);
                }
            }
        }
        notifyChanged();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(11);
        public HashSet mValues;

        public SavedState(Parcel parcel) {
            super(parcel);
            int readInt = parcel.readInt();
            this.mValues = new HashSet();
            String[] strArr = new String[readInt];
            parcel.readStringArray(strArr);
            Collections.addAll(this.mValues, strArr);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mValues.size());
            HashSet hashSet = this.mValues;
            parcel.writeStringArray((String[]) hashSet.toArray(new String[hashSet.size()]));
        }

        public SavedState() {
            super(AbsSavedState.EMPTY_STATE);
        }
    }
}

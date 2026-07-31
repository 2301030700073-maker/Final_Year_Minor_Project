package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AlertController;
import java.util.ArrayList;
import java.util.HashSet;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MultiSelectListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    public CharSequence[] mEntries;
    public CharSequence[] mEntryValues;
    public final HashSet mNewValues = new HashSet();
    public boolean mPreferenceChanged;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.preference.MultiSelectListPreferenceDialogFragmentCompat$1, reason: invalid class name */
    public final class AnonymousClass1 implements DialogInterface.OnMultiChoiceClickListener {
        public AnonymousClass1() {
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
            MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat = MultiSelectListPreferenceDialogFragmentCompat.this;
            HashSet hashSet = multiSelectListPreferenceDialogFragmentCompat.mNewValues;
            boolean z2 = multiSelectListPreferenceDialogFragmentCompat.mPreferenceChanged;
            if (z) {
                multiSelectListPreferenceDialogFragmentCompat.mPreferenceChanged = hashSet.add(multiSelectListPreferenceDialogFragmentCompat.mEntryValues[i].toString()) | z2;
            } else {
                multiSelectListPreferenceDialogFragmentCompat.mPreferenceChanged = hashSet.remove(multiSelectListPreferenceDialogFragmentCompat.mEntryValues[i].toString()) | z2;
            }
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        HashSet hashSet = this.mNewValues;
        if (bundle != null) {
            hashSet.clear();
            hashSet.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
            this.mPreferenceChanged = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
            this.mEntries = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
            this.mEntryValues = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
            return;
        }
        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) getPreference();
        CharSequence[] charSequenceArr = multiSelectListPreference.mEntries;
        CharSequence[] charSequenceArr2 = multiSelectListPreference.mEntryValues;
        if (charSequenceArr == null || charSequenceArr2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("MultiSelectListPreference requires an entries array and an entryValues array.");
            return;
        }
        hashSet.clear();
        hashSet.addAll(multiSelectListPreference.mValues);
        this.mPreferenceChanged = false;
        this.mEntries = multiSelectListPreference.mEntries;
        this.mEntryValues = charSequenceArr2;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onDialogClosed(boolean z) {
        if (z && this.mPreferenceChanged) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) getPreference();
            HashSet hashSet = this.mNewValues;
            multiSelectListPreference.callChangeListener(hashSet);
            multiSelectListPreference.setValues(hashSet);
        }
        this.mPreferenceChanged = false;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onPrepareDialogBuilder(PriorityQueue priorityQueue) {
        int length = this.mEntryValues.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.mNewValues.contains(this.mEntryValues[i].toString());
        }
        CharSequence[] charSequenceArr = this.mEntries;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        AlertController.AlertParams alertParams = (AlertController.AlertParams) priorityQueue.array;
        alertParams.mItems = charSequenceArr;
        alertParams.mOnCheckboxClickListener = anonymousClass1;
        alertParams.mCheckedItems = zArr;
        alertParams.mIsMultiChoice = true;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.mNewValues));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.mPreferenceChanged);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.mEntries);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.mEntryValues);
    }
}

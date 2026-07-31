package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AlertController;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import okio.PriorityQueue;
import org.wikipedia.R;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    public int mClickedDialogEntryIndex;
    public CharSequence[] mEntries;
    public CharSequence[] mEntryValues;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.preference.ListPreferenceDialogFragmentCompat$1, reason: invalid class name */
    public final class AnonymousClass1 implements DialogInterface.OnClickListener {
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat = (ListPreferenceDialogFragmentCompat) obj;
                    listPreferenceDialogFragmentCompat.mClickedDialogEntryIndex = i;
                    listPreferenceDialogFragmentCompat.mWhichButtonClicked = -1;
                    dialogInterface.dismiss();
                    break;
                default:
                    dialogInterface.getClass();
                    ((SwitchPreferenceCompat) ((Preference) obj)).setChecked(false);
                    Prefs prefs = Prefs.INSTANCE;
                    Prefs.setReadingListSyncEnabled(false);
                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_lists_remote_setup_pending, false);
                    PrefsIoUtil.setBoolean(R.string.preference_key_reading_lists_remote_delete_pending, true);
                    Path.Companion.manualSync$default();
                    break;
            }
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.mClickedDialogEntryIndex = bundle.getInt("ListPreferenceDialogFragment.index", 0);
            this.mEntries = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
            this.mEntryValues = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
            return;
        }
        ListPreference listPreference = (ListPreference) getPreference();
        if (listPreference.mEntries == null || listPreference.mEntryValues == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ListPreference requires an entries array and an entryValues array.");
            return;
        }
        this.mClickedDialogEntryIndex = listPreference.findIndexOfValue(listPreference.mValue);
        this.mEntries = listPreference.mEntries;
        this.mEntryValues = listPreference.mEntryValues;
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onDialogClosed(boolean z) {
        int i;
        if (!z || (i = this.mClickedDialogEntryIndex) < 0) {
            return;
        }
        String charSequence = this.mEntryValues[i].toString();
        ListPreference listPreference = (ListPreference) getPreference();
        if (listPreference.callChangeListener(charSequence)) {
            listPreference.setValue(charSequence);
        }
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat
    public final void onPrepareDialogBuilder(PriorityQueue priorityQueue) {
        CharSequence[] charSequenceArr = this.mEntries;
        int i = this.mClickedDialogEntryIndex;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(0, this);
        AlertController.AlertParams alertParams = (AlertController.AlertParams) priorityQueue.array;
        alertParams.mItems = charSequenceArr;
        alertParams.mOnClickListener = anonymousClass1;
        alertParams.mCheckedItem = i;
        alertParams.mIsSingleChoice = true;
        priorityQueue.setPositiveButton(null, null);
    }

    @Override // androidx.preference.PreferenceDialogFragmentCompat, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.mClickedDialogEntryIndex);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.mEntries);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.mEntryValues);
    }
}

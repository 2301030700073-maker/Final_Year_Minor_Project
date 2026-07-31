package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.appcompat.widget.DropDownListView;
import androidx.appcompat.widget.ListPopupWindow;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {
    public final ArrayAdapter mAdapter;
    public final AnonymousClass1 mItemSelectedListener;
    public Spinner mSpinner;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropDownPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.dropdownPreferenceStyle, 0);
        int i = 0;
        this.mItemSelectedListener = new AnonymousClass1(this, i);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item);
        this.mAdapter = arrayAdapter;
        arrayAdapter.clear();
        CharSequence[] charSequenceArr = this.mEntries;
        if (charSequenceArr != null) {
            int length = charSequenceArr.length;
            while (i < length) {
                arrayAdapter.add(charSequenceArr[i].toString());
                i++;
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void notifyChanged() {
        super.notifyChanged();
        ArrayAdapter arrayAdapter = this.mAdapter;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        int i;
        Spinner spinner = (Spinner) preferenceViewHolder.itemView.findViewById(R.id.spinner);
        this.mSpinner = spinner;
        spinner.setAdapter((SpinnerAdapter) this.mAdapter);
        this.mSpinner.setOnItemSelectedListener(this.mItemSelectedListener);
        Spinner spinner2 = this.mSpinner;
        String str = this.mValue;
        CharSequence[] charSequenceArr = this.mEntryValues;
        if (str != null && charSequenceArr != null) {
            i = charSequenceArr.length - 1;
            while (i >= 0) {
                if (TextUtils.equals(charSequenceArr[i].toString(), str)) {
                    break;
                } else {
                    i--;
                }
            }
        }
        i = -1;
        spinner2.setSelection(i);
        super.onBindViewHolder(preferenceViewHolder);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public final void onClick() {
        this.mSpinner.performClick();
    }

    @Override // androidx.preference.ListPreference
    public final void setEntries(CharSequence[] charSequenceArr) {
        this.mEntries = charSequenceArr;
        ArrayAdapter arrayAdapter = this.mAdapter;
        arrayAdapter.clear();
        CharSequence[] charSequenceArr2 = this.mEntries;
        if (charSequenceArr2 != null) {
            for (CharSequence charSequence : charSequenceArr2) {
                arrayAdapter.add(charSequence.toString());
            }
        }
    }

    @Override // androidx.preference.ListPreference
    public final void setValueIndex() {
        setValue(this.mEntryValues[0].toString());
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.preference.DropDownPreference$1, reason: invalid class name */
    public final class AnonymousClass1 implements AdapterView.OnItemSelectedListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
            DropDownListView dropDownListView;
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    DropDownPreference dropDownPreference = (DropDownPreference) obj;
                    if (i >= 0) {
                        String charSequence = dropDownPreference.mEntryValues[i].toString();
                        if (!charSequence.equals(dropDownPreference.mValue) && dropDownPreference.callChangeListener(charSequence)) {
                            dropDownPreference.setValue(charSequence);
                            break;
                        }
                    }
                    break;
                default:
                    if (i != -1 && (dropDownListView = ((ListPopupWindow) obj).mDropDownList) != null) {
                        dropDownListView.setListSelectionHidden(false);
                        break;
                    }
                    break;
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView adapterView) {
            int i = this.$r8$classId;
        }

        private final void onNothingSelected$androidx$appcompat$widget$ListPopupWindow$3(AdapterView adapterView) {
        }

        private final void onNothingSelected$androidx$preference$DropDownPreference$1(AdapterView adapterView) {
        }
    }
}

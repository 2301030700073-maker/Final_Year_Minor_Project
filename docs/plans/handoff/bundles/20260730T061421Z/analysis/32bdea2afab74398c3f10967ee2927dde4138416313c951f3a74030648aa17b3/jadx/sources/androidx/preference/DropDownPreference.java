package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import b.l.C0142c;
import b.l.V;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {
    public final Context l;
    public final ArrayAdapter m;
    public Spinner n;
    public final AdapterView.OnItemSelectedListener o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DropDownPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.dropdownPreferenceStyle, 0);
        this.o = new C0142c(this);
        this.l = context;
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.l, android.R.layout.simple_spinner_dropdown_item);
        this.m = arrayAdapter;
        arrayAdapter.clear();
        CharSequence[] charSequenceArr = this.g;
        if (charSequenceArr != null) {
            for (CharSequence charSequence : charSequenceArr) {
                this.m.add(charSequence.toString());
            }
        }
    }

    @Override // androidx.preference.Preference
    public void notifyChanged() {
        super.notifyChanged();
        ArrayAdapter arrayAdapter = this.m;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(V v) {
        Spinner spinner = (Spinner) v.itemView.findViewById(R.id.spinner);
        this.n = spinner;
        spinner.setAdapter((SpinnerAdapter) this.m);
        this.n.setOnItemSelectedListener(this.o);
        Spinner spinner2 = this.n;
        String str = this.i;
        CharSequence[] charSequenceArr = this.h;
        int i = -1;
        if (str != null && charSequenceArr != null) {
            int length = charSequenceArr.length - 1;
            while (true) {
                if (length < 0) {
                    break;
                }
                if (TextUtils.equals(charSequenceArr[length].toString(), str)) {
                    i = length;
                    break;
                }
                length--;
            }
        }
        spinner2.setSelection(i);
        super.onBindViewHolder(v);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public void onClick() {
        this.n.performClick();
    }
}

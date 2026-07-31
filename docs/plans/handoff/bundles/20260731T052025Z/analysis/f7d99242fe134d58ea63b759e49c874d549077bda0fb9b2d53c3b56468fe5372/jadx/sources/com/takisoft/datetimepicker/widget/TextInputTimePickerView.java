package com.takisoft.datetimepicker.widget;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import com.fsck.k9.R;
import com.takisoft.datetimepicker.widget.TimePickerClockDelegate;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class TextInputTimePickerView extends RelativeLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Spinner mAmPmSpinner;
    public TextView mErrorLabel;
    public boolean mErrorShowing;
    public EditText mHourEditText;
    public boolean mHourFormatStartsAtZero;
    public TextView mHourLabel;
    public TextView mInputSeparatorView;
    public boolean mIs24Hour;
    public OnValueTypedListener mListener;
    public EditText mMinuteEditText;
    public TextView mMinuteLabel;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OnValueTypedListener {
    }

    public TextInputTimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        attrHandler(context);
    }

    private void setError(boolean z) {
        this.mErrorShowing = z;
        this.mErrorLabel.setVisibility(z ? 0 : 4);
        this.mHourLabel.setVisibility(z ? 4 : 0);
        this.mMinuteLabel.setVisibility(z ? 4 : 0);
    }

    public final void attrHandler(Context context) {
        View.inflate(context, R.layout.time_picker_text_input_material, this);
        this.mHourEditText = (EditText) findViewById(R.id.input_hour);
        this.mMinuteEditText = (EditText) findViewById(R.id.input_minute);
        this.mInputSeparatorView = (TextView) findViewById(R.id.input_separator);
        this.mErrorLabel = (TextView) findViewById(R.id.label_error);
        this.mHourLabel = (TextView) findViewById(R.id.label_hour);
        this.mMinuteLabel = (TextView) findViewById(R.id.label_minute);
        final int i = 0;
        this.mHourEditText.addTextChangedListener(new TextWatcher(this) { // from class: com.takisoft.datetimepicker.widget.TextInputTimePickerView.1
            public final /* synthetic */ TextInputTimePickerView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                int i2 = i;
                TextInputTimePickerView textInputTimePickerView = this.this$0;
                switch (i2) {
                    case 0:
                        String obj = editable.toString();
                        int i3 = TextInputTimePickerView.$r8$clinit;
                        textInputTimePickerView.parseAndSetHourInternal(obj);
                        break;
                    default:
                        String obj2 = editable.toString();
                        int i4 = TextInputTimePickerView.$r8$clinit;
                        textInputTimePickerView.parseAndSetMinuteInternal(obj2);
                        break;
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                int i5 = i;
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                int i5 = i;
            }

            private final void beforeTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$1(int i2, int i3, int i4, CharSequence charSequence) {
            }

            private final void beforeTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$2(int i2, int i3, int i4, CharSequence charSequence) {
            }

            private final void onTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$1(int i2, int i3, int i4, CharSequence charSequence) {
            }

            private final void onTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$2(int i2, int i3, int i4, CharSequence charSequence) {
            }
        });
        final int i2 = 1;
        this.mMinuteEditText.addTextChangedListener(new TextWatcher(this) { // from class: com.takisoft.datetimepicker.widget.TextInputTimePickerView.1
            public final /* synthetic */ TextInputTimePickerView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                int i22 = i2;
                TextInputTimePickerView textInputTimePickerView = this.this$0;
                switch (i22) {
                    case 0:
                        String obj = editable.toString();
                        int i3 = TextInputTimePickerView.$r8$clinit;
                        textInputTimePickerView.parseAndSetHourInternal(obj);
                        break;
                    default:
                        String obj2 = editable.toString();
                        int i4 = TextInputTimePickerView.$r8$clinit;
                        textInputTimePickerView.parseAndSetMinuteInternal(obj2);
                        break;
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i22, int i3, int i4) {
                int i5 = i2;
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i22, int i3, int i4) {
                int i5 = i2;
            }

            private final void beforeTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$1(int i22, int i3, int i4, CharSequence charSequence) {
            }

            private final void beforeTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$2(int i22, int i3, int i4, CharSequence charSequence) {
            }

            private final void onTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$1(int i22, int i3, int i4, CharSequence charSequence) {
            }

            private final void onTextChanged$com$takisoft$datetimepicker$widget$TextInputTimePickerView$2(int i22, int i3, int i4, CharSequence charSequence) {
            }
        });
        this.mAmPmSpinner = (Spinner) findViewById(R.id.am_pm_spinner);
        String[] amPmStrings = TimePicker.getAmPmStrings(context);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item);
        arrayAdapter.add(TimePickerClockDelegate.obtainVerbatim(amPmStrings[0]));
        arrayAdapter.add(TimePickerClockDelegate.obtainVerbatim(amPmStrings[1]));
        this.mAmPmSpinner.setAdapter((SpinnerAdapter) arrayAdapter);
        this.mAmPmSpinner.setOnItemSelectedListener(new SearchView.AnonymousClass9(4, this));
    }

    public final int getHourOfDayFromLocalizedHour(int i) {
        boolean z = this.mIs24Hour;
        boolean z2 = this.mHourFormatStartsAtZero;
        if (z) {
            if (z2 || i != 24) {
                return i;
            }
            return 0;
        }
        if (!z2 && i == 12) {
            i = 0;
        }
        return this.mAmPmSpinner.getSelectedItemPosition() == 1 ? i + 12 : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean parseAndSetHourInternal(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            boolean z = this.mHourFormatStartsAtZero;
            int i = !z ? 1 : 0;
            boolean z2 = this.mIs24Hour;
            int i2 = 23;
            if ((parseInt >= i && parseInt <= (z2 ? 23 : 11) + i) == true) {
                ((TimePickerClockDelegate.AnonymousClass2) this.mListener).onValueChanged(0, getHourOfDayFromLocalizedHour(parseInt));
                return true;
            }
            int i3 = !z ? 1 : 0;
            if (!z2) {
                i2 = i3 + 11;
            }
            ((TimePickerClockDelegate.AnonymousClass2) this.mListener).onValueChanged(0, getHourOfDayFromLocalizedHour(Validate.clamp(parseInt, i3, i2)));
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final boolean parseAndSetMinuteInternal(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt >= 0 && parseInt <= 59) {
                ((TimePickerClockDelegate.AnonymousClass2) this.mListener).onValueChanged(1, parseInt);
                return true;
            }
            ((TimePickerClockDelegate.AnonymousClass2) this.mListener).onValueChanged(1, Validate.clamp(parseInt, 0, 59));
        } catch (NumberFormatException unused) {
        }
        return false;
    }

    public void setHourFormat(int i) {
        this.mHourEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i)});
        this.mMinuteEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i)});
    }

    public void setListener(OnValueTypedListener onValueTypedListener) {
        this.mListener = onValueTypedListener;
    }

    public final boolean validateInput() {
        boolean z = parseAndSetHourInternal(this.mHourEditText.getText().toString()) && parseAndSetMinuteInternal(this.mMinuteEditText.getText().toString());
        setError(!z);
        return z;
    }

    public TextInputTimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextInputTimePickerView(Context context) {
        this(context, null);
    }

    public TextInputTimePickerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        attrHandler(context);
    }
}

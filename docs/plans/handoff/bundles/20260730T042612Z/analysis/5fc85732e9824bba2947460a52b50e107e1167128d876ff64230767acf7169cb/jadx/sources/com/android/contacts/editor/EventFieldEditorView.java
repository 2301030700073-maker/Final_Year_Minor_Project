package com.android.contacts.editor;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import com.android.contacts.R;
import com.android.contacts.datepicker.DatePicker;
import com.android.contacts.datepicker.DatePickerDialog;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.ValuesDelta;
import com.android.contacts.model.account.AccountType;
import com.android.contacts.model.dataitem.DataKind;
import com.android.contacts.util.DateUtils;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class EventFieldEditorView extends LabeledEditorView {
    private Button mDateView;
    private int mHintTextColor;
    private String mNoDateString;
    private int mPrimaryTextColor;

    public EventFieldEditorView(Context context) {
        super(context);
    }

    public EventFieldEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EventFieldEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.android.contacts.editor.LabeledEditorView, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        Resources resources = getContext().getResources();
        this.mPrimaryTextColor = resources.getColor(R.color.primary_text_color);
        this.mHintTextColor = resources.getColor(R.color.editor_disabled_text_color);
        this.mNoDateString = getContext().getString(R.string.event_edit_field_hint_text);
        Button button = (Button) findViewById(R.id.date_view);
        this.mDateView = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.EventFieldEditorView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EventFieldEditorView.this.showDialog(R.id.dialog_event_date_picker);
            }
        });
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    protected void requestFocusForFirstEditField() {
        this.mDateView.requestFocus();
    }

    @Override // com.android.contacts.editor.LabeledEditorView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.mDateView.setEnabled(!isReadOnly() && z);
    }

    @Override // com.android.contacts.editor.LabeledEditorView, com.android.contacts.editor.Editor
    public void setValues(DataKind dataKind, ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        if (dataKind.fieldList.size() != 1) {
            throw new IllegalStateException("kind must have 1 field");
        }
        super.setValues(dataKind, valuesDelta, rawContactDelta, z, viewIdGenerator);
        this.mDateView.setEnabled(isEnabled() && !z);
        rebuildDateView();
        updateEmptiness();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rebuildDateView() {
        String formatDate = DateUtils.formatDate(getContext(), getEntry().getAsString(getKind().fieldList.get(0).column), false);
        if (TextUtils.isEmpty(formatDate)) {
            this.mDateView.setText(this.mNoDateString);
            this.mDateView.setTextColor(this.mHintTextColor);
            setDeleteButtonVisible(false);
        } else {
            this.mDateView.setText(formatDate);
            this.mDateView.setTextColor(this.mPrimaryTextColor);
            setDeleteButtonVisible(true);
        }
    }

    @Override // com.android.contacts.editor.Editor
    public boolean isEmpty() {
        return TextUtils.isEmpty(getEntry().getAsString(getKind().fieldList.get(0).column));
    }

    @Override // com.android.contacts.editor.LabeledEditorView, com.android.contacts.util.DialogManager.DialogShowingView
    public Dialog createDialog(Bundle bundle) {
        if (bundle == null) {
            throw new IllegalArgumentException("bundle must not be null");
        }
        if (bundle.getInt("dialog_id") == R.id.dialog_event_date_picker) {
            return createDatePickerDialog();
        }
        return super.createDialog(bundle);
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    protected AccountType.EventEditType getType() {
        return (AccountType.EventEditType) super.getType();
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    protected void onLabelRebuilt() {
        String str = getKind().fieldList.get(0).column;
        String asString = getEntry().getAsString(str);
        DataKind kind = getKind();
        Calendar calendar = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
        int i = calendar.get(1);
        if ((getType() != null && getType().isYearOptional()) || TextUtils.isEmpty(asString)) {
            return;
        }
        ParsePosition parsePosition = new ParsePosition(0);
        SimpleDateFormat simpleDateFormat = kind.dateFormatWithoutYear;
        Date parse = simpleDateFormat == null ? null : simpleDateFormat.parse(asString, parsePosition);
        if (parse == null) {
            return;
        }
        calendar.setTime(parse);
        calendar.set(i, calendar.get(2), calendar.get(5), 8, 0, 0);
        SimpleDateFormat simpleDateFormat2 = kind.dateFormatWithYear;
        String format = simpleDateFormat2 != null ? simpleDateFormat2.format(calendar.getTime()) : null;
        if (format == null) {
            return;
        }
        onFieldChanged(str, format);
        rebuildDateView();
    }

    private Dialog createDatePickerDialog() {
        int i;
        int i2;
        final String str = getKind().fieldList.get(0).column;
        String asString = getEntry().getAsString(str);
        final DataKind kind = getKind();
        Calendar calendar = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
        int i3 = calendar.get(1);
        final boolean isYearOptional = getType().isYearOptional();
        if (TextUtils.isEmpty(asString)) {
            i2 = calendar.get(2);
            i = calendar.get(5);
        } else {
            Calendar parseDate = DateUtils.parseDate(asString, false);
            if (parseDate == null) {
                return null;
            }
            if (DateUtils.isYearSet(parseDate)) {
                i3 = parseDate.get(1);
            } else if (isYearOptional) {
                i3 = DatePickerDialog.NO_YEAR;
            }
            int i4 = parseDate.get(2);
            i = parseDate.get(5);
            i2 = i4;
        }
        int i5 = i3;
        return new DatePickerDialog(getContext(), new DatePickerDialog.OnDateSetListener() { // from class: com.android.contacts.editor.EventFieldEditorView.2
            @Override // com.android.contacts.datepicker.DatePickerDialog.OnDateSetListener
            public void onDateSet(DatePicker datePicker, int i6, int i7, int i8) {
                if (i6 == 0 && !isYearOptional) {
                    throw new IllegalStateException();
                }
                Calendar calendar2 = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
                calendar2.clear();
                calendar2.set(i6 == DatePickerDialog.NO_YEAR ? 2000 : i6, i7, i8, 8, 0, 0);
                String str2 = null;
                if (i6 == 0) {
                    SimpleDateFormat simpleDateFormat = kind.dateFormatWithoutYear;
                    if (simpleDateFormat != null) {
                        str2 = simpleDateFormat.format(calendar2.getTime());
                    }
                } else {
                    SimpleDateFormat simpleDateFormat2 = kind.dateFormatWithYear;
                    if (simpleDateFormat2 != null) {
                        str2 = simpleDateFormat2.format(calendar2.getTime());
                    }
                }
                if (str2 == null) {
                    return;
                }
                EventFieldEditorView.this.onFieldChanged(str, str2);
                EventFieldEditorView.this.rebuildDateView();
            }
        }, i5, i2, i, isYearOptional);
    }

    @Override // com.android.contacts.editor.Editor
    public void clearAllFields() {
        this.mDateView.setText(this.mNoDateString);
        this.mDateView.setTextColor(this.mHintTextColor);
        onFieldChanged(getKind().fieldList.get(0).column, "");
    }

    public void restoreBirthday() {
        saveValue(getKind().typeColumn, Integer.toString(3));
        rebuildValues();
    }

    public boolean isBirthdayType() {
        AccountType.EventEditType type = getType();
        return type.rawValue == 3 && !type.secondary && type.specificMax == 1 && type.customColumn == null && type.isYearOptional();
    }
}

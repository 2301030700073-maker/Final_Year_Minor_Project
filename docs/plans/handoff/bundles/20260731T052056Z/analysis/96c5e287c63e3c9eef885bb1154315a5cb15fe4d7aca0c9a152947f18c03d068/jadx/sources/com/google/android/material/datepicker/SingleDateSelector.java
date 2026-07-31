package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.google.android.material.datepicker.MaterialDatePicker;
import com.google.android.material.datepicker.SingleDateSelector;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import org.maplibre.android.util.DefaultStyle;
import org.wikipedia.R;
import org.wikipedia.language.LanguageUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SingleDateSelector implements Parcelable {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new DefaultStyle.AnonymousClass1(3);
    public Long selectedItem;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.datepicker.SingleDateSelector$1, reason: invalid class name */
    public final class AnonymousClass1 extends TextWatcherAdapter {
        public final CalendarConstraints constraints;
        public final SimpleDateFormat dateFormat;
        public final String formatHint;
        public int lastLength = 0;
        public final String outOfRange;
        public final Processor$$ExternalSyntheticLambda2 setErrorCallback;
        public DateFormatTextWatcher$$ExternalSyntheticLambda1 setRangeErrorCallback;
        public final TextInputLayout textInputLayout;
        public final /* synthetic */ TextInputLayout val$dateTextInput;
        public final /* synthetic */ MaterialDatePicker.AnonymousClass2 val$listener;

        public AnonymousClass1(String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, MaterialDatePicker.AnonymousClass2 anonymousClass2, TextInputLayout textInputLayout2) {
            this.val$listener = anonymousClass2;
            this.val$dateTextInput = textInputLayout2;
            this.formatHint = str;
            this.dateFormat = simpleDateFormat;
            this.textInputLayout = textInputLayout;
            this.constraints = calendarConstraints;
            this.outOfRange = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
            this.setErrorCallback = new Processor$$ExternalSyntheticLambda2(12, this, str);
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            if (Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) || editable.length() == 0) {
                return;
            }
            int length = editable.length();
            String str = this.formatHint;
            if (length >= str.length() || editable.length() < this.lastLength) {
                return;
            }
            char charAt = str.charAt(editable.length());
            if (Character.isLetterOrDigit(charAt)) {
                return;
            }
            editable.append(charAt);
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.lastLength = charSequence.length();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v3, types: [com.google.android.material.datepicker.DateFormatTextWatcher$$ExternalSyntheticLambda1, java.lang.Runnable] */
        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            CalendarConstraints calendarConstraints = this.constraints;
            TextInputLayout textInputLayout = this.textInputLayout;
            Processor$$ExternalSyntheticLambda2 processor$$ExternalSyntheticLambda2 = this.setErrorCallback;
            textInputLayout.removeCallbacks(processor$$ExternalSyntheticLambda2);
            textInputLayout.removeCallbacks(this.setRangeErrorCallback);
            textInputLayout.setError(null);
            SingleDateSelector singleDateSelector = SingleDateSelector.this;
            singleDateSelector.selectedItem = null;
            singleDateSelector.getClass();
            Long l = singleDateSelector.selectedItem;
            MaterialDatePicker.AnonymousClass2 anonymousClass2 = this.val$listener;
            anonymousClass2.onSelectionChanged(l);
            if (TextUtils.isEmpty(charSequence) || charSequence.length() < this.formatHint.length()) {
                return;
            }
            try {
                Date parse = this.dateFormat.parse(charSequence.toString());
                textInputLayout.setError(null);
                final long time = parse.getTime();
                if (calendarConstraints.validator.isValid(time)) {
                    Calendar dayCopy = UtcDates.getDayCopy(calendarConstraints.start.firstOfMonth);
                    dayCopy.set(5, 1);
                    if (dayCopy.getTimeInMillis() <= time) {
                        Month month = calendarConstraints.end;
                        int i4 = month.daysInMonth;
                        Calendar dayCopy2 = UtcDates.getDayCopy(month.firstOfMonth);
                        dayCopy2.set(5, i4);
                        if (time <= dayCopy2.getTimeInMillis()) {
                            singleDateSelector.selectedItem = Long.valueOf(parse.getTime());
                            singleDateSelector.getClass();
                            anonymousClass2.onSelectionChanged(singleDateSelector.selectedItem);
                            return;
                        }
                    }
                }
                ?? r9 = new Runnable() { // from class: com.google.android.material.datepicker.DateFormatTextWatcher$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        String dateString = LanguageUtil.getDateString(time);
                        SingleDateSelector.AnonymousClass1 anonymousClass1 = SingleDateSelector.AnonymousClass1.this;
                        anonymousClass1.textInputLayout.setError(String.format(anonymousClass1.outOfRange, dateString.replace(' ', (char) 160)));
                        SingleDateSelector singleDateSelector2 = SingleDateSelector.this;
                        anonymousClass1.val$dateTextInput.getError();
                        singleDateSelector2.getClass();
                        anonymousClass1.val$listener.onIncompleteSelectionChanged();
                    }
                };
                this.setRangeErrorCallback = r9;
                textInputLayout.post(r9);
            } catch (ParseException unused) {
                textInputLayout.post(processor$$ExternalSyntheticLambda2);
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final ArrayList getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l = this.selectedItem;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.selectedItem);
    }
}

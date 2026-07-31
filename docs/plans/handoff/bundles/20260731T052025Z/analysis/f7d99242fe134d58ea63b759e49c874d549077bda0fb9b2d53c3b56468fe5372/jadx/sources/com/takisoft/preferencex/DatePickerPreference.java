package com.takisoft.preferencex;

import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.AbsSavedState;
import androidx.preference.DialogPreference;
import androidx.preference.Preference;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import org.openintents.openpgp.OpenPgpError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DatePickerPreference extends DialogPreference {
    public static final SimpleDateFormat FORMAT = new SimpleDateFormat("MM/dd/yyyy", Locale.US);
    public Date date;
    public final Date maxDate;
    public final Date minDate;
    public final Date pickerDate;
    public CharSequence summary;
    public final CharSequence summaryHasDate;
    public final String summaryPattern;

    static {
        PreferenceFragmentCompat.registerPreferenceFragment(DatePickerPreference.class, DatePickerPreferenceDialogFragmentCompat.class);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DatePickerPreference(android.content.Context r5, android.util.AttributeSet r6) {
        /*
            r4 = this;
            r0 = 2130969037(0x7f0401cd, float:1.7546745E38)
            r1 = 16842897(0x1010091, float:2.3693964E-38)
            int r0 = androidx.core.content.res.CamUtils.getAttr(r5, r0, r1)
            r1 = 0
            r4.<init>(r5, r6, r0, r1)
            java.lang.CharSequence r2 = super.getSummary()
            r4.summary = r2
            int[] r2 = com.takisoft.preferencex.datetimepicker.R$styleable.DatePickerPreference
            android.content.res.TypedArray r5 = r5.obtainStyledAttributes(r6, r2, r0, r1)
            r6 = 2
            java.lang.String r6 = r5.getString(r6)
            r0 = 1
            java.lang.String r0 = r5.getString(r0)
            java.lang.String r2 = r5.getString(r1)
            r3 = 5
            boolean r1 = r5.getBoolean(r3, r1)
            if (r1 == 0) goto L43
            okio.AsyncTimeout$Companion r1 = okio.AsyncTimeout.Companion.instance
            if (r1 != 0) goto L3c
            okio.AsyncTimeout$Companion r1 = new okio.AsyncTimeout$Companion
            r3 = 21
            r1.<init>(r3)
            okio.AsyncTimeout.Companion.instance = r1
        L3c:
            okio.AsyncTimeout$Companion r1 = okio.AsyncTimeout.Companion.instance
            r4.mSummaryProvider = r1
            r4.notifyChanged()
        L43:
            boolean r1 = android.text.TextUtils.isEmpty(r6)
            java.text.SimpleDateFormat r3 = com.takisoft.preferencex.DatePickerPreference.FORMAT
            if (r1 != 0) goto L56
            java.util.Date r6 = r3.parse(r6)     // Catch: java.text.ParseException -> L52
            r4.pickerDate = r6     // Catch: java.text.ParseException -> L52
            goto L56
        L52:
            r6 = move-exception
            r6.printStackTrace()
        L56:
            boolean r6 = android.text.TextUtils.isEmpty(r0)
            if (r6 != 0) goto L67
            java.util.Date r6 = r3.parse(r0)     // Catch: java.text.ParseException -> L63
            r4.minDate = r6     // Catch: java.text.ParseException -> L63
            goto L67
        L63:
            r6 = move-exception
            r6.printStackTrace()
        L67:
            boolean r6 = android.text.TextUtils.isEmpty(r2)
            if (r6 != 0) goto L78
            java.util.Date r6 = r3.parse(r2)     // Catch: java.text.ParseException -> L74
            r4.maxDate = r6     // Catch: java.text.ParseException -> L74
            goto L78
        L74:
            r6 = move-exception
            r6.printStackTrace()
        L78:
            r6 = 3
            java.lang.String r6 = r5.getString(r6)
            r4.summaryPattern = r6
            r6 = 4
            java.lang.CharSequence r6 = r5.getText(r6)
            r4.summaryHasDate = r6
            r5.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.takisoft.preferencex.DatePickerPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        Preference.SummaryProvider summaryProvider = this.mSummaryProvider;
        if (summaryProvider != null) {
            return summaryProvider.provideSummary(this);
        }
        if (this.date == null) {
            return this.summary;
        }
        String str = this.summaryPattern;
        DateFormat longDateFormat = str == null ? android.text.format.DateFormat.getLongDateFormat(this.mContext) : new SimpleDateFormat(str, Locale.getDefault());
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(this.date);
        String format = longDateFormat.format(calendar.getTime());
        CharSequence charSequence = this.summaryHasDate;
        return (charSequence == null || format == null) ? format != null ? format : this.summary : String.format(charSequence.toString(), format);
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        Date date = savedState.date;
        if (date == null) {
            setInternalDate(null, false);
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        setInternalDate(FORMAT.format(calendar.getTime()), false);
    }

    @Override // androidx.preference.Preference
    public final Parcelable onSaveInstanceState() {
        super.onSaveInstanceState();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.mPersistent) {
            return absSavedState;
        }
        SavedState savedState = new SavedState();
        savedState.date = this.date;
        return savedState;
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj) {
        setInternalDate(getPersistedString((String) obj), true);
    }

    public final void setInternalDate(String str, boolean z) {
        String persistedString = getPersistedString(null);
        if ((persistedString == null || persistedString.equals(str)) && ((str == null || str.equals(persistedString)) && !z)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.date = null;
        } else {
            try {
                this.date = FORMAT.parse(str);
            } catch (ParseException e) {
                e.printStackTrace();
                this.date = null;
                str = null;
            }
        }
        if (str == null) {
            str = "";
        }
        persistString(str);
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    public final void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null && this.summary != null) {
            this.summary = null;
        } else {
            if (charSequence == null || charSequence.equals(this.summary)) {
                return;
            }
            this.summary = ((String) charSequence).toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OpenPgpError.AnonymousClass1(5);
        public Date date;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.date = (Date) parcel.readSerializable();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeSerializable(this.date);
        }

        public SavedState() {
            super(AbsSavedState.EMPTY_STATE);
        }
    }
}

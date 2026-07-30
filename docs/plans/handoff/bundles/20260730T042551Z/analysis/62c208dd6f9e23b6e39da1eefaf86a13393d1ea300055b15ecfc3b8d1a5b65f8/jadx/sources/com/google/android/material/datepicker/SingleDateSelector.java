package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C0154Cr;
import defpackage.C0622Yc;
import defpackage.C2716es;
import defpackage.C3142jE;
import defpackage.C3850vF;
import defpackage.NJ;
import defpackage.V1;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes3.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public Long f10933do;

    /* renamed from: com.google.android.material.datepicker.SingleDateSelector$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<SingleDateSelector> {
        @Override // android.os.Parcelable.Creator
        public final SingleDateSelector createFromParcel(Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.f10933do = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        public final SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f10933do;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final boolean b() {
        return this.f10933do != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: break */
    public final int mo5784break(Context context) {
        return C0154Cr.m305for(context, R.attr.materialCalendarTheme, Celse.class.getCanonicalName()).data;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: case */
    public final String mo5785case(Context context) {
        Resources resources = context.getResources();
        Long l = this.f10933do;
        return resources.getString(R.string.mtrl_picker_announce_current_selection, l == null ? resources.getString(R.string.mtrl_picker_announce_current_selection_none) : C0622Yc.m2944new(l.longValue(), Locale.getDefault()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: const */
    public final String mo5786const(Context context) {
        Resources resources = context.getResources();
        Long l = this.f10933do;
        return l == null ? resources.getString(R.string.mtrl_picker_date_header_unselected) : resources.getString(R.string.mtrl_picker_date_header_selected, C0622Yc.m2944new(l.longValue(), Locale.getDefault()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: continue */
    public final void mo5787continue(long j) {
        this.f10933do = Long.valueOf(j);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: goto */
    public final Long mo5788goto() {
        return this.f10933do;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: return */
    public final ArrayList mo5789return() {
        return new ArrayList();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: volatile */
    public final View mo5790volatile(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, C2716es.Cdo cdo) {
        View inflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(R.id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.f11639do;
        if (C3850vF.m8460super()) {
            editText.setInputType(17);
        }
        SimpleDateFormat m1522try = NJ.m1522try();
        String m1514case = NJ.m1514case(inflate.getResources(), m1522try);
        textInputLayout.m5986import(m1514case);
        Long l = this.f10933do;
        if (l != null) {
            editText.setText(m1522try.format(l));
        }
        editText.addTextChangedListener(new C3142jE(this, m1514case, m1522try, textInputLayout, calendarConstraints, cdo, textInputLayout));
        V1.m2497const(editText);
        return inflate;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f10933do);
    }
}

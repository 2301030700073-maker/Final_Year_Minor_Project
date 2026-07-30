package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0597Wv;
import defpackage.C0154Cr;
import defpackage.C0622Yc;
import defpackage.C2716es;
import defpackage.C3712sw;
import defpackage.C3850vF;
import defpackage.Ky;
import defpackage.Ly;
import defpackage.NJ;
import defpackage.V1;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class RangeDateSelector implements DateSelector<C3712sw<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public String f10928break;

    /* renamed from: do, reason: not valid java name */
    public Long f10929do = null;

    /* renamed from: if, reason: not valid java name */
    public Long f10931if = null;

    /* renamed from: for, reason: not valid java name */
    public Long f10930for = null;

    /* renamed from: new, reason: not valid java name */
    public Long f10932new = null;

    /* renamed from: com.google.android.material.datepicker.RangeDateSelector$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<RangeDateSelector> {
        @Override // android.os.Parcelable.Creator
        public final RangeDateSelector createFromParcel(Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.f10929do = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.f10931if = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        public final RangeDateSelector[] newArray(int i) {
            return new RangeDateSelector[i];
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5796do(RangeDateSelector rangeDateSelector, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, AbstractC0597Wv abstractC0597Wv) {
        Long l = rangeDateSelector.f10930for;
        if (l == null || rangeDateSelector.f10932new == null) {
            if (textInputLayout.m5979else() != null && rangeDateSelector.f10928break.contentEquals(textInputLayout.m5979else())) {
                textInputLayout.m5981final(null);
            }
            if (textInputLayout2.m5979else() != null && " ".contentEquals(textInputLayout2.m5979else())) {
                textInputLayout2.m5981final(null);
            }
            abstractC0597Wv.mo2778do();
        } else {
            if (l.longValue() <= rangeDateSelector.f10932new.longValue()) {
                Long l2 = rangeDateSelector.f10930for;
                rangeDateSelector.f10929do = l2;
                Long l3 = rangeDateSelector.f10932new;
                rangeDateSelector.f10931if = l3;
                abstractC0597Wv.mo2779if(new C3712sw(l2, l3));
            } else {
                textInputLayout.m5981final(rangeDateSelector.f10928break);
                textInputLayout2.m5981final(" ");
                abstractC0597Wv.mo2778do();
            }
        }
        if (!TextUtils.isEmpty(textInputLayout.m5979else())) {
            textInputLayout.m5979else();
        } else {
            if (TextUtils.isEmpty(textInputLayout2.m5979else())) {
                return;
            }
            textInputLayout2.m5979else();
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f10929do;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.f10931if;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final boolean b() {
        Long l = this.f10929do;
        if (l == null || this.f10931if == null) {
            return false;
        }
        return (l.longValue() > this.f10931if.longValue() ? 1 : (l.longValue() == this.f10931if.longValue() ? 0 : -1)) <= 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: break */
    public final int mo5784break(Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return C0154Cr.m305for(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? R.attr.materialCalendarTheme : R.attr.materialCalendarFullscreenTheme, Celse.class.getCanonicalName()).data;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: case */
    public final String mo5785case(Context context) {
        Resources resources = context.getResources();
        C3712sw<String, String> m2941do = C0622Yc.m2941do(this.f10929do, this.f10931if);
        String str = m2941do.f15568do;
        String string = str == null ? resources.getString(R.string.mtrl_picker_announce_current_selection_none) : str;
        String str2 = m2941do.f15569if;
        return resources.getString(R.string.mtrl_picker_announce_current_range_selection, string, str2 == null ? resources.getString(R.string.mtrl_picker_announce_current_selection_none) : str2);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: const */
    public final String mo5786const(Context context) {
        Resources resources = context.getResources();
        Long l = this.f10929do;
        if (l == null && this.f10931if == null) {
            return resources.getString(R.string.mtrl_picker_range_header_unselected);
        }
        Long l2 = this.f10931if;
        if (l2 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_start_selected, C0622Yc.m2943if(l.longValue()));
        }
        if (l == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_end_selected, C0622Yc.m2943if(l2.longValue()));
        }
        C3712sw<String, String> m2941do = C0622Yc.m2941do(l, l2);
        return resources.getString(R.string.mtrl_picker_range_header_selected, m2941do.f15568do, m2941do.f15569if);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: continue */
    public final void mo5787continue(long j) {
        Long l = this.f10929do;
        if (l == null) {
            this.f10929do = Long.valueOf(j);
            return;
        }
        if (this.f10931if == null) {
            if (l.longValue() <= j) {
                this.f10931if = Long.valueOf(j);
                return;
            }
        }
        this.f10931if = null;
        this.f10929do = Long.valueOf(j);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: goto */
    public final C3712sw<Long, Long> mo5788goto() {
        return new C3712sw<>(this.f10929do, this.f10931if);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: return */
    public final ArrayList mo5789return() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C3712sw(this.f10929do, this.f10931if));
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: volatile */
    public final View mo5790volatile(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, C2716es.Cdo cdo) {
        View inflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(R.id.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(R.id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.f11639do;
        EditText editText2 = textInputLayout2.f11639do;
        if (C3850vF.m8460super()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f10928break = inflate.getResources().getString(R.string.mtrl_picker_invalid_range);
        SimpleDateFormat m1522try = NJ.m1522try();
        Long l = this.f10929do;
        if (l != null) {
            editText.setText(m1522try.format(l));
            this.f10930for = this.f10929do;
        }
        Long l2 = this.f10931if;
        if (l2 != null) {
            editText2.setText(m1522try.format(l2));
            this.f10932new = this.f10931if;
        }
        String m1514case = NJ.m1514case(inflate.getResources(), m1522try);
        textInputLayout.m5986import(m1514case);
        textInputLayout2.m5986import(m1514case);
        editText.addTextChangedListener(new Ky(this, m1514case, m1522try, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, cdo));
        editText2.addTextChangedListener(new Ly(this, m1514case, m1522try, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, cdo));
        V1.m2497const(editText, editText2);
        return inflate;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f10929do);
        parcel.writeValue(this.f10931if);
    }
}

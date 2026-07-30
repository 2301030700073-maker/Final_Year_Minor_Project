package defpackage;

import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.Cdo;
import com.google.android.material.datepicker.RangeDateSelector;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.C2716es;
import java.text.SimpleDateFormat;

/* loaded from: classes3.dex */
public final class Ly extends Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AbstractC0597Wv f2065do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ RangeDateSelector f2066do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ TextInputLayout f2067for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ TextInputLayout f2068if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ly(RangeDateSelector rangeDateSelector, String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, C2716es.Cdo cdo) {
        super(str, simpleDateFormat, textInputLayout, calendarConstraints);
        this.f2066do = rangeDateSelector;
        this.f2068if = textInputLayout2;
        this.f2067for = textInputLayout3;
        this.f2065do = cdo;
    }

    @Override // com.google.android.material.datepicker.Cdo
    /* renamed from: do */
    public final void mo1229do() {
        RangeDateSelector rangeDateSelector = this.f2066do;
        rangeDateSelector.f10932new = null;
        RangeDateSelector.m5796do(rangeDateSelector, this.f2068if, this.f2067for, this.f2065do);
    }

    @Override // com.google.android.material.datepicker.Cdo
    /* renamed from: if */
    public final void mo1230if(Long l) {
        RangeDateSelector rangeDateSelector = this.f2066do;
        rangeDateSelector.f10932new = l;
        RangeDateSelector.m5796do(rangeDateSelector, this.f2068if, this.f2067for, this.f2065do);
    }
}

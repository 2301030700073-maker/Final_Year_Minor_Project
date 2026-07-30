package defpackage;

import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.Cdo;
import com.google.android.material.datepicker.RangeDateSelector;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.C2716es;
import java.text.SimpleDateFormat;

/* loaded from: classes3.dex */
public final class Ky extends Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AbstractC0597Wv f1897do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ RangeDateSelector f1898do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ TextInputLayout f1899for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ TextInputLayout f1900if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ky(RangeDateSelector rangeDateSelector, String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, C2716es.Cdo cdo) {
        super(str, simpleDateFormat, textInputLayout, calendarConstraints);
        this.f1898do = rangeDateSelector;
        this.f1900if = textInputLayout2;
        this.f1899for = textInputLayout3;
        this.f1897do = cdo;
    }

    @Override // com.google.android.material.datepicker.Cdo
    /* renamed from: do, reason: not valid java name */
    public final void mo1229do() {
        RangeDateSelector rangeDateSelector = this.f1898do;
        rangeDateSelector.f10930for = null;
        RangeDateSelector.m5796do(rangeDateSelector, this.f1900if, this.f1899for, this.f1897do);
    }

    @Override // com.google.android.material.datepicker.Cdo
    /* renamed from: if, reason: not valid java name */
    public final void mo1230if(Long l) {
        RangeDateSelector rangeDateSelector = this.f1898do;
        rangeDateSelector.f10930for = l;
        RangeDateSelector.m5796do(rangeDateSelector, this.f1900if, this.f1899for, this.f1897do);
    }
}

package defpackage;

import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.Cdo;
import com.google.android.material.datepicker.SingleDateSelector;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.C2716es;
import java.text.SimpleDateFormat;

/* renamed from: jE, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3142jE extends Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AbstractC0597Wv f13658do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ SingleDateSelector f13659do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ TextInputLayout f13660if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3142jE(SingleDateSelector singleDateSelector, String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, C2716es.Cdo cdo, TextInputLayout textInputLayout2) {
        super(str, simpleDateFormat, textInputLayout, calendarConstraints);
        this.f13659do = singleDateSelector;
        this.f13658do = cdo;
        this.f13660if = textInputLayout2;
    }

    @Override // com.google.android.material.datepicker.Cdo
    /* renamed from: do */
    public final void mo1229do() {
        this.f13660if.m5979else();
        this.f13659do.getClass();
        this.f13658do.mo2778do();
    }

    @Override // com.google.android.material.datepicker.Cdo
    /* renamed from: if */
    public final void mo1230if(Long l) {
        SingleDateSelector singleDateSelector = this.f13659do;
        if (l == null) {
            singleDateSelector.f10933do = null;
        } else {
            singleDateSelector.mo5787continue(l.longValue());
        }
        singleDateSelector.getClass();
        this.f13658do.mo2779if(singleDateSelector.f10933do);
    }
}

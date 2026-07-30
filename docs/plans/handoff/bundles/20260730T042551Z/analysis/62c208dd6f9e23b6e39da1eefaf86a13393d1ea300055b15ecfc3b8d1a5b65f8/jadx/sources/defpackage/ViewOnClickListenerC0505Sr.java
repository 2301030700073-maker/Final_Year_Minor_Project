package defpackage;

import android.view.View;
import com.google.android.material.datepicker.Celse;
import com.google.android.material.search.SearchView;

/* renamed from: Sr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class ViewOnClickListenerC0505Sr implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f3557do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f3558for;

    public /* synthetic */ ViewOnClickListenerC0505Sr(Object obj, int i) {
        this.f3558for = i;
        this.f3557do = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f3558for;
        Object obj = this.f3557do;
        switch (i) {
            case 0:
                Celse celse = (Celse) obj;
                celse.f10958do.setEnabled(celse.m5801new().b());
                celse.f10965do.toggle();
                celse.f10983try = celse.f10983try == 1 ? 0 : 1;
                celse.m5802this(celse.f10965do);
                celse.m5800goto();
                break;
            default:
                int i2 = SearchView.f11281try;
                ((SearchView) obj).m5860final();
                break;
        }
    }
}

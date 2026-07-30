package defpackage;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.datepicker.DateSelector;
import java.util.Iterator;

/* renamed from: es, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2716es<S> extends Nw<S> {

    /* renamed from: do, reason: not valid java name */
    public CalendarConstraints f12733do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public DateSelector<S> f12734do;

    /* renamed from: for, reason: not valid java name */
    public int f12735for;

    /* renamed from: es$do, reason: invalid class name */
    public class Cdo extends AbstractC0597Wv<S> {
        public Cdo() {
        }

        @Override // defpackage.AbstractC0597Wv
        /* renamed from: do */
        public final void mo2778do() {
            Iterator<AbstractC0597Wv<S>> it = ((Nw) C2716es.this).f2450do.iterator();
            while (it.hasNext()) {
                it.next().mo2778do();
            }
        }

        @Override // defpackage.AbstractC0597Wv
        /* renamed from: if */
        public final void mo2779if(S s) {
            Iterator<AbstractC0597Wv<S>> it = ((Nw) C2716es.this).f2450do.iterator();
            while (it.hasNext()) {
                it.next().mo2779if(s);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f12735for = bundle.getInt("THEME_RES_ID_KEY");
        this.f12734do = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f12733do = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f12734do.mo5790volatile(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f12735for)), viewGroup, this.f12733do, new Cdo());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f12735for);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f12734do);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f12733do);
    }
}

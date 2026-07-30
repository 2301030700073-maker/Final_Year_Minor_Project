package com.google.android.material.datepicker;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.Creturn;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.datepicker.Celse;
import com.joeykrim.rootcheck.R;
import defpackage.C0373Mr;
import defpackage.C0644Zc;
import defpackage.C3893w;
import defpackage.C3900w6;
import defpackage.Cimplements;
import defpackage.EE;
import defpackage.Lr;
import defpackage.Nw;
import defpackage.QK;
import defpackage.RunnableC0330Kr;
import defpackage.ViewOnClickListenerC0395Nr;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* renamed from: com.google.android.material.datepicker.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<S> extends Nw<S> {

    /* renamed from: try, reason: not valid java name */
    public static final /* synthetic */ int f10988try = 0;

    /* renamed from: do, reason: not valid java name */
    public View f10989do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RecyclerView f10990do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CalendarConstraints f10991do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public DateSelector<S> f10992do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public DayViewDecorator f10993do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Month f10994do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3900w6 f10995do;

    /* renamed from: for, reason: not valid java name */
    public int f10996for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public View f10997for;

    /* renamed from: if, reason: not valid java name */
    public View f10998if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public RecyclerView f10999if;

    /* renamed from: new, reason: not valid java name */
    public int f11000new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public View f11001new;

    /* renamed from: com.google.android.material.datepicker.for$do, reason: invalid class name */
    public class Cdo extends Cimplements {
        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setCollectionInfo(null);
        }
    }

    /* renamed from: com.google.android.material.datepicker.for$for, reason: invalid class name and collision with other inner class name */
    public class C0070for implements Cnew {
        public C0070for() {
        }
    }

    /* renamed from: com.google.android.material.datepicker.for$if, reason: invalid class name */
    public class Cif extends EE {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ int f11003break;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(int i, int i2) {
            super(i);
            this.f11003break = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public final void V(RecyclerView.Cstatic cstatic, int[] iArr) {
            int i = this.f11003break;
            Cfor cfor = Cfor.this;
            if (i == 0) {
                iArr[0] = cfor.f10999if.getWidth();
                iArr[1] = cfor.f10999if.getWidth();
            } else {
                iArr[0] = cfor.f10999if.getHeight();
                iArr[1] = cfor.f10999if.getHeight();
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.for$new, reason: invalid class name */
    public interface Cnew {
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5803case(int i) {
        this.f11000new = i;
        if (i != 2) {
            if (i == 1) {
                this.f10997for.setVisibility(8);
                this.f11001new.setVisibility(0);
                this.f10989do.setVisibility(0);
                this.f10998if.setVisibility(0);
                m5804try(this.f10994do);
                return;
            }
            return;
        }
        RecyclerView recyclerView = this.f10990do;
        recyclerView.f7312do.I(this.f10994do.f10926new - ((Cclass) recyclerView.f7323do).f10945do.f10991do.f10900do.f10926new);
        this.f10997for.setVisibility(0);
        this.f11001new.setVisibility(8);
        this.f10989do.setVisibility(8);
        this.f10998if.setVisibility(8);
    }

    @Override // defpackage.Nw
    /* renamed from: new */
    public final boolean mo1558new(Celse.Cfor cfor) {
        return super.mo1558new(cfor);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f10996for = bundle.getInt("THEME_RES_ID_KEY");
        this.f10992do = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.f10991do = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f10993do = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f10994do = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f10996for);
        this.f10995do = new C3900w6(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month month = this.f10991do.f10900do;
        if (Celse.m5797case(contextThemeWrapper)) {
            i = R.layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = R.layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View inflate = cloneInContext.inflate(i, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height);
        int i3 = Cgoto.f11005do;
        inflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding) * (i3 - 1)) + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i3) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) inflate.findViewById(R.id.mtrl_calendar_days_of_week);
        QK.m1858native(gridView, new Cdo());
        int i4 = this.f10991do.f10901for;
        gridView.setAdapter((ListAdapter) (i4 > 0 ? new C0644Zc(i4) : new C0644Zc()));
        gridView.setNumColumns(month.f10927try);
        gridView.setEnabled(false);
        this.f10999if = (RecyclerView) inflate.findViewById(R.id.mtrl_calendar_months);
        getContext();
        this.f10999if.u(new Cif(i2, i2));
        this.f10999if.setTag("MONTHS_VIEW_GROUP_TAG");
        Cbreak cbreak = new Cbreak(contextThemeWrapper, this.f10992do, this.f10991do, this.f10993do, new C0070for());
        this.f10999if.t(cbreak);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.f10990do = recyclerView;
        if (recyclerView != null) {
            recyclerView.f7343for = true;
            recyclerView.u(new GridLayoutManager(integer));
            this.f10990do.t(new Cclass(this));
            this.f10990do.m4362this(new com.google.android.material.datepicker.Cnew(this));
        }
        if (inflate.findViewById(R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(R.id.month_navigation_fragment_toggle);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            QK.m1858native(materialButton, new C0373Mr(this));
            View findViewById = inflate.findViewById(R.id.month_navigation_previous);
            this.f10989do = findViewById;
            findViewById.setTag("NAVIGATION_PREV_TAG");
            View findViewById2 = inflate.findViewById(R.id.month_navigation_next);
            this.f10998if = findViewById2;
            findViewById2.setTag("NAVIGATION_NEXT_TAG");
            this.f10997for = inflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
            this.f11001new = inflate.findViewById(R.id.mtrl_calendar_day_selector_frame);
            m5803case(1);
            materialButton.setText(this.f10994do.m5795throw());
            this.f10999if.m4341break(new Ctry(this, cbreak, materialButton));
            materialButton.setOnClickListener(new ViewOnClickListenerC0395Nr(this));
            this.f10998if.setOnClickListener(new Ccase(this, cbreak));
            this.f10989do.setOnClickListener(new com.google.android.material.datepicker.Cif(this, cbreak));
        }
        if (!Celse.m5797case(contextThemeWrapper)) {
            new Creturn().m4516do(this.f10999if);
        }
        RecyclerView recyclerView2 = this.f10999if;
        Month month2 = this.f10994do;
        Month month3 = cbreak.f10934do.f10900do;
        if (!(month3.f10924do instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        recyclerView2.s((month2.f10925for - month3.f10925for) + ((month2.f10926new - month3.f10926new) * 12));
        QK.m1858native(this.f10999if, new Lr());
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f10996for);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f10992do);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f10991do);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f10993do);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f10994do);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5804try(Month month) {
        Month month2 = ((Cbreak) this.f10999if.f7323do).f10934do.f10900do;
        Calendar calendar = month2.f10924do;
        if (!(calendar instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        int i = month.f10926new;
        int i2 = month2.f10926new;
        int i3 = month.f10925for;
        int i4 = month2.f10925for;
        int i5 = (i3 - i4) + ((i - i2) * 12);
        Month month3 = this.f10994do;
        if (!(calendar instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        int i6 = i5 - ((month3.f10925for - i4) + ((month3.f10926new - i2) * 12));
        boolean z = Math.abs(i6) > 3;
        boolean z2 = i6 > 0;
        this.f10994do = month;
        if (z && z2) {
            this.f10999if.s(i5 - 3);
            this.f10999if.post(new RunnableC0330Kr(this, i5));
        } else if (!z) {
            this.f10999if.post(new RunnableC0330Kr(this, i5));
        } else {
            this.f10999if.s(i5 + 3);
            this.f10999if.post(new RunnableC0330Kr(this, i5));
        }
    }
}

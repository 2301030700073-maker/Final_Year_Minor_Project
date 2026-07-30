package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Ccatch;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.internal.CheckableImageButton;
import defpackage.AbstractC0597Wv;
import defpackage.C0154Cr;
import defpackage.C0492Se;
import defpackage.C0527Tr;
import defpackage.C0716as;
import defpackage.C2865hM;
import defpackage.C3209kM;
import defpackage.C3385nL;
import defpackage.C3645ro;
import defpackage.G8;
import defpackage.GE;
import defpackage.InterfaceC0615Xr;
import defpackage.NJ;
import defpackage.Nw;
import defpackage.O2;
import defpackage.QK;
import defpackage.ViewOnClickListenerC0505Sr;
import defpackage.ViewOnTouchListenerC0611Xn;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* renamed from: com.google.android.material.datepicker.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<S> extends Ccatch {

    /* renamed from: case, reason: not valid java name */
    public int f10955case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public CharSequence f10956case;

    /* renamed from: do, reason: not valid java name */
    public Nw<S> f10957do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Button f10958do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f10959do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0716as f10960do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CalendarConstraints f10961do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public DateSelector<S> f10962do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public DayViewDecorator f10963do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public com.google.android.material.datepicker.Cfor<S> f10964do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CheckableImageButton f10965do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f10966do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10968do;

    /* renamed from: else, reason: not valid java name */
    public int f10969else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public CharSequence f10970else;

    /* renamed from: for, reason: not valid java name */
    public int f10971for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CharSequence f10972for;

    /* renamed from: goto, reason: not valid java name */
    public int f10974goto;

    /* renamed from: if, reason: not valid java name */
    public TextView f10975if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f10976if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f10978if;

    /* renamed from: new, reason: not valid java name */
    public int f10979new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public CharSequence f10980new;

    /* renamed from: this, reason: not valid java name */
    public int f10982this;

    /* renamed from: try, reason: not valid java name */
    public int f10983try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public CharSequence f10984try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<InterfaceC0615Xr<? super S>> f10967do = new LinkedHashSet<>();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<View.OnClickListener> f10977if = new LinkedHashSet<>();

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<DialogInterface.OnCancelListener> f10973for = new LinkedHashSet<>();

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<DialogInterface.OnDismissListener> f10981new = new LinkedHashSet<>();

    /* renamed from: com.google.android.material.datepicker.else$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Celse celse = Celse.this;
            Iterator<InterfaceC0615Xr<? super S>> it = celse.f10967do.iterator();
            while (it.hasNext()) {
                InterfaceC0615Xr<? super S> next = it.next();
                celse.m5801new().mo5788goto();
                next.m2875do();
            }
            celse.dismiss();
        }
    }

    /* renamed from: com.google.android.material.datepicker.else$for, reason: invalid class name */
    public class Cfor extends AbstractC0597Wv<S> {
        public Cfor() {
        }

        @Override // defpackage.AbstractC0597Wv
        /* renamed from: do */
        public final void mo2778do() {
            Celse.this.f10958do.setEnabled(false);
        }

        @Override // defpackage.AbstractC0597Wv
        /* renamed from: if */
        public final void mo2779if(S s) {
            Celse celse = Celse.this;
            String mo5786const = celse.m5801new().mo5786const(celse.getContext());
            celse.f10975if.setContentDescription(celse.m5801new().mo5785case(celse.requireContext()));
            celse.f10975if.setText(mo5786const);
            celse.f10958do.setEnabled(celse.m5801new().b());
        }
    }

    /* renamed from: com.google.android.material.datepicker.else$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Celse celse = Celse.this;
            Iterator<View.OnClickListener> it = celse.f10977if.iterator();
            while (it.hasNext()) {
                it.next().onClick(view);
            }
            celse.dismiss();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m5797case(Context context) {
        return m5798else(context, R.attr.windowFullscreen);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m5798else(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C0154Cr.m305for(context, com.joeykrim.rootcheck.R.attr.materialCalendarStyle, com.google.android.material.datepicker.Cfor.class.getCanonicalName()).data, new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m5799try(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.joeykrim.rootcheck.R.dimen.mtrl_calendar_content_padding);
        Month month = new Month(NJ.m1518goto());
        int dimensionPixelSize = resources.getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.mtrl_calendar_day_width);
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(com.joeykrim.rootcheck.R.dimen.mtrl_calendar_month_horizontal_padding);
        int i = month.f10927try;
        return ((i - 1) * dimensionPixelOffset2) + (dimensionPixelSize * i) + (dimensionPixelOffset * 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d4  */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.fragment.app.Fragment, es] */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5800goto() {
        /*
            r8 = this;
            android.content.Context r0 = r8.requireContext()
            int r1 = r8.f10971for
            if (r1 == 0) goto L9
            goto L11
        L9:
            com.google.android.material.datepicker.DateSelector r1 = r8.m5801new()
            int r1 = r1.mo5784break(r0)
        L11:
            com.google.android.material.datepicker.DateSelector r0 = r8.m5801new()
            com.google.android.material.datepicker.CalendarConstraints r2 = r8.f10961do
            com.google.android.material.datepicker.DayViewDecorator r3 = r8.f10963do
            com.google.android.material.datepicker.for r4 = new com.google.android.material.datepicker.for
            r4.<init>()
            android.os.Bundle r5 = new android.os.Bundle
            r5.<init>()
            java.lang.String r6 = "THEME_RES_ID_KEY"
            r5.putInt(r6, r1)
            java.lang.String r7 = "GRID_SELECTOR_KEY"
            r5.putParcelable(r7, r0)
            java.lang.String r0 = "CALENDAR_CONSTRAINTS_KEY"
            r5.putParcelable(r0, r2)
            java.lang.String r7 = "DAY_VIEW_DECORATOR_KEY"
            r5.putParcelable(r7, r3)
            com.google.android.material.datepicker.Month r2 = r2.f10902for
            java.lang.String r3 = "CURRENT_MONTH_KEY"
            r5.putParcelable(r3, r2)
            r4.setArguments(r5)
            r8.f10964do = r4
            int r2 = r8.f10983try
            r3 = 1
            if (r2 != r3) goto L67
            com.google.android.material.datepicker.DateSelector r2 = r8.m5801new()
            com.google.android.material.datepicker.CalendarConstraints r4 = r8.f10961do
            es r5 = new es
            r5.<init>()
            android.os.Bundle r7 = new android.os.Bundle
            r7.<init>()
            r7.putInt(r6, r1)
            java.lang.String r1 = "DATE_SELECTOR_KEY"
            r7.putParcelable(r1, r2)
            r7.putParcelable(r0, r4)
            r5.setArguments(r7)
            r4 = r5
        L67:
            r8.f10957do = r4
            android.widget.TextView r0 = r8.f10959do
            int r1 = r8.f10983try
            r2 = 0
            r4 = 2
            if (r1 != r3) goto L84
            android.content.res.Resources r1 = r8.getResources()
            android.content.res.Configuration r1 = r1.getConfiguration()
            int r1 = r1.orientation
            if (r1 != r4) goto L7e
            goto L7f
        L7e:
            r3 = 0
        L7f:
            if (r3 == 0) goto L84
            java.lang.CharSequence r1 = r8.f10970else
            goto L86
        L84:
            java.lang.CharSequence r1 = r8.f10956case
        L86:
            r0.setText(r1)
            com.google.android.material.datepicker.DateSelector r0 = r8.m5801new()
            android.content.Context r1 = r8.getContext()
            java.lang.String r0 = r0.mo5786const(r1)
            android.widget.TextView r1 = r8.f10975if
            com.google.android.material.datepicker.DateSelector r3 = r8.m5801new()
            android.content.Context r5 = r8.requireContext()
            java.lang.String r3 = r3.mo5785case(r5)
            r1.setContentDescription(r3)
            android.widget.TextView r1 = r8.f10975if
            r1.setText(r0)
            androidx.fragment.app.FragmentManager r0 = r8.getChildFragmentManager()
            r0.getClass()
            androidx.fragment.app.do r1 = new androidx.fragment.app.do
            r1.<init>(r0)
            Nw<S> r0 = r8.f10957do
            r3 = 0
            r5 = 2131231249(0x7f080211, float:1.8078574E38)
            r1.mo4172for(r5, r0, r3, r4)
            boolean r0 = r1.f6989do
            if (r0 != 0) goto Ld4
            androidx.fragment.app.FragmentManager r0 = r1.f6952do
            r0.m4150throws(r1, r2)
            Nw<S> r0 = r8.f10957do
            com.google.android.material.datepicker.else$for r1 = new com.google.android.material.datepicker.else$for
            r1.<init>()
            r0.mo1558new(r1)
            return
        Ld4:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "This transaction is already being added to the back stack"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.Celse.m5800goto():void");
    }

    /* renamed from: new, reason: not valid java name */
    public final DateSelector<S> m5801new() {
        if (this.f10962do == null) {
            this.f10962do = (DateSelector) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f10962do;
    }

    @Override // androidx.fragment.app.Ccatch, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f10973for.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.Ccatch, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f10971for = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.f10962do = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f10961do = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f10963do = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f10979new = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f10966do = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f10983try = bundle.getInt("INPUT_MODE_KEY");
        this.f10955case = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f10976if = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f10969else = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f10972for = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f10974goto = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f10980new = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.f10982this = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f10984try = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence charSequence = this.f10966do;
        if (charSequence == null) {
            charSequence = requireContext().getResources().getText(this.f10979new);
        }
        this.f10956case = charSequence;
        if (charSequence != null) {
            CharSequence[] split = TextUtils.split(String.valueOf(charSequence), "\n");
            if (split.length > 1) {
                charSequence = split[0];
            }
        } else {
            charSequence = null;
        }
        this.f10970else = charSequence;
    }

    @Override // androidx.fragment.app.Ccatch
    public final Dialog onCreateDialog(Bundle bundle) {
        Context requireContext = requireContext();
        Context requireContext2 = requireContext();
        int i = this.f10971for;
        if (i == 0) {
            i = m5801new().mo5784break(requireContext2);
        }
        Dialog dialog = new Dialog(requireContext, i);
        Context context = dialog.getContext();
        this.f10968do = m5797case(context);
        this.f10960do = new C0716as(context, null, com.joeykrim.rootcheck.R.attr.materialCalendarStyle, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, O2.f2505package, com.joeykrim.rootcheck.R.attr.materialCalendarStyle, com.joeykrim.rootcheck.R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = obtainStyledAttributes.getColor(1, 0);
        obtainStyledAttributes.recycle();
        this.f10960do.m4766class(context);
        this.f10960do.m4778super(ColorStateList.valueOf(color));
        C0716as c0716as = this.f10960do;
        View decorView = dialog.getWindow().getDecorView();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        c0716as.m4770final(QK.Cnew.m1939this(decorView));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(this.f10968do ? com.joeykrim.rootcheck.R.layout.mtrl_picker_fullscreen : com.joeykrim.rootcheck.R.layout.mtrl_picker_dialog, viewGroup);
        Context context = inflate.getContext();
        DayViewDecorator dayViewDecorator = this.f10963do;
        if (dayViewDecorator != null) {
            dayViewDecorator.getClass();
        }
        if (this.f10968do) {
            inflate.findViewById(com.joeykrim.rootcheck.R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(m5799try(context), -2));
        } else {
            inflate.findViewById(com.joeykrim.rootcheck.R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(m5799try(context), -1));
        }
        TextView textView = (TextView) inflate.findViewById(com.joeykrim.rootcheck.R.id.mtrl_picker_header_selection_text);
        this.f10975if = textView;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        textView.setAccessibilityLiveRegion(1);
        this.f10965do = (CheckableImageButton) inflate.findViewById(com.joeykrim.rootcheck.R.id.mtrl_picker_header_toggle);
        this.f10959do = (TextView) inflate.findViewById(com.joeykrim.rootcheck.R.id.mtrl_picker_title_text);
        this.f10965do.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f10965do;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, C3645ro.m7997extends(context, com.joeykrim.rootcheck.R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], C3645ro.m7997extends(context, com.joeykrim.rootcheck.R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f10965do.setChecked(this.f10983try != 0);
        QK.m1858native(this.f10965do, null);
        m5802this(this.f10965do);
        this.f10965do.setOnClickListener(new ViewOnClickListenerC0505Sr(this, 0));
        this.f10958do = (Button) inflate.findViewById(com.joeykrim.rootcheck.R.id.confirm_button);
        if (m5801new().b()) {
            this.f10958do.setEnabled(true);
        } else {
            this.f10958do.setEnabled(false);
        }
        this.f10958do.setTag("CONFIRM_BUTTON_TAG");
        CharSequence charSequence = this.f10976if;
        if (charSequence != null) {
            this.f10958do.setText(charSequence);
        } else {
            int i = this.f10955case;
            if (i != 0) {
                this.f10958do.setText(i);
            }
        }
        CharSequence charSequence2 = this.f10972for;
        if (charSequence2 != null) {
            this.f10958do.setContentDescription(charSequence2);
        } else if (this.f10969else != 0) {
            this.f10958do.setContentDescription(getContext().getResources().getText(this.f10969else));
        }
        this.f10958do.setOnClickListener(new Cdo());
        Button button = (Button) inflate.findViewById(com.joeykrim.rootcheck.R.id.cancel_button);
        button.setTag("CANCEL_BUTTON_TAG");
        CharSequence charSequence3 = this.f10980new;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i2 = this.f10974goto;
            if (i2 != 0) {
                button.setText(i2);
            }
        }
        CharSequence charSequence4 = this.f10984try;
        if (charSequence4 != null) {
            button.setContentDescription(charSequence4);
        } else if (this.f10982this != 0) {
            button.setContentDescription(getContext().getResources().getText(this.f10982this));
        }
        button.setOnClickListener(new Cif());
        return inflate;
    }

    @Override // androidx.fragment.app.Ccatch, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f10981new.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.Ccatch, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f10971for);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f10962do);
        CalendarConstraints.Cif cif = new CalendarConstraints.Cif(this.f10961do);
        com.google.android.material.datepicker.Cfor<S> cfor = this.f10964do;
        Month month = cfor == null ? null : cfor.f10994do;
        if (month != null) {
            cif.f10911do = Long.valueOf(month.f10923do);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", cif.f10910do);
        Month m5794super = Month.m5794super(cif.f10909do);
        Month m5794super2 = Month.m5794super(cif.f10912if);
        CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l = cif.f10911do;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new CalendarConstraints(m5794super, m5794super2, dateValidator, l != null ? Month.m5794super(l.longValue()) : null, cif.f10908do));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f10963do);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f10979new);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f10966do);
        bundle.putInt("INPUT_MODE_KEY", this.f10983try);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f10955case);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f10976if);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f10969else);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f10972for);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f10974goto);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f10980new);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f10982this);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f10984try);
    }

    @Override // androidx.fragment.app.Ccatch, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f10968do) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f10960do);
            if (!this.f10978if) {
                View findViewById = requireView().findViewById(com.joeykrim.rootcheck.R.id.fullscreen_header);
                ColorStateList m2176new = C0492Se.m2176new(findViewById.getBackground());
                Integer valueOf = m2176new != null ? Integer.valueOf(m2176new.getDefaultColor()) : null;
                int i = Build.VERSION.SDK_INT;
                boolean z = false;
                boolean z2 = valueOf == null || valueOf.intValue() == 0;
                int m1584else = O2.m1584else(window.getContext(), R.attr.colorBackground, -16777216);
                if (z2) {
                    valueOf = Integer.valueOf(m1584else);
                }
                Integer valueOf2 = Integer.valueOf(m1584else);
                C2865hM.m6792do(window, false);
                int m707case = i < 23 ? G8.m707case(O2.m1584else(window.getContext(), R.attr.statusBarColor, -16777216), 128) : 0;
                int m707case2 = i < 27 ? G8.m707case(O2.m1584else(window.getContext(), R.attr.navigationBarColor, -16777216), 128) : 0;
                window.setStatusBarColor(m707case);
                window.setNavigationBarColor(m707case2);
                int intValue = valueOf.intValue();
                boolean z3 = (m707case != 0 && (G8.m709for(m707case) > 0.5d ? 1 : (G8.m709for(m707case) == 0.5d ? 0 : -1)) > 0) || (m707case == 0 && (intValue != 0 && (G8.m709for(intValue) > 0.5d ? 1 : (G8.m709for(intValue) == 0.5d ? 0 : -1)) > 0));
                GE ge = new GE(window.getDecorView());
                int i2 = Build.VERSION.SDK_INT;
                (i2 >= 30 ? new C3209kM.Cnew(window, ge) : i2 >= 26 ? new C3209kM.Cfor(window, ge) : i2 >= 23 ? new C3209kM.Cif(window, ge) : new C3209kM.Cdo(window, ge)).mo7242if(z3);
                int intValue2 = valueOf2.intValue();
                boolean z4 = intValue2 != 0 && G8.m709for(intValue2) > 0.5d;
                if ((m707case2 != 0 && G8.m709for(m707case2) > 0.5d) || (m707case2 == 0 && z4)) {
                    z = true;
                }
                GE ge2 = new GE(window.getDecorView());
                int i3 = Build.VERSION.SDK_INT;
                (i3 >= 30 ? new C3209kM.Cnew(window, ge2) : i3 >= 26 ? new C3209kM.Cfor(window, ge2) : i3 >= 23 ? new C3209kM.Cif(window, ge2) : new C3209kM.Cdo(window, ge2)).mo7241do(z);
                C0527Tr c0527Tr = new C0527Tr(findViewById.getLayoutParams().height, findViewById, findViewById.getPaddingTop());
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                QK.Cnew.m1935return(findViewById, c0527Tr);
                this.f10978if = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(com.joeykrim.rootcheck.R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f10960do, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new ViewOnTouchListenerC0611Xn(requireDialog(), rect));
        }
        m5800goto();
    }

    @Override // androidx.fragment.app.Ccatch, androidx.fragment.app.Fragment
    public final void onStop() {
        this.f10957do.f2450do.clear();
        super.onStop();
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5802this(CheckableImageButton checkableImageButton) {
        this.f10965do.setContentDescription(this.f10983try == 1 ? checkableImageButton.getContext().getString(com.joeykrim.rootcheck.R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(com.joeykrim.rootcheck.R.string.mtrl_picker_toggle_to_text_input_mode));
    }
}

package com.google.android.material.datepicker;

import android.text.Editable;
import com.google.android.material.textfield.TextInputLayout;
import com.joeykrim.rootcheck.R;
import defpackage.RunnableC0578Wc;
import defpackage.RunnableC2786g2;
import defpackage.ZG;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* renamed from: com.google.android.material.datepicker.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo extends ZG {

    /* renamed from: break, reason: not valid java name */
    public final String f10947break;

    /* renamed from: catch, reason: not valid java name */
    public final String f10948catch;

    /* renamed from: do, reason: not valid java name */
    public RunnableC0578Wc f10949do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CalendarConstraints f10950do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextInputLayout f10951do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RunnableC2786g2 f10952do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DateFormat f10953do;

    /* renamed from: for, reason: not valid java name */
    public int f10954for = 0;

    public Cdo(String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f10947break = str;
        this.f10953do = simpleDateFormat;
        this.f10951do = textInputLayout;
        this.f10950do = calendarConstraints;
        this.f10948catch = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.f10952do = new RunnableC2786g2(3, this, str);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) || editable.length() == 0) {
            return;
        }
        int length = editable.length();
        String str = this.f10947break;
        if (length >= str.length() || editable.length() < this.f10954for) {
            return;
        }
        char charAt = str.charAt(editable.length());
        if (Character.isLetterOrDigit(charAt)) {
            return;
        }
        editable.append(charAt);
    }

    @Override // defpackage.ZG, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f10954for = charSequence.length();
    }

    /* renamed from: do */
    public abstract void mo1229do();

    /* renamed from: if */
    public abstract void mo1230if(Long l);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006f A[Catch: ParseException -> 0x0086, TryCatch #0 {ParseException -> 0x0086, blocks: (B:6:0x0028, B:8:0x0041, B:10:0x0056, B:14:0x006f, B:18:0x007b), top: B:5:0x0028 }] */
    /* JADX WARN: Type inference failed for: r8v3, types: [Wc, java.lang.Runnable] */
    @Override // defpackage.ZG, android.text.TextWatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onTextChanged(java.lang.CharSequence r8, int r9, int r10, int r11) {
        /*
            r7 = this;
            com.google.android.material.datepicker.CalendarConstraints r9 = r7.f10950do
            com.google.android.material.textfield.TextInputLayout r10 = r7.f10951do
            g2 r11 = r7.f10952do
            r10.removeCallbacks(r11)
            Wc r0 = r7.f10949do
            r10.removeCallbacks(r0)
            r0 = 0
            r10.m5981final(r0)
            r7.mo1230if(r0)
            boolean r1 = android.text.TextUtils.isEmpty(r8)
            if (r1 != 0) goto L89
            int r1 = r8.length()
            java.lang.String r2 = r7.f10947break
            int r2 = r2.length()
            if (r1 >= r2) goto L28
            goto L89
        L28:
            java.text.DateFormat r1 = r7.f10953do     // Catch: java.text.ParseException -> L86
            java.lang.String r8 = r8.toString()     // Catch: java.text.ParseException -> L86
            java.util.Date r8 = r1.parse(r8)     // Catch: java.text.ParseException -> L86
            r10.m5981final(r0)     // Catch: java.text.ParseException -> L86
            long r0 = r8.getTime()     // Catch: java.text.ParseException -> L86
            com.google.android.material.datepicker.CalendarConstraints$DateValidator r2 = r9.f10899do     // Catch: java.text.ParseException -> L86
            boolean r2 = r2.mo5782this(r0)     // Catch: java.text.ParseException -> L86
            if (r2 == 0) goto L7b
            com.google.android.material.datepicker.Month r2 = r9.f10900do     // Catch: java.text.ParseException -> L86
            java.util.Calendar r2 = r2.f10924do     // Catch: java.text.ParseException -> L86
            java.util.Calendar r2 = defpackage.NJ.m1520new(r2)     // Catch: java.text.ParseException -> L86
            r3 = 5
            r4 = 1
            r2.set(r3, r4)     // Catch: java.text.ParseException -> L86
            long r5 = r2.getTimeInMillis()     // Catch: java.text.ParseException -> L86
            int r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r2 > 0) goto L6c
            com.google.android.material.datepicker.Month r9 = r9.f10903if     // Catch: java.text.ParseException -> L86
            int r2 = r9.f10922case     // Catch: java.text.ParseException -> L86
            java.util.Calendar r9 = r9.f10924do     // Catch: java.text.ParseException -> L86
            java.util.Calendar r9 = defpackage.NJ.m1520new(r9)     // Catch: java.text.ParseException -> L86
            r9.set(r3, r2)     // Catch: java.text.ParseException -> L86
            long r2 = r9.getTimeInMillis()     // Catch: java.text.ParseException -> L86
            int r9 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r9 > 0) goto L6c
            goto L6d
        L6c:
            r4 = 0
        L6d:
            if (r4 == 0) goto L7b
            long r8 = r8.getTime()     // Catch: java.text.ParseException -> L86
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch: java.text.ParseException -> L86
            r7.mo1230if(r8)     // Catch: java.text.ParseException -> L86
            return
        L7b:
            Wc r8 = new Wc     // Catch: java.text.ParseException -> L86
            r8.<init>()     // Catch: java.text.ParseException -> L86
            r7.f10949do = r8     // Catch: java.text.ParseException -> L86
            r10.post(r8)     // Catch: java.text.ParseException -> L86
            goto L89
        L86:
            r10.post(r11)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.Cdo.onTextChanged(java.lang.CharSequence, int, int, int):void");
    }
}

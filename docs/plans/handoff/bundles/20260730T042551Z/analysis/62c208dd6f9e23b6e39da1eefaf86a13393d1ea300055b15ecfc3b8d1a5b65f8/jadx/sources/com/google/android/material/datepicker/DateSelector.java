package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import defpackage.C2716es;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public interface DateSelector<S> extends Parcelable {
    ArrayList a();

    boolean b();

    /* renamed from: break, reason: not valid java name */
    int mo5784break(Context context);

    /* renamed from: case, reason: not valid java name */
    String mo5785case(Context context);

    /* renamed from: const, reason: not valid java name */
    String mo5786const(Context context);

    /* renamed from: continue, reason: not valid java name */
    void mo5787continue(long j);

    /* renamed from: goto, reason: not valid java name */
    S mo5788goto();

    /* renamed from: return, reason: not valid java name */
    ArrayList mo5789return();

    /* renamed from: volatile, reason: not valid java name */
    View mo5790volatile(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, C2716es.Cdo cdo);
}

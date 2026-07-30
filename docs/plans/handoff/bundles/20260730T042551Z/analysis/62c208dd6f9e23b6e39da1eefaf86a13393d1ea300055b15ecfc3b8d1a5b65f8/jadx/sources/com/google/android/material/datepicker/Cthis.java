package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.Cfor;
import defpackage.AbstractC0597Wv;
import defpackage.Nw;
import java.util.Iterator;

/* renamed from: com.google.android.material.datepicker.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis implements AdapterView.OnItemClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ MaterialCalendarGridView f11018do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cbreak f11019do;

    public Cthis(Cbreak cbreak, MaterialCalendarGridView materialCalendarGridView) {
        this.f11019do = cbreak;
        this.f11018do = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        MaterialCalendarGridView materialCalendarGridView = this.f11018do;
        Cgoto adapter = materialCalendarGridView.getAdapter();
        if (i >= adapter.m5806if() && i <= (adapter.m5806if() + adapter.f11010do.f10922case) + (-1)) {
            Cfor.Cnew cnew = this.f11019do.f10937do;
            long longValue = materialCalendarGridView.getAdapter().getItem(i).longValue();
            Cfor cfor = Cfor.this;
            if (cfor.f10991do.f10899do.mo5782this(longValue)) {
                cfor.f10992do.mo5787continue(longValue);
                Iterator it = ((Nw) cfor).f2450do.iterator();
                while (it.hasNext()) {
                    ((AbstractC0597Wv) it.next()).mo2779if(cfor.f10992do.mo5788goto());
                }
                cfor.f10999if.f7323do.m4462case();
                RecyclerView recyclerView = cfor.f10990do;
                if (recyclerView != null) {
                    recyclerView.f7323do.m4462case();
                }
            }
        }
    }
}

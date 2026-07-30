package com.google.android.material.datepicker;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.C3712sw;
import defpackage.NJ;
import java.util.Calendar;

/* renamed from: com.google.android.material.datepicker.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew extends RecyclerView.Ccatch {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cfor f11015do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Calendar f11016do = NJ.m1521this(null);

    /* renamed from: if, reason: not valid java name */
    public final Calendar f11017if = NJ.m1521this(null);

    public Cnew(Cfor cfor) {
        this.f11015do = cfor;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ccatch
    /* renamed from: try */
    public final void mo4377try(Canvas canvas, RecyclerView recyclerView) {
        Object obj;
        RecyclerView.Ctry ctry = recyclerView.f7323do;
        if (ctry instanceof Cclass) {
            RecyclerView.Cclass cclass = recyclerView.f7312do;
            if (cclass instanceof GridLayoutManager) {
                Cclass cclass2 = (Cclass) ctry;
                GridLayoutManager gridLayoutManager = (GridLayoutManager) cclass;
                Cfor cfor = this.f11015do;
                for (C3712sw c3712sw : cfor.f10992do.mo5789return()) {
                    Object obj2 = c3712sw.f15568do;
                    if (obj2 != null && (obj = c3712sw.f15569if) != null) {
                        long longValue = ((Long) obj2).longValue();
                        Calendar calendar = this.f11016do;
                        calendar.setTimeInMillis(longValue);
                        long longValue2 = ((Long) obj).longValue();
                        Calendar calendar2 = this.f11017if;
                        calendar2.setTimeInMillis(longValue2);
                        int i = calendar.get(1) - cclass2.f10945do.f10991do.f10900do.f10926new;
                        int i2 = calendar2.get(1) - cclass2.f10945do.f10991do.f10900do.f10926new;
                        View mo4321import = gridLayoutManager.mo4321import(i);
                        View mo4321import2 = gridLayoutManager.mo4321import(i2);
                        int i3 = gridLayoutManager.f7235break;
                        int i4 = i / i3;
                        int i5 = i2 / i3;
                        int i6 = i4;
                        while (i6 <= i5) {
                            if (gridLayoutManager.mo4321import(gridLayoutManager.f7235break * i6) != null) {
                                canvas.drawRect((i6 != i4 || mo4321import == null) ? 0 : (mo4321import.getWidth() / 2) + mo4321import.getLeft(), r11.getTop() + cfor.f10995do.f16206new.f16014do.top, (i6 != i5 || mo4321import2 == null) ? recyclerView.getWidth() : (mo4321import2.getWidth() / 2) + mo4321import2.getLeft(), r11.getBottom() - cfor.f10995do.f16206new.f16014do.bottom, cfor.f10995do.f16201do);
                            }
                            i6++;
                        }
                    }
                }
            }
        }
    }
}

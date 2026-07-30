package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.ListPopupWindow;

/* renamed from: uq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3824uq implements AdapterView.OnItemSelectedListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ListPopupWindow f15955do;

    public C3824uq(ListPopupWindow listPopupWindow) {
        this.f15955do = listPopupWindow;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C0822cf c0822cf;
        if (i == -1 || (c0822cf = this.f15955do.f5795do) == null) {
            return;
        }
        c0822cf.f8578do = false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}

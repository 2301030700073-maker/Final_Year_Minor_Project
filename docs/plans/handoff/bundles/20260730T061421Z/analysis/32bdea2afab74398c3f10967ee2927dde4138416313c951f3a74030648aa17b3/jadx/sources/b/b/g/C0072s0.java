package b.b.g;

import android.view.View;
import android.widget.AdapterView;

/* renamed from: b.b.g.s0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0072s0 implements AdapterView.OnItemSelectedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0084y0 f581a;

    public C0072s0(C0084y0 c0084y0) {
        this.f581a = c0084y0;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        C0061m0 c0061m0;
        if (i == -1 || (c0061m0 = this.f581a.f601c) == null) {
            return;
        }
        c0061m0.i = false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView adapterView) {
    }
}

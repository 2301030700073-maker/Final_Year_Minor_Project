package b.b.c;

import android.view.View;
import android.widget.AdapterView;

/* renamed from: b.b.c.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0008g implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0013l f296a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0010i f297b;

    public C0008g(C0010i c0010i, C0013l c0013l) {
        this.f297b = c0010i;
        this.f296a = c0013l;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.f297b.s.onClick(this.f296a.f307b, i);
        if (this.f297b.y) {
            return;
        }
        this.f296a.f307b.dismiss();
    }
}

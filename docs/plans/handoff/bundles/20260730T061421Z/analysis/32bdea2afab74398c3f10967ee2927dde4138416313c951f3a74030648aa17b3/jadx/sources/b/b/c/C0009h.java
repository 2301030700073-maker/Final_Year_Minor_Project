package b.b.c;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: b.b.c.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0009h implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f298a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0013l f299b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0010i f300c;

    public C0009h(C0010i c0010i, AlertController$RecycleListView alertController$RecycleListView, C0013l c0013l) {
        this.f300c = c0010i;
        this.f298a = alertController$RecycleListView;
        this.f299b = c0013l;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        boolean[] zArr = this.f300c.w;
        if (zArr != null) {
            zArr[i] = this.f298a.isItemChecked(i);
        }
        this.f300c.A.onClick(this.f299b.f307b, i, this.f298a.isItemChecked(i));
    }
}

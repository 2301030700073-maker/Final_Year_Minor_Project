package b.b.c;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;

/* renamed from: b.b.c.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0007f extends ArrayAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertController$RecycleListView f294a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0010i f295b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0007f(C0010i c0010i, Context context, int i, int i2, CharSequence[] charSequenceArr, AlertController$RecycleListView alertController$RecycleListView) {
        super(context, i, i2, charSequenceArr);
        this.f295b = c0010i;
        this.f294a = alertController$RecycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        boolean[] zArr = this.f295b.w;
        if (zArr != null && zArr[i]) {
            this.f294a.setItemChecked(i, true);
        }
        return view2;
    }
}

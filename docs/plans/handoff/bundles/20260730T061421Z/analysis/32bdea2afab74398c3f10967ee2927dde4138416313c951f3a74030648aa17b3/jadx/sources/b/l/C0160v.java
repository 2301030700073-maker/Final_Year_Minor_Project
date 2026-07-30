package b.l;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.preference.PreferenceFragment;
import androidx.recyclerview.widget.RecyclerView;
import b.m.b.AbstractC0168b0;
import b.m.b.t0;
import b.m.b.w0;

/* renamed from: b.l.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0160v extends AbstractC0168b0 {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f1070a;

    /* renamed from: b, reason: collision with root package name */
    public int f1071b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1072c = true;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ PreferenceFragment f1073d;

    public C0160v(PreferenceFragment preferenceFragment) {
        this.f1073d = preferenceFragment;
    }

    public final boolean a(View view, RecyclerView recyclerView) {
        w0 childViewHolder = recyclerView.getChildViewHolder(view);
        boolean z = false;
        if (!((childViewHolder instanceof V) && ((V) childViewHolder).e)) {
            return false;
        }
        boolean z2 = this.f1072c;
        int indexOfChild = recyclerView.indexOfChild(view);
        if (indexOfChild >= recyclerView.getChildCount() - 1) {
            return z2;
        }
        w0 childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(indexOfChild + 1));
        if ((childViewHolder2 instanceof V) && ((V) childViewHolder2).f1048d) {
            z = true;
        }
        return z;
    }

    @Override // b.m.b.AbstractC0168b0
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, t0 t0Var) {
        if (a(view, recyclerView)) {
            rect.bottom = this.f1071b;
        }
    }

    @Override // b.m.b.AbstractC0168b0
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, t0 t0Var) {
        if (this.f1070a == null) {
            return;
        }
        int childCount = recyclerView.getChildCount();
        int width = recyclerView.getWidth();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (a(childAt, recyclerView)) {
                int height = childAt.getHeight() + ((int) childAt.getY());
                this.f1070a.setBounds(0, height, width, this.f1071b + height);
                this.f1070a.draw(canvas);
            }
        }
    }
}

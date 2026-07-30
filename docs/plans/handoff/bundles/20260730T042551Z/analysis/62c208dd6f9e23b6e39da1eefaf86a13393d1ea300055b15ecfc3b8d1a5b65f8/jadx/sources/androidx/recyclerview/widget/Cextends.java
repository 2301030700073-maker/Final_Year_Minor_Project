package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.recyclerview.widget.Ccatch;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.extends, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cextends extends RecyclerView.Cthis {

    /* renamed from: do, reason: not valid java name */
    public final boolean f7626do = true;

    /* renamed from: for, reason: not valid java name */
    public final boolean m4515for(RecyclerView.Cdefault cdefault, RecyclerView.Cdefault cdefault2, RecyclerView.Cthis.Cfor cfor, RecyclerView.Cthis.Cfor cfor2) {
        int i;
        int i2;
        int i3 = cfor.f7459do;
        int i4 = cfor.f7460if;
        if (cdefault2.m4418super()) {
            int i5 = cfor.f7459do;
            i2 = cfor.f7460if;
            i = i5;
        } else {
            i = cfor2.f7459do;
            i2 = cfor2.f7460if;
        }
        Ccatch ccatch = (Ccatch) this;
        if (cdefault == cdefault2) {
            return ccatch.mo4489new(cdefault, i3, i4, i, i2);
        }
        View view = cdefault.f7398do;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        ccatch.m4486class(cdefault);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        ccatch.m4486class(cdefault2);
        float f = -((int) ((i - i3) - translationX));
        View view2 = cdefault2.f7398do;
        view2.setTranslationX(f);
        view2.setTranslationY(-((int) ((i2 - i4) - translationY)));
        view2.setAlpha(0.0f);
        ccatch.f7550try.add(new Ccatch.Cdo(cdefault, cdefault2, i3, i4, i, i2));
        return true;
    }

    @SuppressLint({"UnknownNullness"})
    /* renamed from: new */
    public abstract boolean mo4489new(RecyclerView.Cdefault cdefault, int i, int i2, int i3, int i4);
}

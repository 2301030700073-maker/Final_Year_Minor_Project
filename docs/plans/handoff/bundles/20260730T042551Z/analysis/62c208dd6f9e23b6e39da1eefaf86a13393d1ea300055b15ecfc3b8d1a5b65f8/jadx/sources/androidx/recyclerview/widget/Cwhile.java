package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.while, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cwhile extends Cnative {
    public Cwhile(RecyclerView.Cclass cclass) {
        super(cclass);
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: break */
    public final int mo4539break() {
        return ((Cnative) this).f7657do.f7379for;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: case */
    public final int mo4540case() {
        return ((Cnative) this).f7657do.f7384new;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: catch */
    public final int mo4541catch() {
        return ((Cnative) this).f7657do.m4391interface();
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: class */
    public final int mo4542class() {
        RecyclerView.Cclass cclass = ((Cnative) this).f7657do;
        return (cclass.f7384new - cclass.m4391interface()) - cclass.m4393protected();
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: const */
    public final int mo4543const(View view) {
        RecyclerView.Cclass cclass = ((Cnative) this).f7657do;
        Rect rect = ((Cnative) this).f7656do;
        cclass.c(view, rect);
        return rect.right;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: else */
    public final int mo4544else() {
        RecyclerView.Cclass cclass = ((Cnative) this).f7657do;
        return cclass.f7384new - cclass.m4393protected();
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: final */
    public final int mo4545final(View view) {
        RecyclerView.Cclass cclass = ((Cnative) this).f7657do;
        Rect rect = ((Cnative) this).f7656do;
        cclass.c(view, rect);
        return rect.left;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: for */
    public final int mo4546for(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        ((Cnative) this).f7657do.getClass();
        return RecyclerView.Cclass.m4383private(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: goto */
    public final int mo4547goto() {
        return ((Cnative) this).f7657do.m4393protected();
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: if */
    public final int mo4548if(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        ((Cnative) this).f7657do.getClass();
        return RecyclerView.Cclass.m4386synchronized(view) + view.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: new */
    public final int mo4549new(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        ((Cnative) this).f7657do.getClass();
        return RecyclerView.Cclass.m4382package(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: super */
    public final void mo4550super(int i) {
        ((Cnative) this).f7657do.g(i);
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: this */
    public final int mo4551this() {
        return ((Cnative) this).f7657do.f7381if;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: try */
    public final int mo4552try(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        ((Cnative) this).f7657do.getClass();
        return (view.getLeft() - RecyclerView.Cclass.m4385strictfp(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
    }
}

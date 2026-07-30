package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.import, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cimport extends Cnative {
    public Cimport(RecyclerView.Cclass cclass) {
        super(cclass);
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: break, reason: not valid java name */
    public final int mo4539break() {
        return ((Cnative) this).f7657do.f7381if;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: case, reason: not valid java name */
    public final int mo4540case() {
        return ((Cnative) this).f7657do.f7386try;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: catch, reason: not valid java name */
    public final int mo4541catch() {
        return ((Cnative) this).f7657do.m4396transient();
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: class, reason: not valid java name */
    public final int mo4542class() {
        RecyclerView.Cclass cclass = ((Cnative) this).f7657do;
        return (cclass.f7386try - cclass.m4396transient()) - cclass.m4397volatile();
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: const, reason: not valid java name */
    public final int mo4543const(View view) {
        RecyclerView.Cclass cclass = ((Cnative) this).f7657do;
        Rect rect = ((Cnative) this).f7656do;
        cclass.c(view, rect);
        return rect.bottom;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: else, reason: not valid java name */
    public final int mo4544else() {
        RecyclerView.Cclass cclass = ((Cnative) this).f7657do;
        return cclass.f7386try - cclass.m4397volatile();
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: final, reason: not valid java name */
    public final int mo4545final(View view) {
        RecyclerView.Cclass cclass = ((Cnative) this).f7657do;
        Rect rect = ((Cnative) this).f7656do;
        cclass.c(view, rect);
        return rect.top;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: for, reason: not valid java name */
    public final int mo4546for(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        ((Cnative) this).f7657do.getClass();
        return RecyclerView.Cclass.m4382package(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: goto, reason: not valid java name */
    public final int mo4547goto() {
        return ((Cnative) this).f7657do.m4397volatile();
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: if, reason: not valid java name */
    public final int mo4548if(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        ((Cnative) this).f7657do.getClass();
        return RecyclerView.Cclass.m4384static(view) + view.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: new, reason: not valid java name */
    public final int mo4549new(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        ((Cnative) this).f7657do.getClass();
        return RecyclerView.Cclass.m4383private(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: super, reason: not valid java name */
    public final void mo4550super(int i) {
        ((Cnative) this).f7657do.h(i);
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: this, reason: not valid java name */
    public final int mo4551this() {
        return ((Cnative) this).f7657do.f7379for;
    }

    @Override // androidx.recyclerview.widget.Cnative
    /* renamed from: try, reason: not valid java name */
    public final int mo4552try(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        ((Cnative) this).f7657do.getClass();
        return (view.getTop() - RecyclerView.Cclass.b(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
    }
}

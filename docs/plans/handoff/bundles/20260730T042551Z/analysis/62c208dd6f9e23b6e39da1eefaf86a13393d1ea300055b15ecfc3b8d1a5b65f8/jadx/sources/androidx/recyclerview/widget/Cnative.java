package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.recyclerview.widget.native, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cnative {

    /* renamed from: do, reason: not valid java name */
    public int f7655do = Integer.MIN_VALUE;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f7656do = new Rect();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RecyclerView.Cclass f7657do;

    public Cnative(RecyclerView.Cclass cclass) {
        this.f7657do = cclass;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cnative m4553do(RecyclerView.Cclass cclass, int i) {
        if (i == 0) {
            return new Cwhile(cclass);
        }
        if (i == 1) {
            return new Cimport(cclass);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    /* renamed from: break */
    public abstract int mo4539break();

    /* renamed from: case */
    public abstract int mo4540case();

    /* renamed from: catch */
    public abstract int mo4541catch();

    /* renamed from: class */
    public abstract int mo4542class();

    /* renamed from: const */
    public abstract int mo4543const(View view);

    /* renamed from: else */
    public abstract int mo4544else();

    /* renamed from: final */
    public abstract int mo4545final(View view);

    /* renamed from: for */
    public abstract int mo4546for(View view);

    /* renamed from: goto */
    public abstract int mo4547goto();

    /* renamed from: if */
    public abstract int mo4548if(View view);

    /* renamed from: new */
    public abstract int mo4549new(View view);

    /* renamed from: super */
    public abstract void mo4550super(int i);

    /* renamed from: this */
    public abstract int mo4551this();

    /* renamed from: try */
    public abstract int mo4552try(View view);
}

package defpackage;

import java.util.NoSuchElementException;

/* renamed from: uo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3822uo extends AbstractC3704so {

    /* renamed from: do, reason: not valid java name */
    public boolean f15951do;

    /* renamed from: for, reason: not valid java name */
    public final int f15952for;

    /* renamed from: new, reason: not valid java name */
    public final int f15953new;

    /* renamed from: try, reason: not valid java name */
    public int f15954try;

    public C3822uo(int i, int i2, int i3) {
        this.f15952for = i3;
        this.f15953new = i2;
        boolean z = true;
        if (i3 <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f15951do = z;
        this.f15954try = z ? i : i2;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.f15951do;
    }

    @Override // defpackage.AbstractC3704so
    public final int nextInt() {
        int i = this.f15954try;
        if (i != this.f15953new) {
            this.f15954try = this.f15952for + i;
        } else {
            if (!this.f15951do) {
                throw new NoSuchElementException();
            }
            this.f15951do = false;
        }
        return i;
    }
}

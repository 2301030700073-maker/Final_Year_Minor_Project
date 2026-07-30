package defpackage;

import android.graphics.drawable.Drawable;

/* renamed from: sB, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3669sB extends C0580We {

    /* renamed from: for, reason: not valid java name */
    public final int f15412for;

    /* renamed from: new, reason: not valid java name */
    public final int f15413new;

    public C3669sB(Drawable drawable, int i, int i2) {
        super(drawable);
        this.f15412for = i;
        this.f15413new = i2;
    }

    @Override // defpackage.C0580We, android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f15413new;
    }

    @Override // defpackage.C0580We, android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f15412for;
    }
}

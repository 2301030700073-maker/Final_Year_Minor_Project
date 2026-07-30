package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* renamed from: jN, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3151jN extends Drawable.ConstantState {

    /* renamed from: do, reason: not valid java name */
    public int f13707do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f13708do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f13709do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable.ConstantState f13710do;

    public C3151jN(C3151jN c3151jN) {
        this.f13708do = null;
        this.f13709do = C2866hN.f13298if;
        if (c3151jN != null) {
            this.f13707do = c3151jN.f13707do;
            this.f13710do = c3151jN.f13710do;
            this.f13708do = c3151jN.f13708do;
            this.f13709do = c3151jN.f13709do;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i = this.f13707do;
        Drawable.ConstantState constantState = this.f13710do;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new C2925iN(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new C2925iN(this, resources);
    }
}

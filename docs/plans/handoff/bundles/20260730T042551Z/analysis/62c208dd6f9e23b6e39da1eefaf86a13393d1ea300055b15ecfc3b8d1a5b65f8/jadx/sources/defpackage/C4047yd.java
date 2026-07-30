package defpackage;

import android.animation.Animator;
import defpackage.V6;

/* renamed from: yd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4047yd implements V6.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Animator f16802do;

    public C4047yd(Animator animator) {
        this.f16802do = animator;
    }

    @Override // defpackage.V6.Cdo
    public final void onCancel() {
        this.f16802do.end();
    }
}

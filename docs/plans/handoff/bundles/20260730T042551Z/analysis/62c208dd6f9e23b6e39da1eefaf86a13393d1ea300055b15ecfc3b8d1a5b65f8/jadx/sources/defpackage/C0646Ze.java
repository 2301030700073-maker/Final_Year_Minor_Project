package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* renamed from: Ze, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0646Ze extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f4890do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ DrawerLayout f4891do;

    public C0646Ze(DrawerLayout drawerLayout, View view) {
        this.f4891do = drawerLayout;
        this.f4890do = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        DrawerLayout drawerLayout = this.f4891do;
        drawerLayout.m4070if(this.f4890do, false);
        drawerLayout.f6725new = -1728053248;
        drawerLayout.invalidate();
    }
}

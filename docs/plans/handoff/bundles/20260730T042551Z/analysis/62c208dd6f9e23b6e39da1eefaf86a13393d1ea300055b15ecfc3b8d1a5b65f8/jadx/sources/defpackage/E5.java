package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.bottomappbar.BottomAppBar;

/* loaded from: classes3.dex */
public final class E5 extends AnimatorListenerAdapter {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f729do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ ActionMenuView f730do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ BottomAppBar f731do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f732do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ boolean f733if;

    public E5(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i, boolean z) {
        this.f731do = bottomAppBar;
        this.f730do = actionMenuView;
        this.f729do = i;
        this.f733if = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f732do = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f732do) {
            return;
        }
        BottomAppBar bottomAppBar = this.f731do;
        bottomAppBar.getClass();
        bottomAppBar.m5673instanceof(this.f730do, this.f729do, this.f733if);
    }
}

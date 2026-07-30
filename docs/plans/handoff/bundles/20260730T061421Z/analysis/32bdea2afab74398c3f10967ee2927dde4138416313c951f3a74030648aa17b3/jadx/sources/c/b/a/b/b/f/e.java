package c.b.a.b.b.f;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Log;

/* loaded from: classes.dex */
public class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2543a = true;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f2544b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ObjectAnimator f2545c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ f f2546d;

    public e(f fVar, boolean z, ObjectAnimator objectAnimator) {
        this.f2546d = fVar;
        this.f2544b = z;
        this.f2545c = objectAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        f fVar = this.f2546d;
        if (fVar.f2549c.f3528c) {
            if (!this.f2543a) {
                fVar.e++;
            }
            this.f2543a = !this.f2543a;
        } else {
            fVar.e++;
        }
        if (f.v) {
            StringBuilder f = c.a.c.a.a.f("mCurrentLoop=");
            f.append(this.f2546d.e);
            Log.d("DoodleView", f.toString());
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        if (this.f2544b) {
            return;
        }
        this.f2546d.e = 1;
        this.f2545c.setCurrentPlayTime(r3.f2549c.f / 2);
    }
}

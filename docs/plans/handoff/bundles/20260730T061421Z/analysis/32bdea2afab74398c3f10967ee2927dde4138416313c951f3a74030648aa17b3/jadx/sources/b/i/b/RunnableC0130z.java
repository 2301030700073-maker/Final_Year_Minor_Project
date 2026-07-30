package b.i.b;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;

/* renamed from: b.i.b.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0130z extends AnimationSet implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f970a;

    /* renamed from: b, reason: collision with root package name */
    public final View f971b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f972c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f973d;
    public boolean e;

    public RunnableC0130z(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.e = true;
        this.f970a = viewGroup;
        this.f971b = view;
        addAnimation(animation);
        this.f970a.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public boolean getTransformation(long j, Transformation transformation) {
        this.e = true;
        if (this.f972c) {
            return !this.f973d;
        }
        if (!super.getTransformation(j, transformation)) {
            this.f972c = true;
            b.e.i.j.a(this.f970a, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f972c || !this.e) {
            this.f970a.endViewTransition(this.f971b);
            this.f973d = true;
        } else {
            this.e = false;
            this.f970a.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public boolean getTransformation(long j, Transformation transformation, float f) {
        this.e = true;
        if (this.f972c) {
            return !this.f973d;
        }
        if (!super.getTransformation(j, transformation, f)) {
            this.f972c = true;
            b.e.i.j.a(this.f970a, this);
        }
        return true;
    }
}

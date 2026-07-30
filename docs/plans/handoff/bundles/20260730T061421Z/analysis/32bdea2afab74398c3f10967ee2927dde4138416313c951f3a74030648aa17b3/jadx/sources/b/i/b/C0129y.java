package b.i.b;

import android.animation.Animator;
import android.view.animation.Animation;

/* renamed from: b.i.b.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0129y {

    /* renamed from: a, reason: collision with root package name */
    public final Animation f966a;

    /* renamed from: b, reason: collision with root package name */
    public final Animator f967b;

    public C0129y(Animation animation) {
        this.f966a = animation;
        this.f967b = null;
        if (animation == null) {
            throw new IllegalStateException("Animation cannot be null");
        }
    }

    public C0129y(Animator animator) {
        this.f966a = null;
        this.f967b = animator;
    }
}

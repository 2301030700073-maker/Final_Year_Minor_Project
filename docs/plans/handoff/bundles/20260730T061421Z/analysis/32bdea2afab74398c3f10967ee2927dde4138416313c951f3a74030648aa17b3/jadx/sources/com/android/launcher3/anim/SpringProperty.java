package com.android.launcher3.anim;

/* loaded from: classes.dex */
public class SpringProperty {
    public static final SpringProperty DEFAULT = new SpringProperty(0);
    public final int flags;
    public float mDampingRatio = 0.5f;
    public float mStiffness = 1500.0f;

    public SpringProperty(int i) {
        this.flags = i;
    }
}

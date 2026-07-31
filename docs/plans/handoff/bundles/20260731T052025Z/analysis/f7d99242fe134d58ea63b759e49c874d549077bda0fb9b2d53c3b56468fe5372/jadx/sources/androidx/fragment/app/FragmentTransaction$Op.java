package androidx.fragment.app;

import androidx.lifecycle.Lifecycle;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FragmentTransaction$Op {
    public int mCmd;
    public Lifecycle.State mCurrentMaxState;
    public int mEnterAnim;
    public int mExitAnim;
    public Fragment mFragment;
    public boolean mFromExpandedOp = false;
    public Lifecycle.State mOldMaxState;
    public int mPopEnterAnim;
    public int mPopExitAnim;

    public FragmentTransaction$Op(int i, Fragment fragment) {
        this.mCmd = i;
        this.mFragment = fragment;
        Lifecycle.State state = Lifecycle.State.RESUMED;
        this.mOldMaxState = state;
        this.mCurrentMaxState = state;
    }

    public FragmentTransaction$Op(int i, Fragment fragment, int i2) {
        this.mCmd = i;
        this.mFragment = fragment;
        Lifecycle.State state = Lifecycle.State.RESUMED;
        this.mOldMaxState = state;
        this.mCurrentMaxState = state;
    }
}

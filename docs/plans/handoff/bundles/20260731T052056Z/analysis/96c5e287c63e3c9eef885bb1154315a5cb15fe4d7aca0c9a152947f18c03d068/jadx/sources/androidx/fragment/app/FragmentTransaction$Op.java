package androidx.fragment.app;

import androidx.lifecycle.Lifecycle$State;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentTransaction$Op {
    public int mCmd;
    public Lifecycle$State mCurrentMaxState;
    public int mEnterAnim;
    public int mExitAnim;
    public Fragment mFragment;
    public boolean mFromExpandedOp = false;
    public Lifecycle$State mOldMaxState;
    public int mPopEnterAnim;
    public int mPopExitAnim;

    public FragmentTransaction$Op(int i, Fragment fragment) {
        this.mCmd = i;
        this.mFragment = fragment;
        Lifecycle$State lifecycle$State = Lifecycle$State.RESUMED;
        this.mOldMaxState = lifecycle$State;
        this.mCurrentMaxState = lifecycle$State;
    }

    public FragmentTransaction$Op(int i, Fragment fragment, int i2) {
        this.mCmd = i;
        this.mFragment = fragment;
        Lifecycle$State lifecycle$State = Lifecycle$State.RESUMED;
        this.mOldMaxState = lifecycle$State;
        this.mCurrentMaxState = lifecycle$State;
    }
}

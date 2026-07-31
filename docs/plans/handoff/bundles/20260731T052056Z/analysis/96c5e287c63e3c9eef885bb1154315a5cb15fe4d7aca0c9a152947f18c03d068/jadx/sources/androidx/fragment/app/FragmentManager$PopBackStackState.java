package androidx.fragment.app;

import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentManager$PopBackStackState implements FragmentManager$OpGenerator {
    public final int mFlags;
    public final int mId;
    public final /* synthetic */ FragmentManagerImpl this$0;

    public FragmentManager$PopBackStackState(FragmentManagerImpl fragmentManagerImpl, int i, int i2) {
        this.this$0 = fragmentManagerImpl;
        this.mId = i;
        this.mFlags = i2;
    }

    @Override // androidx.fragment.app.FragmentManager$OpGenerator
    public final boolean generateOps(ArrayList arrayList, ArrayList arrayList2) {
        FragmentManagerImpl fragmentManagerImpl = this.this$0;
        Fragment fragment = fragmentManagerImpl.mPrimaryNav;
        int i = this.mId;
        if (fragment == null || i >= 0 || !fragment.getChildFragmentManager().popBackStackImmediate(-1, 0)) {
            return fragmentManagerImpl.popBackStackState(arrayList, arrayList2, i, this.mFlags);
        }
        return false;
    }
}

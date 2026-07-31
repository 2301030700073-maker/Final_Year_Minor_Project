package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.strictmode.FragmentReuseViolation;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BackStackRecord implements FragmentManager.OpGenerator {
    public boolean mAddToBackStack;
    public boolean mAllowAddToBackStack;
    public int mBreadCrumbShortTitleRes;
    public CharSequence mBreadCrumbShortTitleText;
    public int mBreadCrumbTitleRes;
    public CharSequence mBreadCrumbTitleText;
    public ArrayList mCommitRunnables;
    public boolean mCommitted;
    public int mEnterAnim;
    public int mExitAnim;
    public int mIndex;
    public final FragmentManager mManager;
    public String mName;
    public final ArrayList mOps;
    public int mPopEnterAnim;
    public int mPopExitAnim;
    public boolean mReorderingAllowed;
    public ArrayList mSharedElementSourceNames;
    public ArrayList mSharedElementTargetNames;
    public int mTransition;

    public BackStackRecord(FragmentManager fragmentManager) {
        fragmentManager.getFragmentFactory();
        FragmentHostCallback fragmentHostCallback = fragmentManager.mHost;
        if (fragmentHostCallback != null) {
            fragmentHostCallback.context.getClassLoader();
        }
        this.mOps = new ArrayList();
        this.mAllowAddToBackStack = true;
        this.mReorderingAllowed = false;
        this.mIndex = -1;
        this.mManager = fragmentManager;
    }

    public final void addOp(FragmentTransaction$Op fragmentTransaction$Op) {
        this.mOps.add(fragmentTransaction$Op);
        fragmentTransaction$Op.mEnterAnim = this.mEnterAnim;
        fragmentTransaction$Op.mExitAnim = this.mExitAnim;
        fragmentTransaction$Op.mPopEnterAnim = this.mPopEnterAnim;
        fragmentTransaction$Op.mPopExitAnim = this.mPopExitAnim;
    }

    public final void addToBackStack(String str) {
        if (!this.mAllowAddToBackStack) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This FragmentTransaction is not allowed to be added to the back stack.");
        } else {
            this.mAddToBackStack = true;
            this.mName = str;
        }
    }

    public final void bumpBackStackNesting(int i) {
        if (this.mAddToBackStack) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            ArrayList arrayList = this.mOps;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                FragmentTransaction$Op fragmentTransaction$Op = (FragmentTransaction$Op) arrayList.get(i2);
                Fragment fragment = fragmentTransaction$Op.mFragment;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + fragmentTransaction$Op.mFragment + " to " + fragmentTransaction$Op.mFragment.mBackStackNesting);
                    }
                }
            }
        }
    }

    public final void collapseOps() {
        ArrayList arrayList = this.mOps;
        int size = arrayList.size() - 1;
        while (size >= 0) {
            FragmentTransaction$Op fragmentTransaction$Op = (FragmentTransaction$Op) arrayList.get(size);
            if (fragmentTransaction$Op.mFromExpandedOp) {
                if (fragmentTransaction$Op.mCmd == 8) {
                    fragmentTransaction$Op.mFromExpandedOp = false;
                    arrayList.remove(size - 1);
                    size--;
                } else {
                    int i = fragmentTransaction$Op.mFragment.mContainerId;
                    fragmentTransaction$Op.mCmd = 2;
                    fragmentTransaction$Op.mFromExpandedOp = false;
                    for (int i2 = size - 1; i2 >= 0; i2--) {
                        FragmentTransaction$Op fragmentTransaction$Op2 = (FragmentTransaction$Op) arrayList.get(i2);
                        if (fragmentTransaction$Op2.mFromExpandedOp && fragmentTransaction$Op2.mFragment.mContainerId == i) {
                            arrayList.remove(i2);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    public final void commit() {
        commitInternal(false, true);
    }

    public final int commitInternal(boolean z, boolean z2) {
        if (this.mCommitted) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("commit already called");
            return 0;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new LogWriter());
            dump("  ", printWriter, true);
            printWriter.close();
        }
        this.mCommitted = true;
        boolean z3 = this.mAddToBackStack;
        FragmentManager fragmentManager = this.mManager;
        if (z3) {
            this.mIndex = fragmentManager.mBackStackIndex.getAndIncrement();
        } else {
            this.mIndex = -1;
        }
        if (z2) {
            fragmentManager.enqueueAction(this, z);
        }
        return this.mIndex;
    }

    public final void doAddOp(int i, Fragment fragment, String str, int i2) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            FragmentStrictMode.Policy policy = FragmentStrictMode.defaultPolicy;
            FragmentStrictMode.logIfDebuggingEnabled(new FragmentReuseViolation(fragment, str2));
            FragmentStrictMode.getNearestPolicy(fragment).getClass();
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = fragment.mTag;
            if (str3 != null && !str.equals(str3)) {
                StringBuilder sb = new StringBuilder("Can't change tag of fragment ");
                sb.append(fragment);
                String str4 = fragment.mTag;
                sb.append(": was ");
                sb.append(str4);
                sb.append(" now ");
                sb.append(str);
                throw new IllegalStateException(sb.toString());
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.mFragmentId;
            if (i3 != 0 && i3 != i) {
                StringBuilder sb2 = new StringBuilder("Can't change container ID of fragment ");
                sb2.append(fragment);
                int i4 = fragment.mFragmentId;
                sb2.append(": was ");
                sb2.append(i4);
                sb2.append(" now ");
                sb2.append(i);
                throw new IllegalStateException(sb2.toString());
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        addOp(new FragmentTransaction$Op(fragment, i2));
        fragment.mFragmentManager = this.mManager;
    }

    public final void dump(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        ArrayList arrayList = this.mOps;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction$Op fragmentTransaction$Op = (FragmentTransaction$Op) arrayList.get(i);
            switch (fragmentTransaction$Op.mCmd) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + fragmentTransaction$Op.mCmd;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(fragmentTransaction$Op.mFragment);
            if (z) {
                if (fragmentTransaction$Op.mEnterAnim != 0 || fragmentTransaction$Op.mExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(fragmentTransaction$Op.mEnterAnim));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(fragmentTransaction$Op.mExitAnim));
                }
                if (fragmentTransaction$Op.mPopEnterAnim != 0 || fragmentTransaction$Op.mPopExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(fragmentTransaction$Op.mPopEnterAnim));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(fragmentTransaction$Op.mPopExitAnim));
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    public final boolean generateOps(ArrayList arrayList, ArrayList arrayList2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.mAddToBackStack) {
            return true;
        }
        this.mManager.mBackStack.add(this);
        return true;
    }

    public final void remove(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.mManager) {
            addOp(new FragmentTransaction$Op(fragment, 3));
            return;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public final void replace(int i, Fragment fragment, String str) {
        if (i != 0) {
            doAddOp(i, fragment, str, 2);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Must use non-zero containerViewId");
        }
    }

    public final void runOnCommitInternal(boolean z, Runnable runnable) {
        if (!z) {
            if (this.mAddToBackStack) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This transaction is already being added to the back stack");
                return;
            }
            this.mAllowAddToBackStack = false;
        }
        if (this.mCommitRunnables == null) {
            this.mCommitRunnables = new ArrayList();
        }
        this.mCommitRunnables.add(runnable);
    }

    public final void setMaxLifecycle(Fragment fragment, Lifecycle.State state) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        FragmentManager fragmentManager2 = this.mManager;
        if (fragmentManager != fragmentManager2) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(fragmentManager2, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
            return;
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m$2(state, " after the Fragment has been created", "Cannot set maximum Lifecycle to ");
            return;
        }
        if (state == Lifecycle.State.DESTROYED) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m$2(state, ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.", "Cannot set maximum Lifecycle to ");
            return;
        }
        FragmentTransaction$Op fragmentTransaction$Op = new FragmentTransaction$Op();
        fragmentTransaction$Op.mCmd = 10;
        fragmentTransaction$Op.mFragment = fragment;
        fragmentTransaction$Op.mFromExpandedOp = false;
        fragmentTransaction$Op.mOldMaxState = fragment.mMaxState;
        fragmentTransaction$Op.mCurrentMaxState = state;
        addOp(fragmentTransaction$Op);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }
}

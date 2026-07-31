package androidx.fragment.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentDialog;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager.PopBackStackState;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.LiveData.AlwaysActiveObserver;
import androidx.lifecycle.Observer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public boolean mCreatingDialog;
    public Dialog mDialog;
    public boolean mDismissed;
    public Handler mHandler;
    public boolean mShownByMe;
    public boolean mViewDestroyed;
    public final Fragment.AnonymousClass4 mDismissRunnable = new Fragment.AnonymousClass4(this, 1);
    public final AnonymousClass2 mOnCancelListener = new AnonymousClass2();
    public final AnonymousClass3 mOnDismissListener = new AnonymousClass3();
    public int mStyle = 0;
    public int mTheme = 0;
    public boolean mCancelable = true;
    public boolean mShowsDialog = true;
    public int mBackStackId = -1;
    public final AnonymousClass4 mObserver = new Observer() { // from class: androidx.fragment.app.DialogFragment.4
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            if (((LifecycleOwner) obj) != null) {
                DialogFragment dialogFragment = DialogFragment.this;
                if (dialogFragment.mShowsDialog) {
                    View requireView = dialogFragment.requireView();
                    if (requireView.getParent() != null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("DialogFragment can not be attached to a container view");
                        return;
                    }
                    if (dialogFragment.mDialog != null) {
                        if (FragmentManager.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + dialogFragment.mDialog);
                        }
                        dialogFragment.mDialog.setContentView(requireView);
                    }
                }
            }
        }
    };
    public boolean mDialogCreated = false;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.fragment.app.DialogFragment$3, reason: invalid class name */
    public final class AnonymousClass3 implements DialogInterface.OnDismissListener {
        public AnonymousClass3() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            DialogFragment dialogFragment = DialogFragment.this;
            Dialog dialog = dialogFragment.mDialog;
            if (dialog != null) {
                dialogFragment.onDismiss(dialog);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final FragmentContainer createFragmentContainer() {
        final FragmentContainer createFragmentContainer = super.createFragmentContainer();
        return new FragmentContainer() { // from class: androidx.fragment.app.DialogFragment.5
            @Override // androidx.fragment.app.FragmentContainer
            public final View onFindViewById(int i) {
                FragmentContainer fragmentContainer = createFragmentContainer;
                if (fragmentContainer.onHasView()) {
                    return fragmentContainer.onFindViewById(i);
                }
                Dialog dialog = DialogFragment.this.mDialog;
                if (dialog != null) {
                    return dialog.findViewById(i);
                }
                return null;
            }

            @Override // androidx.fragment.app.FragmentContainer
            public final boolean onHasView() {
                return createFragmentContainer.onHasView() || DialogFragment.this.mDialogCreated;
            }
        };
    }

    public final void dismissInternal(boolean z, boolean z2) {
        if (this.mDismissed) {
            return;
        }
        this.mDismissed = true;
        this.mShownByMe = false;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.mHandler.getLooper()) {
                    onDismiss(this.mDialog);
                } else {
                    this.mHandler.post(this.mDismissRunnable);
                }
            }
        }
        this.mViewDestroyed = true;
        if (this.mBackStackId >= 0) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            int i = this.mBackStackId;
            parentFragmentManager.getClass();
            if (i < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "Bad id: "));
                return;
            } else {
                parentFragmentManager.enqueueAction(parentFragmentManager.new PopBackStackState(null, i, 1), z);
                this.mBackStackId = -1;
                return;
            }
        }
        FragmentManager parentFragmentManager2 = getParentFragmentManager();
        parentFragmentManager2.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(parentFragmentManager2);
        backStackRecord.mReorderingAllowed = true;
        backStackRecord.remove(this);
        if (z) {
            backStackRecord.commitInternal(true, true);
        } else {
            backStackRecord.commit();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        LiveData viewLifecycleOwnerLiveData = getViewLifecycleOwnerLiveData();
        viewLifecycleOwnerLiveData.getClass();
        LiveData.assertMainThread("observeForever");
        AnonymousClass4 anonymousClass4 = this.mObserver;
        LiveData.AlwaysActiveObserver alwaysActiveObserver = viewLifecycleOwnerLiveData.new AlwaysActiveObserver(anonymousClass4);
        LiveData.ObserverWrapper observerWrapper = (LiveData.ObserverWrapper) viewLifecycleOwnerLiveData.mObservers.putIfAbsent(anonymousClass4, alwaysActiveObserver);
        if (observerWrapper instanceof LiveData.LifecycleBoundObserver) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Cannot add the same observer with different lifecycles");
            return;
        }
        if (observerWrapper == null) {
            alwaysActiveObserver.activeStateChanged(true);
        }
        if (this.mShownByMe) {
            return;
        }
        this.mDismissed = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mHandler = new Handler();
        this.mShowsDialog = this.mContainerId == 0;
        if (bundle != null) {
            this.mStyle = bundle.getInt("android:style", 0);
            this.mTheme = bundle.getInt("android:theme", 0);
            this.mCancelable = bundle.getBoolean("android:cancelable", true);
            this.mShowsDialog = bundle.getBoolean("android:showsDialog", this.mShowsDialog);
            this.mBackStackId = bundle.getInt("android:backStackId", -1);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new ComponentDialog(requireContext(), this.mTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = true;
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
            if (!this.mDismissed) {
                onDismiss(this.mDialog);
            }
            this.mDialog = null;
            this.mDialogCreated = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        if (!this.mShownByMe && !this.mDismissed) {
            this.mDismissed = true;
        }
        getViewLifecycleOwnerLiveData().removeObserver(this.mObserver);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.mViewDestroyed) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        dismissInternal(true, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0046 A[Catch: all -> 0x004e, TryCatch #0 {all -> 0x004e, blocks: (B:10:0x001a, B:12:0x0026, B:18:0x003e, B:20:0x0046, B:21:0x0050, B:23:0x0030, B:25:0x0036, B:26:0x003b, B:27:0x0068), top: B:9:0x001a }] */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.LayoutInflater onGetLayoutInflater(android.os.Bundle r8) {
        /*
            r7 = this;
            android.view.LayoutInflater r0 = super.onGetLayoutInflater(r8)
            boolean r1 = r7.mShowsDialog
            java.lang.String r2 = "FragmentManager"
            r3 = 2
            if (r1 == 0) goto L9a
            boolean r4 = r7.mCreatingDialog
            if (r4 == 0) goto L11
            goto L9a
        L11:
            if (r1 != 0) goto L14
            goto L71
        L14:
            boolean r1 = r7.mDialogCreated
            if (r1 != 0) goto L71
            r1 = 0
            r4 = 1
            r7.mCreatingDialog = r4     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r8 = r7.onCreateDialog(r8)     // Catch: java.lang.Throwable -> L4e
            r7.mDialog = r8     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r7.mShowsDialog     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L68
            int r5 = r7.mStyle     // Catch: java.lang.Throwable -> L4e
            if (r5 == r4) goto L3b
            if (r5 == r3) goto L3b
            r6 = 3
            if (r5 == r6) goto L30
            goto L3e
        L30:
            android.view.Window r5 = r8.getWindow()     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L3b
            r6 = 24
            r5.addFlags(r6)     // Catch: java.lang.Throwable -> L4e
        L3b:
            r8.requestWindowFeature(r4)     // Catch: java.lang.Throwable -> L4e
        L3e:
            android.content.Context r8 = r7.getContext()     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r8 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L50
            android.app.Dialog r5 = r7.mDialog     // Catch: java.lang.Throwable -> L4e
            android.app.Activity r8 = (android.app.Activity) r8     // Catch: java.lang.Throwable -> L4e
            r5.setOwnerActivity(r8)     // Catch: java.lang.Throwable -> L4e
            goto L50
        L4e:
            r8 = move-exception
            goto L6e
        L50:
            android.app.Dialog r8 = r7.mDialog     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r7.mCancelable     // Catch: java.lang.Throwable -> L4e
            r8.setCancelable(r5)     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r8 = r7.mDialog     // Catch: java.lang.Throwable -> L4e
            androidx.fragment.app.DialogFragment$2 r5 = r7.mOnCancelListener     // Catch: java.lang.Throwable -> L4e
            r8.setOnCancelListener(r5)     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r8 = r7.mDialog     // Catch: java.lang.Throwable -> L4e
            androidx.fragment.app.DialogFragment$3 r5 = r7.mOnDismissListener     // Catch: java.lang.Throwable -> L4e
            r8.setOnDismissListener(r5)     // Catch: java.lang.Throwable -> L4e
            r7.mDialogCreated = r4     // Catch: java.lang.Throwable -> L4e
            goto L6b
        L68:
            r8 = 0
            r7.mDialog = r8     // Catch: java.lang.Throwable -> L4e
        L6b:
            r7.mCreatingDialog = r1
            goto L71
        L6e:
            r7.mCreatingDialog = r1
            throw r8
        L71:
            boolean r8 = androidx.fragment.app.FragmentManager.isLoggingEnabled(r3)
            if (r8 == 0) goto L8d
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r1 = "get layout inflater for DialogFragment "
            r8.<init>(r1)
            r8.append(r7)
            java.lang.String r1 = " from dialog context"
            r8.append(r1)
            java.lang.String r8 = r8.toString()
            android.util.Log.d(r2, r8)
        L8d:
            android.app.Dialog r7 = r7.mDialog
            if (r7 == 0) goto Lc5
            android.content.Context r7 = r7.getContext()
            android.view.LayoutInflater r7 = r0.cloneInContext(r7)
            return r7
        L9a:
            boolean r8 = androidx.fragment.app.FragmentManager.isLoggingEnabled(r3)
            if (r8 == 0) goto Lc5
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r1 = "getting layout inflater for DialogFragment "
            r8.<init>(r1)
            r8.append(r7)
            java.lang.String r8 = r8.toString()
            boolean r7 = r7.mShowsDialog
            if (r7 != 0) goto Lbc
            java.lang.String r7 = "mShowsDialog = false: "
            java.lang.String r7 = r7.concat(r8)
            android.util.Log.d(r2, r7)
            return r0
        Lbc:
            java.lang.String r7 = "mCreatingDialog = true: "
            java.lang.String r7 = r7.concat(r8)
            android.util.Log.d(r2, r7)
        Lc5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DialogFragment.onGetLayoutInflater(android.os.Bundle):android.view.LayoutInflater");
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.mStyle;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.mTheme;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.mCancelable;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.mShowsDialog;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.mBackStackId;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = false;
            dialog.show();
            View decorView = this.mDialog.getWindow().getDecorView();
            decorView.getClass();
            decorView.setTag(R.id.view_tree_lifecycle_owner, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    public final void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null || this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    public final void setStyle(int i) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.d("FragmentManager", "Setting style and theme for DialogFragment " + this + " to 1, " + i);
        }
        this.mStyle = 1;
        if (i != 0) {
            this.mTheme = i;
        }
    }

    public final void show(FragmentManager fragmentManager, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        fragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        backStackRecord.mReorderingAllowed = true;
        backStackRecord.doAddOp(0, this, str, 1);
        backStackRecord.commit();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.fragment.app.DialogFragment$2, reason: invalid class name */
    public final class AnonymousClass2 implements DialogInterface.OnCancelListener {
        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }
}

package androidx.fragment.app;

import android.app.Activity;
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
import android.view.Window;
import androidx.activity.ComponentDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.fragment.app.Fragment;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData$1;
import androidx.lifecycle.LiveData$AlwaysActiveObserver;
import androidx.lifecycle.LiveData$LifecycleBoundObserver;
import androidx.lifecycle.LiveData$ObserverWrapper;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.work.Operation$State;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public boolean mCreatingDialog;
    public Dialog mDialog;
    public boolean mDismissed;
    public Handler mHandler;
    public boolean mShownByMe;
    public boolean mViewDestroyed;
    public final LiveData$1 mDismissRunnable = new LiveData$1(9, this);
    public final AnonymousClass2 mOnCancelListener = new DialogInterface.OnCancelListener() { // from class: androidx.fragment.app.DialogFragment.2
        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            DialogFragment dialogFragment = DialogFragment.this;
            Dialog dialog = dialogFragment.mDialog;
            if (dialog != null) {
                dialogFragment.onCancel(dialog);
            }
        }
    };
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
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("DialogFragment can not be attached to a container view");
                        return;
                    }
                    if (dialogFragment.mDialog != null) {
                        if (FragmentManagerImpl.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + dialogFragment.mDialog);
                        }
                        dialogFragment.mDialog.setContentView(requireView);
                    }
                }
            }
        }
    };
    public boolean mDialogCreated = false;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final Operation$State createFragmentContainer() {
        final Fragment.AnonymousClass5 anonymousClass5 = new Fragment.AnonymousClass5(this);
        return new Operation$State(this) { // from class: androidx.fragment.app.DialogFragment.5
            public final /* synthetic */ DialogFragment this$0;

            {
                super(13);
                this.this$0 = this;
            }

            @Override // androidx.work.Operation$State
            public final View onFindViewById(int i) {
                Fragment.AnonymousClass5 anonymousClass52 = anonymousClass5;
                if (anonymousClass52.onHasView()) {
                    return anonymousClass52.onFindViewById(i);
                }
                Dialog dialog = this.this$0.mDialog;
                if (dialog != null) {
                    return dialog.findViewById(i);
                }
                return null;
            }

            @Override // androidx.work.Operation$State
            public final boolean onHasView() {
                return anonymousClass5.onHasView() || this.this$0.mDialogCreated;
            }
        };
    }

    public void dismiss() {
        dismissInternal(false, false);
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
            FragmentManagerImpl parentFragmentManager = getParentFragmentManager();
            int i = this.mBackStackId;
            if (i < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Bad id: "));
                return;
            } else {
                parentFragmentManager.enqueueAction(new FragmentManager$PopBackStackState(parentFragmentManager, i, 1), z);
                this.mBackStackId = -1;
                return;
            }
        }
        BackStackRecord backStackRecord = new BackStackRecord(getParentFragmentManager());
        backStackRecord.mReorderingAllowed = true;
        backStackRecord.remove(this);
        if (z) {
            backStackRecord.commitInternal(true, true);
        } else {
            backStackRecord.commit();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated() {
        this.mCalled = true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(AppCompatActivity appCompatActivity) {
        super.onAttach(appCompatActivity);
        MutableLiveData mutableLiveData = this.mViewLifecycleOwnerLiveData;
        mutableLiveData.getClass();
        MutableLiveData.assertMainThread("observeForever");
        AnonymousClass4 anonymousClass4 = this.mObserver;
        LiveData$AlwaysActiveObserver liveData$AlwaysActiveObserver = new LiveData$AlwaysActiveObserver(mutableLiveData, anonymousClass4);
        LiveData$ObserverWrapper liveData$ObserverWrapper = (LiveData$ObserverWrapper) mutableLiveData.mObservers.putIfAbsent(anonymousClass4, liveData$AlwaysActiveObserver);
        if (liveData$ObserverWrapper instanceof LiveData$LifecycleBoundObserver) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot add the same observer with different lifecycles");
            return;
        }
        if (liveData$ObserverWrapper == null) {
            liveData$AlwaysActiveObserver.activeStateChanged(true);
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
        if (FragmentManagerImpl.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new ComponentDialog(requireContext(), this.mTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.mCalled = true;
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
        this.mCalled = true;
        if (!this.mShownByMe && !this.mDismissed) {
            this.mDismissed = true;
        }
        this.mViewLifecycleOwnerLiveData.removeObserver(this.mObserver);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.mViewDestroyed) {
            return;
        }
        if (FragmentManagerImpl.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        dismissInternal(true, true);
    }

    @Override // androidx.fragment.app.Fragment
    public final LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        boolean z = this.mShowsDialog;
        if (z && !this.mCreatingDialog) {
            if (z && !this.mDialogCreated) {
                try {
                    this.mCreatingDialog = true;
                    Dialog onCreateDialog = onCreateDialog(bundle);
                    this.mDialog = onCreateDialog;
                    if (this.mShowsDialog) {
                        setupDialog(onCreateDialog, this.mStyle);
                        Context context = getContext();
                        if (Animation.CC.m23m((Object) context)) {
                            this.mDialog.setOwnerActivity((Activity) context);
                        }
                        this.mDialog.setCancelable(this.mCancelable);
                        this.mDialog.setOnCancelListener(this.mOnCancelListener);
                        this.mDialog.setOnDismissListener(this.mOnDismissListener);
                        this.mDialogCreated = true;
                    } else {
                        this.mDialog = null;
                    }
                    this.mCreatingDialog = false;
                } catch (Throwable th) {
                    this.mCreatingDialog = false;
                    throw th;
                }
            }
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
            }
            Dialog dialog = this.mDialog;
            if (dialog != null) {
                return onGetLayoutInflater.cloneInContext(dialog.getContext());
            }
        } else if (FragmentManagerImpl.isLoggingEnabled(2)) {
            String str = "getting layout inflater for DialogFragment " + this;
            if (!this.mShowsDialog) {
                Log.d("FragmentManager", "mShowsDialog = false: ".concat(str));
                return onGetLayoutInflater;
            }
            Log.d("FragmentManager", "mCreatingDialog = true: ".concat(str));
        }
        return onGetLayoutInflater;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
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
    public void onStart() {
        this.mCalled = true;
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
    public void onStop() {
        this.mCalled = true;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        this.mCalled = true;
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

    public final Dialog requireDialog() {
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            return dialog;
        }
        TimeSource$Companion$$ExternalSyntheticLambda0.m$1(this, " does not have a Dialog.", "DialogFragment ");
        return null;
    }

    public void setupDialog(Dialog dialog, int i) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            }
            Window window = dialog.getWindow();
            if (window != null) {
                window.addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    public final void show(FragmentManagerImpl fragmentManagerImpl, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        fragmentManagerImpl.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
        backStackRecord.mReorderingAllowed = true;
        backStackRecord.doAddOp(0, this, str, 1);
        backStackRecord.commit();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }
}

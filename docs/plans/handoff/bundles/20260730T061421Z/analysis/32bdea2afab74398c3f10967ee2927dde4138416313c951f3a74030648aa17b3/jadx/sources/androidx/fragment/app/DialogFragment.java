package androidx.fragment.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.LiveData$LifecycleBoundObserver;
import b.i.b.A;
import b.i.b.C0096a;
import b.i.b.C0108g;
import b.i.b.C0110h;
import b.i.b.C0113i0;
import b.i.b.DialogInterfaceOnCancelListenerC0104e;
import b.i.b.DialogInterfaceOnDismissListenerC0106f;
import b.i.b.RunnableC0102d;
import b.i.b.V;
import b.i.b.X;
import b.i.b.r;
import b.j.o;
import b.j.p;
import b.j.q;
import b.j.t;
import c.a.c.a.a;
import java.util.Objects;

/* loaded from: classes.dex */
public class DialogFragment extends r implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public int mBackStackId;
    public boolean mCancelable;
    public boolean mCreatingDialog;
    public Dialog mDialog;
    public boolean mDialogCreated;
    public Runnable mDismissRunnable;
    public boolean mDismissed;
    public Handler mHandler;
    public t mObserver;
    public DialogInterface.OnCancelListener mOnCancelListener;
    public DialogInterface.OnDismissListener mOnDismissListener;
    public boolean mShownByMe;
    public boolean mShowsDialog;
    public int mStyle;
    public int mTheme;
    public boolean mViewDestroyed;

    public DialogFragment() {
        this.mDismissRunnable = new RunnableC0102d(this);
        this.mOnCancelListener = new DialogInterfaceOnCancelListenerC0104e(this);
        this.mOnDismissListener = new DialogInterfaceOnDismissListenerC0106f(this);
        this.mStyle = 0;
        this.mTheme = 0;
        this.mCancelable = true;
        this.mShowsDialog = true;
        this.mBackStackId = -1;
        this.mObserver = new C0108g(this);
        this.mDialogCreated = false;
    }

    @Override // b.i.b.r
    public A createFragmentContainer() {
        return new C0110h(this, super.createFragmentContainer());
    }

    @Override // b.i.b.r
    public void onAttach(Context context) {
        super.onAttach(context);
        q viewLifecycleOwnerLiveData = getViewLifecycleOwnerLiveData();
        t tVar = this.mObserver;
        Objects.requireNonNull(viewLifecycleOwnerLiveData);
        q.a("observeForever");
        o oVar = new o(viewLifecycleOwnerLiveData, tVar);
        p pVar = (p) viewLifecycleOwnerLiveData.f1006b.j(tVar, oVar);
        if (pVar instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (pVar == null) {
            oVar.h(true);
        }
        if (this.mShownByMe) {
            return;
        }
        this.mDismissed = false;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // b.i.b.r
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
        if (X.M(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new Dialog(requireContext(), this.mTheme);
    }

    @Override // b.i.b.r
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

    @Override // b.i.b.r
    public void onDetach() {
        super.onDetach();
        if (!this.mShownByMe && !this.mDismissed) {
            this.mDismissed = true;
        }
        getViewLifecycleOwnerLiveData().f(this.mObserver);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.mViewDestroyed) {
            return;
        }
        if (X.M(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        if (this.mDismissed) {
            return;
        }
        this.mDismissed = true;
        this.mShownByMe = false;
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.mDialog.dismiss();
        }
        this.mViewDestroyed = true;
        if (this.mBackStackId >= 0) {
            X parentFragmentManager = getParentFragmentManager();
            int i = this.mBackStackId;
            Objects.requireNonNull(parentFragmentManager);
            if (i < 0) {
                throw new IllegalArgumentException(a.c("Bad id: ", i));
            }
            parentFragmentManager.A(new V(parentFragmentManager, null, i, 1), false);
            this.mBackStackId = -1;
            return;
        }
        X parentFragmentManager2 = getParentFragmentManager();
        Objects.requireNonNull(parentFragmentManager2);
        C0096a c0096a = new C0096a(parentFragmentManager2);
        X x = this.mFragmentManager;
        if (x == null || x == c0096a.r) {
            c0096a.b(new C0113i0(3, this));
            c0096a.e(true);
        } else {
            StringBuilder f = a.f("Cannot remove Fragment attached to a different FragmentManager. Fragment ");
            f.append(toString());
            f.append(" is already attached to a FragmentManager.");
            throw new IllegalStateException(f.toString());
        }
    }

    @Override // b.i.b.r
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        boolean z = this.mShowsDialog;
        if (!z || this.mCreatingDialog) {
            if (X.M(2)) {
                String str = "getting layout inflater for DialogFragment " + this;
                if (this.mShowsDialog) {
                    Log.d("FragmentManager", "mCreatingDialog = true: " + str);
                } else {
                    Log.d("FragmentManager", "mShowsDialog = false: " + str);
                }
            }
            return onGetLayoutInflater;
        }
        if (z && !this.mDialogCreated) {
            try {
                this.mCreatingDialog = true;
                Dialog onCreateDialog = onCreateDialog(bundle);
                this.mDialog = onCreateDialog;
                if (this.mShowsDialog) {
                    setupDialog(onCreateDialog, this.mStyle);
                    Context context = getContext();
                    if (context instanceof Activity) {
                        this.mDialog.setOwnerActivity((Activity) context);
                    }
                    this.mDialog.setCancelable(this.mCancelable);
                    this.mDialog.setOnCancelListener(this.mOnCancelListener);
                    this.mDialog.setOnDismissListener(this.mOnDismissListener);
                    this.mDialogCreated = true;
                } else {
                    this.mDialog = null;
                }
            } finally {
                this.mCreatingDialog = false;
            }
        }
        if (X.M(2)) {
            Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
        }
        Dialog dialog = this.mDialog;
        return dialog != null ? onGetLayoutInflater.cloneInContext(dialog.getContext()) : onGetLayoutInflater;
    }

    @Override // b.i.b.r
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            bundle.putBundle("android:savedDialogState", dialog.onSaveInstanceState());
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

    @Override // b.i.b.r
    public void onStart() {
        super.onStart();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            this.mViewDestroyed = false;
            dialog.show();
        }
    }

    @Override // b.i.b.r
    public void onStop() {
        super.onStop();
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // b.i.b.r
    public void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
    }

    @Override // b.i.b.r
    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null || this.mDialog == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.mDialog.onRestoreInstanceState(bundle2);
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

    public void show(X x, String str) {
        this.mDismissed = false;
        this.mShownByMe = true;
        Objects.requireNonNull(x);
        C0096a c0096a = new C0096a(x);
        c0096a.f(0, this, str, 1);
        c0096a.d();
    }

    public DialogFragment(int i) {
        super(i);
        this.mDismissRunnable = new RunnableC0102d(this);
        this.mOnCancelListener = new DialogInterfaceOnCancelListenerC0104e(this);
        this.mOnDismissListener = new DialogInterfaceOnDismissListenerC0106f(this);
        this.mStyle = 0;
        this.mTheme = 0;
        this.mCancelable = true;
        this.mShowsDialog = true;
        this.mBackStackId = -1;
        this.mObserver = new C0108g(this);
        this.mDialogCreated = false;
    }
}

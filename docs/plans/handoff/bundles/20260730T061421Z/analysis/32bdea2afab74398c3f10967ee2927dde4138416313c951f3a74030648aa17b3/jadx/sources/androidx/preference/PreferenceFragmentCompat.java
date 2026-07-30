package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.i.b.C0096a;
import b.i.b.L;
import b.i.b.r;
import b.l.A;
import b.l.B;
import b.l.C;
import b.l.D;
import b.l.E;
import b.l.HandlerC0164z;
import b.l.InterfaceC0141b;
import b.l.M;
import b.l.O;
import b.l.P;
import b.l.Q;
import b.l.S;
import b.l.U;
import b.l.X;
import c.a.c.a.a;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class PreferenceFragmentCompat extends r implements Q, O, P, InterfaceC0141b {
    public boolean mHavePrefs;
    public boolean mInitDone;
    public RecyclerView mList;
    public S mPreferenceManager;
    public final B mDividerDecoration = new B(this);
    public int mLayoutResId = R.layout.preference_list_fragment;
    public Handler mHandler = new HandlerC0164z(this);
    public final Runnable mRequestFocus = new A(this);

    @Override // b.l.InterfaceC0141b
    public Preference findPreference(CharSequence charSequence) {
        PreferenceScreen preferenceScreen;
        S s = this.mPreferenceManager;
        if (s == null || (preferenceScreen = s.h) == null) {
            return null;
        }
        return preferenceScreen.g(charSequence);
    }

    @Override // b.i.b.r
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        getContext().getTheme().applyStyle(i, false);
        S s = new S(getContext());
        this.mPreferenceManager = s;
        s.k = this;
        onCreatePreferences(bundle, getArguments() != null ? getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    public abstract void onCreatePreferences(Bundle bundle, String str);

    public RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        RecyclerView recyclerView;
        if (getContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R.layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
        recyclerView2.setAccessibilityDelegateCompat(new U(recyclerView2));
        return recyclerView2;
    }

    @Override // b.i.b.r
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, X.i, R.attr.preferenceFragmentCompatStyle, 0);
        this.mLayoutResId = obtainStyledAttributes.getResourceId(0, this.mLayoutResId);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(getContext());
        View inflate = cloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View findViewById = inflate.findViewById(android.R.id.list_container);
        if (!(findViewById instanceof ViewGroup)) {
            throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById;
        RecyclerView onCreateRecyclerView = onCreateRecyclerView(cloneInContext, viewGroup2);
        if (onCreateRecyclerView == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.mList = onCreateRecyclerView;
        onCreateRecyclerView.addItemDecoration(this.mDividerDecoration);
        B b2 = this.mDividerDecoration;
        Objects.requireNonNull(b2);
        if (drawable != null) {
            b2.f1020b = drawable.getIntrinsicHeight();
        } else {
            b2.f1020b = 0;
        }
        b2.f1019a = drawable;
        b2.f1022d.mList.invalidateItemDecorations();
        if (dimensionPixelSize != -1) {
            B b3 = this.mDividerDecoration;
            b3.f1020b = dimensionPixelSize;
            b3.f1022d.mList.invalidateItemDecorations();
        }
        this.mDividerDecoration.f1021c = z;
        if (this.mList.getParent() == null) {
            viewGroup2.addView(this.mList);
        }
        this.mHandler.post(this.mRequestFocus);
        return inflate;
    }

    @Override // b.i.b.r
    public void onDestroyView() {
        this.mHandler.removeCallbacks(this.mRequestFocus);
        this.mHandler.removeMessages(1);
        if (this.mHavePrefs) {
            this.mList.setAdapter(null);
            PreferenceScreen preferenceScreen = this.mPreferenceManager.h;
            if (preferenceScreen != null) {
                preferenceScreen.onDetached();
            }
        }
        this.mList = null;
        super.onDestroyView();
    }

    @Override // b.l.O
    public void onDisplayPreferenceDialog(Preference preference) {
        DialogFragment multiSelectListPreferenceDialogFragmentCompat;
        boolean a2 = getContext() instanceof C ? ((C) getContext()).a(this, preference) : false;
        if (!a2 && (getActivity() instanceof C)) {
            a2 = ((C) getActivity()).a(this, preference);
        }
        if (!a2 && getParentFragmentManager().H("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                String str = preference.mKey;
                multiSelectListPreferenceDialogFragmentCompat = new EditTextPreferenceDialogFragmentCompat();
                Bundle bundle = new Bundle(1);
                bundle.putString("key", str);
                multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle);
            } else if (preference instanceof ListPreference) {
                String str2 = preference.mKey;
                multiSelectListPreferenceDialogFragmentCompat = new ListPreferenceDialogFragmentCompat();
                Bundle bundle2 = new Bundle(1);
                bundle2.putString("key", str2);
                multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle2);
            } else {
                if (!(preference instanceof MultiSelectListPreference)) {
                    StringBuilder f = a.f("Cannot display dialog for an unknown Preference type: ");
                    f.append(preference.getClass().getSimpleName());
                    f.append(". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
                    throw new IllegalArgumentException(f.toString());
                }
                String str3 = preference.mKey;
                multiSelectListPreferenceDialogFragmentCompat = new MultiSelectListPreferenceDialogFragmentCompat();
                Bundle bundle3 = new Bundle(1);
                bundle3.putString("key", str3);
                multiSelectListPreferenceDialogFragmentCompat.setArguments(bundle3);
            }
            multiSelectListPreferenceDialogFragmentCompat.setTargetFragment(this, 0);
            multiSelectListPreferenceDialogFragmentCompat.show(getParentFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    @Override // b.l.P
    public void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        if (getContext() instanceof E) {
            ((E) getContext()).onPreferenceStartScreen(this, preferenceScreen);
        }
        if (getActivity() instanceof E) {
            ((E) getActivity()).onPreferenceStartScreen(this, preferenceScreen);
        }
    }

    @Override // b.l.Q
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference.mFragment == null) {
            return false;
        }
        boolean onPreferenceStartFragment = getContext() instanceof D ? ((D) getContext()).onPreferenceStartFragment(this, preference) : false;
        if (!onPreferenceStartFragment && (getActivity() instanceof D)) {
            onPreferenceStartFragment = ((D) getActivity()).onPreferenceStartFragment(this, preference);
        }
        if (!onPreferenceStartFragment) {
            Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
            b.i.b.X supportFragmentManager = requireActivity().getSupportFragmentManager();
            Bundle extras = preference.getExtras();
            L J = supportFragmentManager.J();
            requireActivity().getClassLoader();
            r a2 = J.a(preference.mFragment);
            a2.setArguments(extras);
            a2.setTargetFragment(this, 0);
            C0096a c0096a = new C0096a(supportFragmentManager);
            c0096a.m(((View) getView().getParent()).getId(), a2);
            if (!c0096a.h) {
                throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
            }
            c0096a.g = true;
            c0096a.i = null;
            c0096a.d();
        }
        return true;
    }

    @Override // b.i.b.r
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreen = this.mPreferenceManager.h;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.dispatchSaveInstanceState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // b.i.b.r
    public void onStart() {
        super.onStart();
        S s = this.mPreferenceManager;
        s.i = this;
        s.j = this;
    }

    @Override // b.i.b.r
    public void onStop() {
        super.onStop();
        S s = this.mPreferenceManager;
        s.i = null;
        s.j = null;
    }

    @Override // b.i.b.r
    public void onViewCreated(View view, Bundle bundle) {
        PreferenceScreen preferenceScreen;
        Bundle bundle2;
        PreferenceScreen preferenceScreen2;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen2 = this.mPreferenceManager.h) != null) {
            preferenceScreen2.dispatchRestoreInstanceState(bundle2);
        }
        if (this.mHavePrefs && (preferenceScreen = this.mPreferenceManager.h) != null) {
            this.mList.setAdapter(new M(preferenceScreen));
            preferenceScreen.onAttached();
        }
        this.mInitDone = true;
    }

    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        boolean z;
        S s = this.mPreferenceManager;
        PreferenceScreen preferenceScreen2 = s.h;
        if (preferenceScreen != preferenceScreen2) {
            if (preferenceScreen2 != null) {
                preferenceScreen2.onDetached();
            }
            s.h = preferenceScreen;
            z = true;
        } else {
            z = false;
        }
        if (!z || preferenceScreen == null) {
            return;
        }
        this.mHavePrefs = true;
        if (!this.mInitDone || this.mHandler.hasMessages(1)) {
            return;
        }
        this.mHandler.obtainMessage(1).sendToTarget();
    }
}

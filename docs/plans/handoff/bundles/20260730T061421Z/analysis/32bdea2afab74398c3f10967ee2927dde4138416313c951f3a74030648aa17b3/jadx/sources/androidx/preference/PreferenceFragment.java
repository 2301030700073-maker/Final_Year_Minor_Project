package androidx.preference;

import android.app.DialogFragment;
import android.app.Fragment;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.e.b.d;
import b.l.C0160v;
import b.l.HandlerC0158t;
import b.l.InterfaceC0141b;
import b.l.InterfaceC0161w;
import b.l.InterfaceC0162x;
import b.l.InterfaceC0163y;
import b.l.M;
import b.l.O;
import b.l.P;
import b.l.Q;
import b.l.RunnableC0159u;
import b.l.S;
import b.l.U;
import b.l.X;
import b.m.b.AbstractC0176f0;
import com.android.systemui.shared.R;
import java.util.Objects;

@Deprecated
/* loaded from: classes.dex */
public abstract class PreferenceFragment extends Fragment implements Q, O, P, InterfaceC0141b {

    /* renamed from: b, reason: collision with root package name */
    public S f159b;

    /* renamed from: c, reason: collision with root package name */
    public RecyclerView f160c;

    /* renamed from: d, reason: collision with root package name */
    public Context f161d;

    /* renamed from: a, reason: collision with root package name */
    public final C0160v f158a = new C0160v(this);
    public int e = R.layout.preference_list_fragment;
    public final Handler f = new HandlerC0158t(this);
    public final Runnable g = new RunnableC0159u(this);

    public void a() {
        PreferenceScreen d2 = d();
        if (d2 != null) {
            c().setAdapter(f(d2));
            d2.onAttached();
        }
        e();
    }

    public Fragment b() {
        return null;
    }

    @Deprecated
    public final RecyclerView c() {
        return this.f160c;
    }

    @Deprecated
    public PreferenceScreen d() {
        return this.f159b.h;
    }

    public void e() {
    }

    @Deprecated
    public b.m.b.Q f(PreferenceScreen preferenceScreen) {
        return new M(preferenceScreen);
    }

    @Override // b.l.InterfaceC0141b
    @Deprecated
    public Preference findPreference(CharSequence charSequence) {
        PreferenceScreen preferenceScreen;
        S s = this.f159b;
        if (s == null || (preferenceScreen = s.h) == null) {
            return null;
        }
        return preferenceScreen.g(charSequence);
    }

    @Deprecated
    public AbstractC0176f0 g() {
        return new LinearLayoutManager(getActivity());
    }

    @Deprecated
    public abstract void h(Bundle bundle, String str);

    @Deprecated
    public RecyclerView i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        RecyclerView recyclerView;
        if (this.f161d.getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R.layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(g());
        recyclerView2.setAccessibilityDelegateCompat(new U(recyclerView2));
        return recyclerView2;
    }

    @Deprecated
    public void j(Drawable drawable) {
        C0160v c0160v = this.f158a;
        Objects.requireNonNull(c0160v);
        if (drawable != null) {
            c0160v.f1071b = drawable.getIntrinsicHeight();
        } else {
            c0160v.f1071b = 0;
        }
        c0160v.f1070a = drawable;
        c0160v.f1073d.f160c.invalidateItemDecorations();
    }

    @Deprecated
    public void k(int i) {
        C0160v c0160v = this.f158a;
        c0160v.f1071b = i;
        c0160v.f1073d.f160c.invalidateItemDecorations();
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getActivity(), i);
        this.f161d = contextThemeWrapper;
        S s = new S(contextThemeWrapper);
        this.f159b = s;
        s.k = this;
        h(bundle, getArguments() != null ? getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context context = this.f161d;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, X.h, d.g(context, R.attr.preferenceFragmentStyle, android.R.attr.preferenceFragmentStyle), 0);
        this.e = obtainStyledAttributes.getResourceId(0, this.e);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(this.f161d);
        View inflate = cloneInContext.inflate(this.e, viewGroup, false);
        View findViewById = inflate.findViewById(android.R.id.list_container);
        if (!(findViewById instanceof ViewGroup)) {
            throw new RuntimeException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById;
        RecyclerView i = i(cloneInContext, viewGroup2);
        if (i == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.f160c = i;
        i.addItemDecoration(this.f158a);
        j(drawable);
        if (dimensionPixelSize != -1) {
            k(dimensionPixelSize);
        }
        this.f158a.f1072c = z;
        if (this.f160c.getParent() == null) {
            viewGroup2.addView(this.f160c);
        }
        this.f.post(this.g);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.f.removeCallbacks(this.g);
        this.f.removeMessages(1);
        this.f160c = null;
        super.onDestroyView();
    }

    @Override // b.l.O
    @Deprecated
    public void onDisplayPreferenceDialog(Preference preference) {
        DialogFragment multiSelectListPreferenceDialogFragment;
        boolean a2 = b() instanceof InterfaceC0161w ? ((InterfaceC0161w) b()).a(this, preference) : false;
        if (!a2 && (getActivity() instanceof InterfaceC0161w)) {
            a2 = ((InterfaceC0161w) getActivity()).a(this, preference);
        }
        if (!a2 && getFragmentManager().findFragmentByTag("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                String str = preference.mKey;
                multiSelectListPreferenceDialogFragment = new EditTextPreferenceDialogFragment();
                Bundle bundle = new Bundle(1);
                bundle.putString("key", str);
                multiSelectListPreferenceDialogFragment.setArguments(bundle);
            } else if (preference instanceof ListPreference) {
                String str2 = preference.mKey;
                multiSelectListPreferenceDialogFragment = new ListPreferenceDialogFragment();
                Bundle bundle2 = new Bundle(1);
                bundle2.putString("key", str2);
                multiSelectListPreferenceDialogFragment.setArguments(bundle2);
            } else {
                if (!(preference instanceof MultiSelectListPreference)) {
                    throw new IllegalArgumentException("Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?");
                }
                String str3 = preference.mKey;
                multiSelectListPreferenceDialogFragment = new MultiSelectListPreferenceDialogFragment();
                Bundle bundle3 = new Bundle(1);
                bundle3.putString("key", str3);
                multiSelectListPreferenceDialogFragment.setArguments(bundle3);
            }
            multiSelectListPreferenceDialogFragment.setTargetFragment(this, 0);
            multiSelectListPreferenceDialogFragment.show(getFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    @Override // b.l.P
    @Deprecated
    public void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        if ((b() instanceof InterfaceC0163y ? ((InterfaceC0163y) b()).a(this, preferenceScreen) : false) || !(getActivity() instanceof InterfaceC0163y)) {
            return;
        }
        ((InterfaceC0163y) getActivity()).a(this, preferenceScreen);
    }

    @Override // b.l.Q
    @Deprecated
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference.mFragment == null) {
            return false;
        }
        boolean a2 = b() instanceof InterfaceC0162x ? ((InterfaceC0162x) b()).a(this, preference) : false;
        return (a2 || !(getActivity() instanceof InterfaceC0162x)) ? a2 : ((InterfaceC0162x) getActivity()).a(this, preference);
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen d2 = d();
        if (d2 != null) {
            Bundle bundle2 = new Bundle();
            d2.dispatchSaveInstanceState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        S s = this.f159b;
        s.i = this;
        s.j = this;
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        S s = this.f159b;
        s.i = null;
        s.j = null;
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen d2;
        super.onViewCreated(view, bundle);
        if (bundle == null || (bundle2 = bundle.getBundle("android:preferences")) == null || (d2 = d()) == null) {
            return;
        }
        d2.dispatchRestoreInstanceState(bundle2);
    }
}

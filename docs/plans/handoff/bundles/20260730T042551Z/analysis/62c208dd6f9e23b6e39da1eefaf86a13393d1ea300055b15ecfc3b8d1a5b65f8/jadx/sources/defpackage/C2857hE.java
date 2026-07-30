package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;
import java.util.Arrays;

/* renamed from: hE, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2857hE implements AE, Wz, InterfaceC2849h6 {

    /* renamed from: do, reason: not valid java name */
    public final int f13267do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f13268do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f13269do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f13270do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String[] f13271do;

    /* renamed from: for, reason: not valid java name */
    public final int f13272for;

    /* renamed from: if, reason: not valid java name */
    public final int f13273if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final CharSequence f13274if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f13275if;

    /* renamed from: new, reason: not valid java name */
    public final int f13276new;

    /* renamed from: try, reason: not valid java name */
    public final int f13277try;

    /* renamed from: hE$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f13278do = 0;

        /* renamed from: if, reason: not valid java name */
        public int f13281if = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public CharSequence f13279do = null;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public CharSequence f13282if = null;

        /* renamed from: for, reason: not valid java name */
        public int f13280for = 0;

        /* renamed from: new, reason: not valid java name */
        public int f13283new = R.layout.fragment_simple_slide;

        /* renamed from: do, reason: not valid java name */
        public final C2857hE m6783do() {
            if (this.f13278do != 0) {
                return new C2857hE(this);
            }
            throw new IllegalArgumentException("You must set a background.");
        }
    }

    /* renamed from: hE$if, reason: invalid class name */
    public static class Cif extends C3771tw {

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ int f13284for = 0;

        @Override // androidx.fragment.app.Fragment
        public final void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setRetainInstance(true);
            m254new();
        }

        @Override // androidx.fragment.app.Fragment
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            int color;
            int color2;
            Bundle arguments = getArguments();
            View inflate = layoutInflater.inflate(arguments.getInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_LAYOUT_RES", R.layout.fragment_simple_slide), viewGroup, false);
            TextView textView = (TextView) inflate.findViewById(R.id.mi_title);
            TextView textView2 = (TextView) inflate.findViewById(R.id.mi_description);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.mi_image);
            CharSequence charSequence = arguments.getCharSequence("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_TITLE");
            int i = arguments.getInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_TITLE_RES");
            CharSequence charSequence2 = arguments.getCharSequence("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_DESCRIPTION");
            int i2 = arguments.getInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_DESCRIPTION_RES");
            int i3 = arguments.getInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_IMAGE_RES");
            int i4 = arguments.getInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_BACKGROUND_RES");
            if (textView != null) {
                if (charSequence != null) {
                    textView.setText(charSequence);
                    textView.setVisibility(0);
                } else if (i != 0) {
                    textView.setText(i);
                    textView.setVisibility(0);
                } else {
                    textView.setVisibility(8);
                }
            }
            if (textView2 != null) {
                if (charSequence2 != null) {
                    textView2.setText(charSequence2);
                    textView2.setVisibility(0);
                } else if (i2 != 0) {
                    textView2.setText(i2);
                    textView2.setVisibility(0);
                } else {
                    textView2.setVisibility(8);
                }
            }
            if (imageView != null) {
                if (i3 != 0) {
                    try {
                        imageView.setImageResource(i3);
                        imageView.setVisibility(0);
                    } catch (OutOfMemoryError unused) {
                        imageView.setVisibility(8);
                    }
                } else {
                    imageView.setVisibility(8);
                }
            }
            if (i4 == 0 || G8.m709for(C0466Ra.getColor(getContext(), i4)) >= 0.6d) {
                color = C0466Ra.getColor(getContext(), R.color.mi_text_color_primary_light);
                color2 = C0466Ra.getColor(getContext(), R.color.mi_text_color_secondary_light);
            } else {
                color = C0466Ra.getColor(getContext(), R.color.mi_text_color_primary_dark);
                color2 = C0466Ra.getColor(getContext(), R.color.mi_text_color_secondary_dark);
            }
            if (textView != null) {
                textView.setTextColor(color);
            }
            if (textView2 != null) {
                textView2.setTextColor(color2);
            }
            return inflate;
        }

        @Override // androidx.fragment.app.Fragment
        public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
            if (i == (getArguments() != null ? getArguments().getInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_PERMISSIONS_REQUEST_CODE", 34) : 34)) {
                m254new();
            }
        }

        @Override // androidx.fragment.app.Fragment
        public final void onResume() {
            super.onResume();
            m254new();
        }
    }

    public C2857hE(Cdo cdo) {
        CharSequence charSequence = cdo.f13279do;
        CharSequence charSequence2 = cdo.f13282if;
        int i = cdo.f13280for;
        int i2 = cdo.f13278do;
        int i3 = cdo.f13283new;
        int i4 = Cif.f13284for;
        Bundle bundle = new Bundle();
        bundle.putCharSequence("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_TITLE", charSequence);
        bundle.putInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_TITLE_RES", 0);
        bundle.putCharSequence("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_DESCRIPTION", charSequence2);
        bundle.putInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_DESCRIPTION_RES", 0);
        bundle.putInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_IMAGE_RES", i);
        bundle.putInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_BACKGROUND_RES", i2);
        bundle.putInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_LAYOUT_RES", i3);
        bundle.putInt("com.heinrichreimersoftware.materialintro.SimpleFragment.ARGUMENT_PERMISSIONS_REQUEST_CODE", 34);
        Cif cif = new Cif();
        cif.setArguments(bundle);
        this.f13268do = cif;
        this.f13269do = cdo.f13279do;
        this.f13274if = cdo.f13282if;
        this.f13267do = cdo.f13280for;
        this.f13273if = cdo.f13283new;
        this.f13272for = cdo.f13278do;
        this.f13276new = cdo.f13281if;
        this.f13270do = true;
        this.f13275if = true;
        this.f13271do = null;
        this.f13277try = 34;
        m6782break();
    }

    /* renamed from: break, reason: not valid java name */
    public final synchronized void m6782break() {
        if (this.f13271do != null) {
            ArrayList arrayList = new ArrayList();
            for (String str : this.f13271do) {
                if (this.f13268do.getContext() == null || C0466Ra.checkSelfPermission(this.f13268do.getContext(), str) != 0) {
                    arrayList.add(str);
                }
            }
            if (arrayList.size() > 0) {
                this.f13271do = (String[]) arrayList.toArray(new String[arrayList.size()]);
            } else {
                this.f13271do = null;
            }
        } else {
            this.f13271do = null;
        }
    }

    @Override // defpackage.AE
    /* renamed from: case */
    public final boolean mo57case() {
        return this.f13275if;
    }

    @Override // defpackage.AE
    /* renamed from: do */
    public final boolean mo58do() {
        m6782break();
        return this.f13270do && this.f13271do == null;
    }

    @Override // defpackage.Wz
    /* renamed from: else */
    public final void mo2792else(Fragment fragment) {
        if (fragment instanceof Cif) {
            this.f13268do = (Cif) fragment;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2857hE.class != obj.getClass()) {
            return false;
        }
        C2857hE c2857hE = (C2857hE) obj;
        if (this.f13267do != c2857hE.f13267do || this.f13273if != c2857hE.f13273if || this.f13272for != c2857hE.f13272for || this.f13276new != c2857hE.f13276new || this.f13270do != c2857hE.f13270do || this.f13275if != c2857hE.f13275if || this.f13277try != c2857hE.f13277try) {
            return false;
        }
        Cif cif = this.f13268do;
        if (cif == null ? c2857hE.f13268do != null : !cif.equals(c2857hE.f13268do)) {
            return false;
        }
        CharSequence charSequence = c2857hE.f13269do;
        CharSequence charSequence2 = this.f13269do;
        if (charSequence2 == null ? charSequence != null : !charSequence2.equals(charSequence)) {
            return false;
        }
        CharSequence charSequence3 = c2857hE.f13274if;
        CharSequence charSequence4 = this.f13274if;
        if (charSequence4 == null ? charSequence3 == null : charSequence4.equals(charSequence3)) {
            return Arrays.equals(this.f13271do, c2857hE.f13271do);
        }
        return false;
    }

    @Override // defpackage.InterfaceC2849h6
    /* renamed from: for */
    public final CharSequence mo6776for() {
        Context context;
        m6782break();
        if (this.f13271do == null || (context = this.f13268do.getContext()) == null) {
            return null;
        }
        return context.getResources().getQuantityText(R.plurals.mi_label_grant_permission, this.f13271do.length);
    }

    @Override // defpackage.AE
    /* renamed from: goto */
    public final int mo59goto() {
        return this.f13272for;
    }

    public final int hashCode() {
        Cif cif = this.f13268do;
        int hashCode = (cif != null ? cif.hashCode() : 0) * 31;
        CharSequence charSequence = this.f13269do;
        int hashCode2 = (((hashCode + (charSequence != null ? charSequence.hashCode() : 0)) * 31) + 0) * 31;
        CharSequence charSequence2 = this.f13274if;
        return ((((((((((((((((((((((((hashCode2 + (charSequence2 != null ? charSequence2.hashCode() : 0)) * 31) + 0) * 31) + this.f13267do) * 31) + this.f13273if) * 31) + this.f13272for) * 31) + this.f13276new) * 31) + (this.f13270do ? 1 : 0)) * 31) + (this.f13275if ? 1 : 0)) * 31) + Arrays.hashCode(this.f13271do)) * 31) + this.f13277try) * 31) + 0) * 31) + 0) * 31) + 0;
    }

    @Override // defpackage.AE
    /* renamed from: if */
    public final int mo60if() {
        return this.f13276new;
    }

    @Override // defpackage.AE
    /* renamed from: new */
    public final Cif mo61new() {
        return this.f13268do;
    }

    @Override // defpackage.InterfaceC2849h6
    /* renamed from: this */
    public final ViewOnClickListenerC2798gE mo6777this() {
        m6782break();
        if (this.f13271do == null) {
            return null;
        }
        return new ViewOnClickListenerC2798gE(this);
    }

    @Override // defpackage.InterfaceC2849h6
    /* renamed from: try */
    public final void mo6778try() {
        m6782break();
    }
}

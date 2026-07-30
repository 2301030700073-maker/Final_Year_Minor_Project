package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.Cconst;
import androidx.recyclerview.widget.Cthrows;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.NavigationMenuItemView;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.internal.ParcelableSparseArray;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: ju, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3180ju implements androidx.appcompat.view.menu.Cbreak {

    /* renamed from: break, reason: not valid java name */
    public int f13815break;

    /* renamed from: case, reason: not valid java name */
    public int f13816case;

    /* renamed from: catch, reason: not valid java name */
    public int f13817catch;

    /* renamed from: class, reason: not valid java name */
    public int f13818class;

    /* renamed from: const, reason: not valid java name */
    public int f13819const;

    /* renamed from: do, reason: not valid java name */
    public ColorStateList f13820do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f13821do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public RippleDrawable f13822do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LayoutInflater f13823do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LinearLayout f13824do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public androidx.appcompat.view.menu.Ccase f13825do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public NavigationMenuView f13826do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f13828do;

    /* renamed from: else, reason: not valid java name */
    public int f13830else;

    /* renamed from: final, reason: not valid java name */
    public int f13831final;

    /* renamed from: for, reason: not valid java name */
    public int f13832for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ColorStateList f13833for;

    /* renamed from: goto, reason: not valid java name */
    public int f13835goto;

    /* renamed from: if, reason: not valid java name */
    public ColorStateList f13836if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f13837if;

    /* renamed from: super, reason: not valid java name */
    public int f13839super;

    /* renamed from: this, reason: not valid java name */
    public int f13840this;

    /* renamed from: throw, reason: not valid java name */
    public int f13841throw;

    /* renamed from: new, reason: not valid java name */
    public int f13838new = 0;

    /* renamed from: try, reason: not valid java name */
    public int f13842try = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f13829do = true;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f13834for = true;

    /* renamed from: while, reason: not valid java name */
    public int f13843while = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f13827do = new Cdo();

    /* renamed from: ju$break, reason: invalid class name */
    public static class Cbreak extends Cclass {
        public Cbreak(LayoutInflater layoutInflater, RecyclerView recyclerView) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, (ViewGroup) recyclerView, false));
        }
    }

    /* renamed from: ju$case, reason: invalid class name */
    public static class Ccase implements Ctry {

        /* renamed from: do, reason: not valid java name */
        public final int f13844do;

        /* renamed from: if, reason: not valid java name */
        public final int f13845if;

        public Ccase(int i, int i2) {
            this.f13844do = i;
            this.f13845if = i2;
        }
    }

    /* renamed from: ju$catch, reason: invalid class name */
    public static class Ccatch extends Cclass {
        public Ccatch(LayoutInflater layoutInflater, RecyclerView recyclerView) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, (ViewGroup) recyclerView, false));
        }
    }

    /* renamed from: ju$class, reason: invalid class name */
    public static abstract class Cclass extends RecyclerView.Cdefault {
        public Cclass(View view) {
            super(view);
        }
    }

    /* renamed from: ju$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) view;
            C3180ju c3180ju = C3180ju.this;
            Cfor cfor = c3180ju.f13828do;
            boolean z = true;
            if (cfor != null) {
                cfor.f13852if = true;
            }
            androidx.appcompat.view.menu.Cgoto cgoto = navigationMenuItemView.f11187do;
            boolean m3348while = c3180ju.f13825do.m3348while(cgoto, c3180ju, 0);
            if (cgoto != null && cgoto.isCheckable() && m3348while) {
                c3180ju.f13828do.m7176super(cgoto);
            } else {
                z = false;
            }
            Cfor cfor2 = c3180ju.f13828do;
            if (cfor2 != null) {
                cfor2.f13852if = false;
            }
            if (z) {
                c3180ju.mo3321new(false);
            }
        }
    }

    /* renamed from: ju$else, reason: invalid class name */
    public static class Celse implements Ctry {

        /* renamed from: do, reason: not valid java name */
        public final androidx.appcompat.view.menu.Cgoto f13847do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f13848do;

        public Celse(androidx.appcompat.view.menu.Cgoto cgoto) {
            this.f13847do = cgoto;
        }
    }

    /* renamed from: ju$for, reason: invalid class name */
    public class Cfor extends RecyclerView.Ctry<Cclass> {

        /* renamed from: do, reason: not valid java name */
        public androidx.appcompat.view.menu.Cgoto f13849do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<Ctry> f13850do = new ArrayList<>();

        /* renamed from: if, reason: not valid java name */
        public boolean f13852if;

        public Cfor() {
            m7175final();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Ctry
        /* renamed from: class */
        public final void mo4464class(Cclass cclass) {
            Cclass cclass2 = cclass;
            if (cclass2 instanceof Cthis) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) ((RecyclerView.Cdefault) cclass2).f7398do;
                FrameLayout frameLayout = navigationMenuItemView.f11186do;
                if (frameLayout != null) {
                    frameLayout.removeAllViews();
                }
                navigationMenuItemView.f11185do.setCompoundDrawables(null, null, null, null);
            }
        }

        /* renamed from: final, reason: not valid java name */
        public final void m7175final() {
            if (this.f13852if) {
                return;
            }
            this.f13852if = true;
            ArrayList<Ctry> arrayList = this.f13850do;
            arrayList.clear();
            arrayList.add(new Cnew());
            C3180ju c3180ju = C3180ju.this;
            int size = c3180ju.f13825do.m3326class().size();
            boolean z = false;
            int i = -1;
            int i2 = 0;
            boolean z2 = false;
            int i3 = 0;
            while (i2 < size) {
                androidx.appcompat.view.menu.Cgoto cgoto = c3180ju.f13825do.m3326class().get(i2);
                if (cgoto.isChecked()) {
                    m7176super(cgoto);
                }
                if (cgoto.isCheckable()) {
                    cgoto.m3352goto(z);
                }
                if (cgoto.hasSubMenu()) {
                    Cconst cconst = cgoto.f5476do;
                    if (cconst.hasVisibleItems()) {
                        if (i2 != 0) {
                            arrayList.add(new Ccase(c3180ju.f13841throw, z ? 1 : 0));
                        }
                        arrayList.add(new Celse(cgoto));
                        int size2 = cconst.size();
                        int i4 = 0;
                        boolean z3 = false;
                        while (i4 < size2) {
                            androidx.appcompat.view.menu.Cgoto cgoto2 = (androidx.appcompat.view.menu.Cgoto) cconst.getItem(i4);
                            if (cgoto2.isVisible()) {
                                if (!z3 && cgoto2.getIcon() != null) {
                                    z3 = true;
                                }
                                if (cgoto2.isCheckable()) {
                                    cgoto2.m3352goto(z);
                                }
                                if (cgoto.isChecked()) {
                                    m7176super(cgoto);
                                }
                                arrayList.add(new Celse(cgoto2));
                            }
                            i4++;
                            z = false;
                        }
                        if (z3) {
                            int size3 = arrayList.size();
                            for (int size4 = arrayList.size(); size4 < size3; size4++) {
                                ((Celse) arrayList.get(size4)).f13848do = true;
                            }
                        }
                    }
                } else {
                    int i5 = cgoto.f5485if;
                    if (i5 != i) {
                        i3 = arrayList.size();
                        z2 = cgoto.getIcon() != null;
                        if (i2 != 0) {
                            i3++;
                            int i6 = c3180ju.f13841throw;
                            arrayList.add(new Ccase(i6, i6));
                        }
                    } else if (!z2 && cgoto.getIcon() != null) {
                        int size5 = arrayList.size();
                        for (int i7 = i3; i7 < size5; i7++) {
                            ((Celse) arrayList.get(i7)).f13848do = true;
                        }
                        z2 = true;
                        Celse celse = new Celse(cgoto);
                        celse.f13848do = z2;
                        arrayList.add(celse);
                        i = i5;
                    }
                    Celse celse2 = new Celse(cgoto);
                    celse2.f13848do = z2;
                    arrayList.add(celse2);
                    i = i5;
                }
                i2++;
                z = false;
            }
            this.f13852if = false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Ctry
        /* renamed from: for */
        public final int mo1023for() {
            return this.f13850do.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Ctry
        /* renamed from: goto */
        public final void mo1024goto(Cclass cclass, int i) {
            int mo1028try = mo1028try(i);
            ArrayList<Ctry> arrayList = this.f13850do;
            View view = ((RecyclerView.Cdefault) cclass).f7398do;
            C3180ju c3180ju = C3180ju.this;
            if (mo1028try != 0) {
                if (mo1028try != 1) {
                    if (mo1028try != 2) {
                        return;
                    }
                    Ccase ccase = (Ccase) arrayList.get(i);
                    view.setPadding(c3180ju.f13815break, ccase.f13844do, c3180ju.f13817catch, ccase.f13845if);
                    return;
                }
                TextView textView = (TextView) view;
                textView.setText(((Celse) arrayList.get(i)).f13847do.f5477do);
                XG.m2800for(textView, c3180ju.f13838new);
                textView.setPadding(c3180ju.f13818class, textView.getPaddingTop(), c3180ju.f13819const, textView.getPaddingBottom());
                ColorStateList colorStateList = c3180ju.f13820do;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                }
                QK.m1858native(textView, new C3239ku(this, i, true));
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) view;
            ColorStateList colorStateList2 = c3180ju.f13833for;
            navigationMenuItemView.f11184do = colorStateList2;
            navigationMenuItemView.f11191goto = colorStateList2 != null;
            androidx.appcompat.view.menu.Cgoto cgoto = navigationMenuItemView.f11187do;
            if (cgoto != null) {
                navigationMenuItemView.m5841catch(cgoto.getIcon());
            }
            int i2 = c3180ju.f13842try;
            CheckedTextView checkedTextView = navigationMenuItemView.f11185do;
            XG.m2800for(checkedTextView, i2);
            ColorStateList colorStateList3 = c3180ju.f13836if;
            if (colorStateList3 != null) {
                checkedTextView.setTextColor(colorStateList3);
            }
            Drawable drawable = c3180ju.f13821do;
            Drawable newDrawable = drawable != null ? drawable.getConstantState().newDrawable() : null;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            navigationMenuItemView.setBackground(newDrawable);
            RippleDrawable rippleDrawable = c3180ju.f13822do;
            if (rippleDrawable != null) {
                navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
            }
            Celse celse = (Celse) arrayList.get(i);
            navigationMenuItemView.f11192try = celse.f13848do;
            int i3 = c3180ju.f13816case;
            int i4 = c3180ju.f13830else;
            navigationMenuItemView.setPadding(i3, i4, i3, i4);
            checkedTextView.setCompoundDrawablePadding(c3180ju.f13835goto);
            if (c3180ju.f13837if) {
                navigationMenuItemView.f11183const = c3180ju.f13840this;
            }
            checkedTextView.setMaxLines(c3180ju.f13831final);
            navigationMenuItemView.f11189else = c3180ju.f13829do;
            navigationMenuItemView.mo3307if(celse.f13847do);
            QK.m1858native(navigationMenuItemView, new C3239ku(this, i, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Ctry
        /* renamed from: new */
        public final long mo1026new(int i) {
            return i;
        }

        /* renamed from: super, reason: not valid java name */
        public final void m7176super(androidx.appcompat.view.menu.Cgoto cgoto) {
            if (this.f13849do == cgoto || !cgoto.isCheckable()) {
                return;
            }
            androidx.appcompat.view.menu.Cgoto cgoto2 = this.f13849do;
            if (cgoto2 != null) {
                cgoto2.setChecked(false);
            }
            this.f13849do = cgoto;
            cgoto.setChecked(true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Ctry
        /* renamed from: this */
        public final RecyclerView.Cdefault mo1027this(RecyclerView recyclerView, int i) {
            RecyclerView.Cdefault cthis;
            C3180ju c3180ju = C3180ju.this;
            if (i == 0) {
                cthis = new Cthis(c3180ju.f13823do, recyclerView, c3180ju.f13827do);
            } else if (i == 1) {
                cthis = new Ccatch(c3180ju.f13823do, recyclerView);
            } else {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return new Cif(c3180ju.f13824do);
                }
                cthis = new Cbreak(c3180ju.f13823do, recyclerView);
            }
            return cthis;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Ctry
        /* renamed from: try */
        public final int mo1028try(int i) {
            Ctry ctry = this.f13850do.get(i);
            if (ctry instanceof Ccase) {
                return 2;
            }
            if (ctry instanceof Cnew) {
                return 3;
            }
            if (ctry instanceof Celse) {
                return ((Celse) ctry).f13847do.hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }
    }

    /* renamed from: ju$goto, reason: invalid class name */
    public class Cgoto extends Cthrows {
        public Cgoto(NavigationMenuView navigationMenuView) {
            super(navigationMenuView);
        }

        @Override // androidx.recyclerview.widget.Cthrows, defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            super.mo1356new(view, c3893w);
            Cfor cfor = C3180ju.this.f13828do;
            int i = 0;
            int i2 = 0;
            while (true) {
                C3180ju c3180ju = C3180ju.this;
                if (i >= c3180ju.f13828do.mo1023for()) {
                    c3893w.f16161do.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(i2, 1, false));
                    return;
                } else {
                    int mo1028try = c3180ju.f13828do.mo1028try(i);
                    if (mo1028try == 0 || mo1028try == 1) {
                        i2++;
                    }
                    i++;
                }
            }
        }
    }

    /* renamed from: ju$if, reason: invalid class name */
    public static class Cif extends Cclass {
        public Cif(LinearLayout linearLayout) {
            super(linearLayout);
        }
    }

    /* renamed from: ju$new, reason: invalid class name */
    public static class Cnew implements Ctry {
    }

    /* renamed from: ju$this, reason: invalid class name */
    public static class Cthis extends Cclass {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Cthis(android.view.LayoutInflater r3, androidx.recyclerview.widget.RecyclerView r4, defpackage.C3180ju.Cdo r5) {
            /*
                r2 = this;
                r0 = 2131427373(0x7f0b002d, float:1.847636E38)
                r1 = 0
                android.view.View r3 = r3.inflate(r0, r4, r1)
                r2.<init>(r3)
                r3.setOnClickListener(r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C3180ju.Cthis.<init>(android.view.LayoutInflater, androidx.recyclerview.widget.RecyclerView, ju$do):void");
        }
    }

    /* renamed from: ju$try, reason: invalid class name */
    public interface Ctry {
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: case */
    public final boolean mo3317case() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: catch */
    public final boolean mo978catch(androidx.appcompat.view.menu.Cgoto cgoto) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: class */
    public final void mo3318class(Parcelable parcelable) {
        androidx.appcompat.view.menu.Cgoto cgoto;
        View actionView;
        ParcelableSparseArray parcelableSparseArray;
        androidx.appcompat.view.menu.Cgoto cgoto2;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f13826do.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                Cfor cfor = this.f13828do;
                cfor.getClass();
                int i = bundle2.getInt("android:menu:checked", 0);
                ArrayList<Ctry> arrayList = cfor.f13850do;
                if (i != 0) {
                    cfor.f13852if = true;
                    int size = arrayList.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        Ctry ctry = arrayList.get(i2);
                        if ((ctry instanceof Celse) && (cgoto2 = ((Celse) ctry).f13847do) != null && cgoto2.f5466do == i) {
                            cfor.m7176super(cgoto2);
                            break;
                        }
                        i2++;
                    }
                    cfor.f13852if = false;
                    cfor.m7175final();
                }
                SparseArray sparseParcelableArray2 = bundle2.getSparseParcelableArray("android:menu:action_views");
                if (sparseParcelableArray2 != null) {
                    int size2 = arrayList.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        Ctry ctry2 = arrayList.get(i3);
                        if ((ctry2 instanceof Celse) && (cgoto = ((Celse) ctry2).f13847do) != null && (actionView = cgoto.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray2.get(cgoto.f5466do)) != null) {
                            actionView.restoreHierarchyState(parcelableSparseArray);
                        }
                    }
                }
            }
            SparseArray<Parcelable> sparseParcelableArray3 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray3 != null) {
                this.f13824do.restoreHierarchyState(sparseParcelableArray3);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: const */
    public final boolean mo979const(androidx.appcompat.view.menu.Cgoto cgoto) {
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7174do() {
        int i = ((this.f13824do.getChildCount() > 0) || !this.f13834for) ? 0 : this.f13839super;
        NavigationMenuView navigationMenuView = this.f13826do;
        navigationMenuView.setPadding(0, i, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: else */
    public final void mo980else(Context context, androidx.appcompat.view.menu.Ccase ccase) {
        this.f13823do = LayoutInflater.from(context);
        this.f13825do = ccase;
        this.f13841throw = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: for */
    public final void mo3319for(androidx.appcompat.view.menu.Ccase ccase, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    public final int getId() {
        return this.f13832for;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: goto */
    public final boolean mo3320goto(Cconst cconst) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: new */
    public final void mo3321new(boolean z) {
        Cfor cfor = this.f13828do;
        if (cfor != null) {
            cfor.m7175final();
            cfor.m4462case();
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: this */
    public final Parcelable mo3322this() {
        Bundle bundle = new Bundle();
        if (this.f13826do != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f13826do.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        Cfor cfor = this.f13828do;
        if (cfor != null) {
            cfor.getClass();
            Bundle bundle2 = new Bundle();
            androidx.appcompat.view.menu.Cgoto cgoto = cfor.f13849do;
            if (cgoto != null) {
                bundle2.putInt("android:menu:checked", cgoto.f5466do);
            }
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            ArrayList<Ctry> arrayList = cfor.f13850do;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                Ctry ctry = arrayList.get(i);
                if (ctry instanceof Celse) {
                    androidx.appcompat.view.menu.Cgoto cgoto2 = ((Celse) ctry).f13847do;
                    View actionView = cgoto2 != null ? cgoto2.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray2.put(cgoto2.f5466do, parcelableSparseArray);
                    }
                }
            }
            bundle2.putSparseParcelableArray("android:menu:action_views", sparseArray2);
            bundle.putBundle("android:menu:adapter", bundle2);
        }
        if (this.f13824do != null) {
            SparseArray<Parcelable> sparseArray3 = new SparseArray<>();
            this.f13824do.saveHierarchyState(sparseArray3);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray3);
        }
        return bundle;
    }
}

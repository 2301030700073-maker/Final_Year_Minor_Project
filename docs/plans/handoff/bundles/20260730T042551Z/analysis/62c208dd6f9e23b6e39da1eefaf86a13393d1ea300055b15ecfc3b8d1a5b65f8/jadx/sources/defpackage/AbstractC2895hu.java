package defpackage;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Ccatch;
import androidx.appcompat.view.menu.Cgoto;
import androidx.transition.AutoTransition;
import com.google.android.material.navigation.NavigationBarPresenter;
import defpackage.C0426Pe;
import defpackage.C3893w;
import java.util.HashSet;
import java.util.WeakHashMap;

/* renamed from: hu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC2895hu extends ViewGroup implements Ccatch {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f13371do = {R.attr.state_checked};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f13372if = {-16842910};

    /* renamed from: break, reason: not valid java name */
    public int f13373break;

    /* renamed from: case, reason: not valid java name */
    public int f13374case;

    /* renamed from: catch, reason: not valid java name */
    public int f13375catch;

    /* renamed from: class, reason: not valid java name */
    public int f13376class;

    /* renamed from: const, reason: not valid java name */
    public int f13377const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f13378do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseArray<View.OnTouchListener> f13379do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f13380do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AutoTransition f13381do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public NavigationBarPresenter f13382do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2662dx f13383do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f13384do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3554qD f13385do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f13386do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC2718eu[] f13387do;

    /* renamed from: else, reason: not valid java name */
    public int f13388else;

    /* renamed from: final, reason: not valid java name */
    public int f13389final;

    /* renamed from: for, reason: not valid java name */
    public int f13390for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final ColorStateList f13391for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f13392for;

    /* renamed from: goto, reason: not valid java name */
    public int f13393goto;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f13394if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final SparseArray<com.google.android.material.badge.Cdo> f13395if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f13396if;

    /* renamed from: new, reason: not valid java name */
    public int f13397new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public ColorStateList f13398new;

    /* renamed from: super, reason: not valid java name */
    public int f13399super;

    /* renamed from: this, reason: not valid java name */
    public int f13400this;

    /* renamed from: try, reason: not valid java name */
    public int f13401try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public ColorStateList f13402try;

    /* renamed from: hu$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Cgoto cgoto = ((AbstractC2718eu) view).f12752do;
            AbstractC2895hu abstractC2895hu = AbstractC2895hu.this;
            if (abstractC2895hu.f13380do.m3348while(cgoto, abstractC2895hu.f13382do, 0)) {
                return;
            }
            cgoto.setChecked(true);
        }
    }

    public AbstractC2895hu(Context context) {
        super(context);
        this.f13383do = new C2662dx(5);
        this.f13379do = new SparseArray<>(5);
        this.f13397new = 0;
        this.f13401try = 0;
        this.f13395if = new SparseArray<>(5);
        this.f13373break = -1;
        this.f13375catch = -1;
        this.f13376class = -1;
        this.f13392for = false;
        this.f13391for = m6841if(R.attr.textColorSecondary);
        if (isInEditMode()) {
            this.f13381do = null;
        } else {
            AutoTransition autoTransition = new AutoTransition();
            this.f13381do = autoTransition;
            autoTransition.a(0);
            autoTransition.mo4641private(C0222Ft.m649for(getContext(), com.joeykrim.rootcheck.R.attr.motionDurationMedium4, getResources().getInteger(com.joeykrim.rootcheck.R.integer.material_motion_duration_long_1)));
            autoTransition.mo4629continue(C0222Ft.m651new(getContext(), com.joeykrim.rootcheck.R.attr.motionEasingStandard, C2785g1.f13026do));
            autoTransition.m4654implements(new WG());
        }
        this.f13384do = new Cdo();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setImportantForAccessibility(1);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m6839case(int i, int i2) {
        return i != -1 ? i == 0 : i2 > 3;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: do, reason: not valid java name */
    public final void m6840do() {
        SparseArray<com.google.android.material.badge.Cdo> sparseArray;
        com.google.android.material.badge.Cdo cdo;
        Drawable drawable;
        removeAllViews();
        AbstractC2718eu[] abstractC2718euArr = this.f13387do;
        C2662dx c2662dx = this.f13383do;
        if (abstractC2718euArr != null) {
            for (AbstractC2718eu abstractC2718eu : abstractC2718euArr) {
                if (abstractC2718eu != null) {
                    c2662dx.mo4868if(abstractC2718eu);
                    if (abstractC2718eu.f12753do != null) {
                        ImageView imageView = abstractC2718eu.f12750do;
                        if (imageView != null) {
                            abstractC2718eu.setClipChildren(true);
                            abstractC2718eu.setClipToPadding(true);
                            com.google.android.material.badge.Cdo cdo2 = abstractC2718eu.f12753do;
                            if (cdo2 != null) {
                                if (cdo2.m5663for() != null) {
                                    cdo2.m5663for().setForeground(null);
                                } else {
                                    imageView.getOverlay().remove(cdo2);
                                }
                            }
                        }
                        abstractC2718eu.f12753do = null;
                    }
                    abstractC2718eu.f12752do = null;
                    abstractC2718eu.f12767new = 0.0f;
                    abstractC2718eu.f12755do = false;
                }
            }
        }
        if (this.f13380do.size() == 0) {
            this.f13397new = 0;
            this.f13401try = 0;
            this.f13387do = null;
            return;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.f13380do.size(); i++) {
            hashSet.add(Integer.valueOf(this.f13380do.getItem(i).getItemId()));
        }
        int i2 = 0;
        while (true) {
            sparseArray = this.f13395if;
            if (i2 >= sparseArray.size()) {
                break;
            }
            int keyAt = sparseArray.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                sparseArray.delete(keyAt);
            }
            i2++;
        }
        this.f13387do = new AbstractC2718eu[this.f13380do.size()];
        boolean m6839case = m6839case(this.f13390for, this.f13380do.m3326class().size());
        for (int i3 = 0; i3 < this.f13380do.size(); i3++) {
            this.f13382do.f11216do = true;
            this.f13380do.getItem(i3).setCheckable(true);
            this.f13382do.f11216do = false;
            AbstractC2718eu abstractC2718eu2 = (AbstractC2718eu) c2662dx.mo4867do();
            if (abstractC2718eu2 == null) {
                abstractC2718eu2 = mo914try(getContext());
            }
            this.f13387do[i3] = abstractC2718eu2;
            ColorStateList colorStateList = this.f13378do;
            abstractC2718eu2.f12763if = colorStateList;
            if (abstractC2718eu2.f12752do != null && (drawable = abstractC2718eu2.f12759for) != null) {
                C0426Pe.Cdo.m1787goto(drawable, colorStateList);
                abstractC2718eu2.f12759for.invalidateSelf();
            }
            int i4 = this.f13374case;
            ImageView imageView2 = abstractC2718eu2.f12750do;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView2.getLayoutParams();
            layoutParams.width = i4;
            layoutParams.height = i4;
            imageView2.setLayoutParams(layoutParams);
            abstractC2718eu2.m6608super(this.f13391for);
            int i5 = this.f13388else;
            TextView textView = abstractC2718eu2.f12751do;
            AbstractC2718eu.m6595final(textView, i5);
            float textSize = textView.getTextSize();
            TextView textView2 = abstractC2718eu2.f12765if;
            abstractC2718eu2.m6604do(textSize, textView2.getTextSize());
            abstractC2718eu2.m6603const(this.f13393goto);
            boolean z = this.f13386do;
            abstractC2718eu2.m6603const(abstractC2718eu2.f12756else);
            textView2.setTypeface(textView2.getTypeface(), z ? 1 : 0);
            abstractC2718eu2.m6608super(this.f13394if);
            int i6 = this.f13373break;
            if (i6 != -1 && abstractC2718eu2.f12758for != i6) {
                abstractC2718eu2.f12758for = i6;
                abstractC2718eu2.m6600case();
            }
            int i7 = this.f13375catch;
            if (i7 != -1 && abstractC2718eu2.f12768new != i7) {
                abstractC2718eu2.f12768new = i7;
                abstractC2718eu2.m6600case();
            }
            int i8 = this.f13376class;
            if (i8 != -1 && abstractC2718eu2.f12771try != i8) {
                abstractC2718eu2.f12771try = i8;
                abstractC2718eu2.m6600case();
            }
            abstractC2718eu2.f12761goto = this.f13377const;
            abstractC2718eu2.m6607import(abstractC2718eu2.getWidth());
            abstractC2718eu2.f12770this = this.f13389final;
            abstractC2718eu2.m6607import(abstractC2718eu2.getWidth());
            abstractC2718eu2.f12741break = this.f13399super;
            abstractC2718eu2.m6607import(abstractC2718eu2.getWidth());
            C0716as m6842new = m6842new();
            View view = abstractC2718eu2.f12747do;
            if (view != null) {
                view.setBackgroundDrawable(m6842new);
                abstractC2718eu2.m6606goto();
            }
            abstractC2718eu2.f12769new = this.f13392for;
            boolean z2 = this.f13396if;
            abstractC2718eu2.f12760for = z2;
            abstractC2718eu2.m6606goto();
            if (view != null) {
                view.setVisibility(z2 ? 0 : 8);
                abstractC2718eu2.requestLayout();
            }
            int i9 = this.f13400this;
            Drawable drawable2 = i9 == 0 ? null : C0466Ra.getDrawable(abstractC2718eu2.getContext(), i9);
            if (drawable2 != null && drawable2.getConstantState() != null) {
                drawable2 = drawable2.getConstantState().newDrawable().mutate();
            }
            abstractC2718eu2.f12746do = drawable2;
            abstractC2718eu2.m6606goto();
            abstractC2718eu2.f12745do = this.f13398new;
            abstractC2718eu2.m6606goto();
            if (abstractC2718eu2.f12766if != m6839case) {
                abstractC2718eu2.f12766if = m6839case;
                abstractC2718eu2.m6600case();
            }
            abstractC2718eu2.m6602class(this.f13390for);
            Cgoto cgoto = (Cgoto) this.f13380do.getItem(i3);
            abstractC2718eu2.mo3307if(cgoto);
            SparseArray<View.OnTouchListener> sparseArray2 = this.f13379do;
            int i10 = cgoto.f5466do;
            abstractC2718eu2.setOnTouchListener(sparseArray2.get(i10));
            abstractC2718eu2.setOnClickListener(this.f13384do);
            int i11 = this.f13397new;
            if (i11 != 0 && i10 == i11) {
                this.f13401try = i3;
            }
            int id = abstractC2718eu2.getId();
            if ((id != -1) && (cdo = sparseArray.get(id)) != null) {
                abstractC2718eu2.m6599break(cdo);
            }
            addView(abstractC2718eu2);
        }
        int min = Math.min(this.f13380do.size() - 1, this.f13401try);
        this.f13401try = min;
        this.f13380do.getItem(min).setChecked(true);
    }

    @Override // androidx.appcompat.view.menu.Ccatch
    /* renamed from: for */
    public final void mo3314for(Ccase ccase) {
        this.f13380do = ccase;
    }

    /* renamed from: if, reason: not valid java name */
    public final ColorStateList m6841if(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(R.attr.textColorSecondary, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = C0466Ra.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(com.joeykrim.rootcheck.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = f13372if;
        return new ColorStateList(new int[][]{iArr, f13371do, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    /* renamed from: new, reason: not valid java name */
    public final C0716as m6842new() {
        if (this.f13385do == null || this.f13402try == null) {
            return null;
        }
        C0716as c0716as = new C0716as(this.f13385do);
        c0716as.m4778super(this.f13402try);
        return c0716as;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3893w.Ctry.m8536do(1, this.f13380do.m3326class().size(), 1).f16179do);
    }

    /* renamed from: try */
    public abstract AbstractC2718eu mo914try(Context context);
}

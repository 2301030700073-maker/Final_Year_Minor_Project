package com.google.android.material.navigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.Ccase;
import androidx.customview.view.AbsSavedState;
import defpackage.AbstractC2718eu;
import defpackage.AbstractC2895hu;
import defpackage.C0426Pe;
import defpackage.C0466Ra;
import defpackage.C0492Se;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2775fs;
import defpackage.C2836gu;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3970xH;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import defpackage.YF;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public abstract class NavigationBarView extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    public YF f11220do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final NavigationBarPresenter f11221do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2836gu f11222do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC2895hu f11223do;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public Bundle f11224do;

        /* renamed from: com.google.android.material.navigation.NavigationBarView$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeBundle(this.f11224do);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11224do = parcel.readBundle(classLoader == null ? getClass().getClassLoader() : classLoader);
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationBarView$do, reason: invalid class name */
    public class Cdo implements Ccase.Cdo {
        public Cdo() {
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: do */
        public final void mo2229do(Ccase ccase) {
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: if */
        public final boolean mo2230if(Ccase ccase, MenuItem menuItem) {
            NavigationBarView navigationBarView = NavigationBarView.this;
            navigationBarView.getClass();
            navigationBarView.getClass();
            return false;
        }
    }

    public NavigationBarView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(C2775fs.m6683do(context, attributeSet, i, i2), attributeSet, i);
        Drawable drawable;
        Drawable drawable2;
        NavigationBarPresenter navigationBarPresenter = new NavigationBarPresenter();
        this.f11221do = navigationBarPresenter;
        Context context2 = getContext();
        C3970xH m3116try = C0682aH.m3116try(context2, attributeSet, O2.a, i, i2, 12, 10);
        C2836gu c2836gu = new C2836gu(context2, getClass(), mo5680if());
        this.f11222do = c2836gu;
        AbstractC2895hu mo5679do = mo5679do(context2);
        this.f11223do = mo5679do;
        navigationBarPresenter.f11215do = mo5679do;
        navigationBarPresenter.f11217for = 1;
        mo5679do.f13382do = navigationBarPresenter;
        c2836gu.m3335if(navigationBarPresenter, ((Ccase) c2836gu).f5403do);
        getContext();
        navigationBarPresenter.f11215do.f13380do = c2836gu;
        if (m3116try.m8630class(6)) {
            ColorStateList m8636if = m3116try.m8636if(6);
            mo5679do.f13378do = m8636if;
            AbstractC2718eu[] abstractC2718euArr = mo5679do.f13387do;
            if (abstractC2718euArr != null) {
                for (AbstractC2718eu abstractC2718eu : abstractC2718euArr) {
                    abstractC2718eu.f12763if = m8636if;
                    if (abstractC2718eu.f12752do != null && (drawable2 = abstractC2718eu.f12759for) != null) {
                        C0426Pe.Cdo.m1787goto(drawable2, m8636if);
                        abstractC2718eu.f12759for.invalidateSelf();
                    }
                }
            }
        } else {
            ColorStateList m6841if = mo5679do.m6841if(R.attr.textColorSecondary);
            mo5679do.f13378do = m6841if;
            AbstractC2718eu[] abstractC2718euArr2 = mo5679do.f13387do;
            if (abstractC2718euArr2 != null) {
                for (AbstractC2718eu abstractC2718eu2 : abstractC2718euArr2) {
                    abstractC2718eu2.f12763if = m6841if;
                    if (abstractC2718eu2.f12752do != null && (drawable = abstractC2718eu2.f12759for) != null) {
                        C0426Pe.Cdo.m1787goto(drawable, m6841if);
                        abstractC2718eu2.f12759for.invalidateSelf();
                    }
                }
            }
        }
        int m8637new = m3116try.m8637new(5, getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.mtrl_navigation_bar_item_default_icon_size));
        mo5679do.f13374case = m8637new;
        AbstractC2718eu[] abstractC2718euArr3 = mo5679do.f13387do;
        if (abstractC2718euArr3 != null) {
            for (AbstractC2718eu abstractC2718eu3 : abstractC2718euArr3) {
                ImageView imageView = abstractC2718eu3.f12750do;
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
                layoutParams.width = m8637new;
                layoutParams.height = m8637new;
                imageView.setLayoutParams(layoutParams);
            }
        }
        if (m3116try.m8630class(12)) {
            int m8638this = m3116try.m8638this(12, 0);
            AbstractC2895hu abstractC2895hu = this.f11223do;
            abstractC2895hu.f13388else = m8638this;
            AbstractC2718eu[] abstractC2718euArr4 = abstractC2895hu.f13387do;
            if (abstractC2718euArr4 != null) {
                for (AbstractC2718eu abstractC2718eu4 : abstractC2718euArr4) {
                    TextView textView = abstractC2718eu4.f12751do;
                    AbstractC2718eu.m6595final(textView, m8638this);
                    abstractC2718eu4.m6604do(textView.getTextSize(), abstractC2718eu4.f12765if.getTextSize());
                    ColorStateList colorStateList = abstractC2895hu.f13394if;
                    if (colorStateList != null) {
                        abstractC2718eu4.m6608super(colorStateList);
                    }
                }
            }
        }
        if (m3116try.m8630class(10)) {
            int m8638this2 = m3116try.m8638this(10, 0);
            AbstractC2895hu abstractC2895hu2 = this.f11223do;
            abstractC2895hu2.f13393goto = m8638this2;
            AbstractC2718eu[] abstractC2718euArr5 = abstractC2895hu2.f13387do;
            if (abstractC2718euArr5 != null) {
                for (AbstractC2718eu abstractC2718eu5 : abstractC2718euArr5) {
                    abstractC2718eu5.m6603const(m8638this2);
                    ColorStateList colorStateList2 = abstractC2895hu2.f13394if;
                    if (colorStateList2 != null) {
                        abstractC2718eu5.m6608super(colorStateList2);
                    }
                }
            }
        }
        boolean m8631do = m3116try.m8631do(11, true);
        AbstractC2895hu abstractC2895hu3 = this.f11223do;
        abstractC2895hu3.f13386do = m8631do;
        AbstractC2718eu[] abstractC2718euArr6 = abstractC2895hu3.f13387do;
        if (abstractC2718euArr6 != null) {
            for (AbstractC2718eu abstractC2718eu6 : abstractC2718euArr6) {
                abstractC2718eu6.m6603const(abstractC2718eu6.f12756else);
                TextView textView2 = abstractC2718eu6.f12765if;
                textView2.setTypeface(textView2.getTypeface(), m8631do ? 1 : 0);
            }
        }
        if (m3116try.m8630class(13)) {
            ColorStateList m8636if2 = m3116try.m8636if(13);
            AbstractC2895hu abstractC2895hu4 = this.f11223do;
            abstractC2895hu4.f13394if = m8636if2;
            AbstractC2718eu[] abstractC2718euArr7 = abstractC2895hu4.f13387do;
            if (abstractC2718euArr7 != null) {
                for (AbstractC2718eu abstractC2718eu7 : abstractC2718euArr7) {
                    abstractC2718eu7.m6608super(m8636if2);
                }
            }
        }
        Drawable background = getBackground();
        ColorStateList m2176new = C0492Se.m2176new(background);
        if (background == null || m2176new != null) {
            C0716as c0716as = new C0716as(new C3554qD(C3554qD.m7859for(context2, attributeSet, i, i2)));
            if (m2176new != null) {
                c0716as.m4778super(m2176new);
            }
            c0716as.m4766class(context2);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            setBackground(c0716as);
        }
        if (m3116try.m8630class(8)) {
            int m8637new2 = m3116try.m8637new(8, 0);
            AbstractC2895hu abstractC2895hu5 = this.f11223do;
            abstractC2895hu5.f13373break = m8637new2;
            AbstractC2718eu[] abstractC2718euArr8 = abstractC2895hu5.f13387do;
            if (abstractC2718euArr8 != null) {
                for (AbstractC2718eu abstractC2718eu8 : abstractC2718euArr8) {
                    if (abstractC2718eu8.f12758for != m8637new2) {
                        abstractC2718eu8.f12758for = m8637new2;
                        abstractC2718eu8.m6600case();
                    }
                }
            }
        }
        if (m3116try.m8630class(7)) {
            int m8637new3 = m3116try.m8637new(7, 0);
            AbstractC2895hu abstractC2895hu6 = this.f11223do;
            abstractC2895hu6.f13375catch = m8637new3;
            AbstractC2718eu[] abstractC2718euArr9 = abstractC2895hu6.f13387do;
            if (abstractC2718euArr9 != null) {
                for (AbstractC2718eu abstractC2718eu9 : abstractC2718euArr9) {
                    if (abstractC2718eu9.f12768new != m8637new3) {
                        abstractC2718eu9.f12768new = m8637new3;
                        abstractC2718eu9.m6600case();
                    }
                }
            }
        }
        if (m3116try.m8630class(0)) {
            int m8637new4 = m3116try.m8637new(0, 0);
            AbstractC2895hu abstractC2895hu7 = this.f11223do;
            abstractC2895hu7.f13376class = m8637new4;
            AbstractC2718eu[] abstractC2718euArr10 = abstractC2895hu7.f13387do;
            if (abstractC2718euArr10 != null) {
                for (AbstractC2718eu abstractC2718eu10 : abstractC2718euArr10) {
                    if (abstractC2718eu10.f12771try != m8637new4) {
                        abstractC2718eu10.f12771try = m8637new4;
                        abstractC2718eu10.m6600case();
                    }
                }
            }
        }
        if (m3116try.m8630class(2)) {
            setElevation(m3116try.m8637new(2, 0));
        }
        C0426Pe.Cdo.m1787goto(getBackground().mutate(), C0659Zr.m3069do(context2, m3116try, 1));
        int integer = m3116try.f16536do.getInteger(14, -1);
        AbstractC2895hu abstractC2895hu8 = this.f11223do;
        if (abstractC2895hu8.f13390for != integer) {
            abstractC2895hu8.f13390for = integer;
            this.f11221do.mo3321new(false);
        }
        int m8638this3 = m3116try.m8638this(4, 0);
        if (m8638this3 != 0) {
            AbstractC2895hu abstractC2895hu9 = this.f11223do;
            abstractC2895hu9.f13400this = m8638this3;
            AbstractC2718eu[] abstractC2718euArr11 = abstractC2895hu9.f13387do;
            if (abstractC2718euArr11 != null) {
                for (AbstractC2718eu abstractC2718eu11 : abstractC2718euArr11) {
                    Drawable drawable3 = m8638this3 == 0 ? null : C0466Ra.getDrawable(abstractC2718eu11.getContext(), m8638this3);
                    if (drawable3 != null) {
                        abstractC2718eu11.getClass();
                        if (drawable3.getConstantState() != null) {
                            drawable3 = drawable3.getConstantState().newDrawable().mutate();
                        }
                    }
                    abstractC2718eu11.f12746do = drawable3;
                    abstractC2718eu11.m6606goto();
                }
            }
        } else {
            ColorStateList m3069do = C0659Zr.m3069do(context2, m3116try, 9);
            AbstractC2895hu abstractC2895hu10 = this.f11223do;
            abstractC2895hu10.f13398new = m3069do;
            AbstractC2718eu[] abstractC2718euArr12 = abstractC2895hu10.f13387do;
            if (abstractC2718euArr12 != null) {
                for (AbstractC2718eu abstractC2718eu12 : abstractC2718euArr12) {
                    abstractC2718eu12.f12745do = m3069do;
                    abstractC2718eu12.m6606goto();
                }
            }
        }
        int m8638this4 = m3116try.m8638this(3, 0);
        if (m8638this4 != 0) {
            AbstractC2895hu abstractC2895hu11 = this.f11223do;
            abstractC2895hu11.f13396if = true;
            AbstractC2718eu[] abstractC2718euArr13 = abstractC2895hu11.f13387do;
            if (abstractC2718euArr13 != null) {
                for (AbstractC2718eu abstractC2718eu13 : abstractC2718euArr13) {
                    abstractC2718eu13.f12760for = true;
                    abstractC2718eu13.m6606goto();
                    View view = abstractC2718eu13.f12747do;
                    if (view != null) {
                        view.setVisibility(0);
                        abstractC2718eu13.requestLayout();
                    }
                }
            }
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(m8638this4, O2.f2514synchronized);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
            AbstractC2895hu abstractC2895hu12 = this.f11223do;
            abstractC2895hu12.f13377const = dimensionPixelSize;
            AbstractC2718eu[] abstractC2718euArr14 = abstractC2895hu12.f13387do;
            if (abstractC2718euArr14 != null) {
                for (AbstractC2718eu abstractC2718eu14 : abstractC2718euArr14) {
                    abstractC2718eu14.f12761goto = dimensionPixelSize;
                    abstractC2718eu14.m6607import(abstractC2718eu14.getWidth());
                }
            }
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            AbstractC2895hu abstractC2895hu13 = this.f11223do;
            abstractC2895hu13.f13389final = dimensionPixelSize2;
            AbstractC2718eu[] abstractC2718euArr15 = abstractC2895hu13.f13387do;
            if (abstractC2718euArr15 != null) {
                for (AbstractC2718eu abstractC2718eu15 : abstractC2718euArr15) {
                    abstractC2718eu15.f12770this = dimensionPixelSize2;
                    abstractC2718eu15.m6607import(abstractC2718eu15.getWidth());
                }
            }
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(3, 0);
            AbstractC2895hu abstractC2895hu14 = this.f11223do;
            abstractC2895hu14.f13399super = dimensionPixelOffset;
            AbstractC2718eu[] abstractC2718euArr16 = abstractC2895hu14.f13387do;
            if (abstractC2718euArr16 != null) {
                for (AbstractC2718eu abstractC2718eu16 : abstractC2718euArr16) {
                    abstractC2718eu16.f12741break = dimensionPixelOffset;
                    abstractC2718eu16.m6607import(abstractC2718eu16.getWidth());
                }
            }
            ColorStateList m3071if = C0659Zr.m3071if(context2, obtainStyledAttributes, 2);
            AbstractC2895hu abstractC2895hu15 = this.f11223do;
            abstractC2895hu15.f13402try = m3071if;
            AbstractC2718eu[] abstractC2718euArr17 = abstractC2895hu15.f13387do;
            if (abstractC2718euArr17 != null) {
                for (AbstractC2718eu abstractC2718eu17 : abstractC2718euArr17) {
                    C0716as m6842new = abstractC2895hu15.m6842new();
                    View view2 = abstractC2718eu17.f12747do;
                    if (view2 != null) {
                        view2.setBackgroundDrawable(m6842new);
                        abstractC2718eu17.m6606goto();
                    }
                }
            }
            C3554qD c3554qD = new C3554qD(C3554qD.m7858do(context2, obtainStyledAttributes.getResourceId(4, 0), 0));
            AbstractC2895hu abstractC2895hu16 = this.f11223do;
            abstractC2895hu16.f13385do = c3554qD;
            AbstractC2718eu[] abstractC2718euArr18 = abstractC2895hu16.f13387do;
            if (abstractC2718euArr18 != null) {
                for (AbstractC2718eu abstractC2718eu18 : abstractC2718euArr18) {
                    C0716as m6842new2 = abstractC2895hu16.m6842new();
                    View view3 = abstractC2718eu18.f12747do;
                    if (view3 != null) {
                        view3.setBackgroundDrawable(m6842new2);
                        abstractC2718eu18.m6606goto();
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (m3116try.m8630class(15)) {
            int m8638this5 = m3116try.m8638this(15, 0);
            NavigationBarPresenter navigationBarPresenter2 = this.f11221do;
            navigationBarPresenter2.f11216do = true;
            if (this.f11220do == null) {
                this.f11220do = new YF(getContext());
            }
            this.f11220do.inflate(m8638this5, this.f11222do);
            navigationBarPresenter2.f11216do = false;
            navigationBarPresenter2.mo3321new(true);
        }
        m3116try.m8633final();
        addView(this.f11223do);
        ((Ccase) this.f11222do).f5407do = new Cdo();
    }

    /* renamed from: do */
    public abstract AbstractC2895hu mo5679do(Context context);

    /* renamed from: if */
    public abstract int mo5680if();

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        O4.m1611implements(this);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        this.f11222do.m3339public(savedState.f11224do);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f11224do = bundle;
        this.f11222do.m3341static(bundle);
        return savedState;
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        O4.m1619protected(this, f);
    }
}

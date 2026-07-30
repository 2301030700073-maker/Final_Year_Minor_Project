package com.google.android.material.checkbox;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.facebook.appevents.codeless.internal.Constants;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC2745fK;
import defpackage.C0154Cr;
import defpackage.C0426Pe;
import defpackage.C0492Se;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0785c1;
import defpackage.C2609d1;
import defpackage.C2775fs;
import defpackage.C3645ro;
import defpackage.C3738tL;
import defpackage.C3844v9;
import defpackage.C3970xH;
import defpackage.C4013y1;
import defpackage.Creturn;
import defpackage.O2;
import defpackage.Oz;
import defpackage.W0;
import defpackage.X0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class MaterialCheckBox extends AppCompatCheckBox {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f10770do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PorterDuff.Mode f10771do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f10772do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CompoundButton.OnCheckedChangeListener f10773do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0785c1 f10774do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f10775do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f10776do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<Cif> f10777do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10778do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f10779do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f10780for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final ColorStateList f10781for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f10782for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f10783if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Drawable f10784if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f10785if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f10786if;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f10787new;

    /* renamed from: try, reason: not valid java name */
    public boolean f10788try;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f10768if = {R.attr.state_indeterminate};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f10767for = {R.attr.state_error};

    /* renamed from: do, reason: not valid java name */
    public static final int[][] f10766do = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: new, reason: not valid java name */
    @SuppressLint({"DiscouragedApi"})
    public static final int f10769new = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", Constants.PLATFORM);

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: for, reason: not valid java name */
        public int f10789for;

        /* renamed from: com.google.android.material.checkbox.MaterialCheckBox$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MaterialCheckBox.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" CheckedState=");
            int i = this.f10789for;
            return Creturn.m7984try(sb, i != 1 ? i != 2 ? "unchecked" : "indeterminate" : "checked", "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.f10789for));
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f10789for = ((Integer) parcel.readValue(getClass().getClassLoader())).intValue();
        }
    }

    /* renamed from: com.google.android.material.checkbox.MaterialCheckBox$do, reason: invalid class name */
    public class Cdo extends X0 {
        public Cdo() {
        }

        @Override // defpackage.X0
        /* renamed from: do */
        public final void mo2708do(Drawable drawable) {
            ColorStateList colorStateList = MaterialCheckBox.this.f10783if;
            if (colorStateList != null) {
                C0426Pe.Cdo.m1787goto(drawable, colorStateList);
            }
        }

        @Override // defpackage.X0
        /* renamed from: if */
        public final void mo2793if(Drawable drawable) {
            MaterialCheckBox materialCheckBox = MaterialCheckBox.this;
            ColorStateList colorStateList = materialCheckBox.f10783if;
            if (colorStateList != null) {
                C0426Pe.Cdo.m1785else(drawable, colorStateList.getColorForState(materialCheckBox.f10779do, colorStateList.getDefaultColor()));
            }
        }
    }

    /* renamed from: com.google.android.material.checkbox.MaterialCheckBox$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do, reason: not valid java name */
        void m5741do();
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5738case(int i) {
        Object systemService;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f10780for != i) {
            this.f10780for = i;
            super.setChecked(i == 1);
            refreshDrawableState();
            m5739else();
            if (this.f10788try) {
                return;
            }
            this.f10788try = true;
            LinkedHashSet<Cif> linkedHashSet = this.f10777do;
            if (linkedHashSet != null) {
                Iterator<Cif> it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    it.next().m5741do();
                }
            }
            if (this.f10780for != 2 && (onCheckedChangeListener = this.f10773do) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (Build.VERSION.SDK_INT >= 26) {
                systemService = getContext().getSystemService((Class<Object>) AutofillManager.class);
                AutofillManager autofillManager = (AutofillManager) systemService;
                if (autofillManager != null) {
                    autofillManager.notifyValueChanged(this);
                }
            }
            this.f10788try = false;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5739else() {
        if (Build.VERSION.SDK_INT < 30 || this.f10785if != null) {
            return;
        }
        int i = this.f10780for;
        super.setStateDescription(i == 1 ? getResources().getString(R.string.mtrl_checkbox_state_description_checked) : i == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate));
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5740for() {
        ColorStateList colorStateList;
        C2609d1 c2609d1;
        Drawable drawable = this.f10772do;
        ColorStateList colorStateList2 = this.f10783if;
        PorterDuff.Mode m8437if = C3844v9.Cdo.m8437if(this);
        int i = Build.VERSION.SDK_INT;
        this.f10772do = C0492Se.m2175if(drawable, colorStateList2, m8437if, i < 23);
        Drawable drawable2 = this.f10784if;
        boolean z = i < 23;
        ColorStateList colorStateList3 = this.f10781for;
        this.f10784if = C0492Se.m2175if(drawable2, colorStateList3, this.f10771do, z);
        if (this.f10787new) {
            C0785c1 c0785c1 = this.f10774do;
            if (c0785c1 != null) {
                Drawable drawable3 = ((AbstractC2745fK) c0785c1).f12895do;
                Cdo cdo = this.f10775do;
                if (drawable3 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable3;
                    if (((X0) cdo).f4427do == null) {
                        ((X0) cdo).f4427do = new W0(cdo);
                    }
                    animatedVectorDrawable.unregisterAnimationCallback(((X0) cdo).f4427do);
                }
                ArrayList<X0> arrayList = c0785c1.f8472do;
                C0785c1.Cif cif = c0785c1.f8470do;
                if (arrayList != null && cdo != null) {
                    arrayList.remove(cdo);
                    if (c0785c1.f8472do.size() == 0 && (c2609d1 = c0785c1.f8471do) != null) {
                        cif.f8476do.removeListener(c2609d1);
                        c0785c1.f8471do = null;
                    }
                }
                Drawable drawable4 = ((AbstractC2745fK) c0785c1).f12895do;
                if (drawable4 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) drawable4;
                    if (((X0) cdo).f4427do == null) {
                        ((X0) cdo).f4427do = new W0(cdo);
                    }
                    animatedVectorDrawable2.registerAnimationCallback(((X0) cdo).f4427do);
                } else if (cdo != null) {
                    if (c0785c1.f8472do == null) {
                        c0785c1.f8472do = new ArrayList<>();
                    }
                    if (!c0785c1.f8472do.contains(cdo)) {
                        c0785c1.f8472do.add(cdo);
                        if (c0785c1.f8471do == null) {
                            c0785c1.f8471do = new C2609d1(c0785c1);
                        }
                        cif.f8476do.addListener(c0785c1.f8471do);
                    }
                }
            }
            if (i >= 24) {
                Drawable drawable5 = this.f10772do;
                if ((drawable5 instanceof AnimatedStateListDrawable) && c0785c1 != null) {
                    ((AnimatedStateListDrawable) drawable5).addTransition(R.id.checked, R.id.unchecked, c0785c1, false);
                    ((AnimatedStateListDrawable) this.f10772do).addTransition(R.id.indeterminate, R.id.unchecked, c0785c1, false);
                }
            }
        }
        Drawable drawable6 = this.f10772do;
        if (drawable6 != null && (colorStateList = this.f10783if) != null) {
            C0426Pe.Cdo.m1787goto(drawable6, colorStateList);
        }
        Drawable drawable7 = this.f10784if;
        if (drawable7 != null && colorStateList3 != null) {
            C0426Pe.Cdo.m1787goto(drawable7, colorStateList3);
        }
        super.setButtonDrawable(C0492Se.m2173do(this.f10772do, this.f10784if, -1, -1));
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    public final Drawable getButtonDrawable() {
        return this.f10772do;
    }

    @Override // android.widget.CompoundButton
    public final ColorStateList getButtonTintList() {
        return this.f10783if;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.f10780for == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f10778do && this.f10783if == null && this.f10781for == null) {
            this.f10778do = true;
            if (this.f10770do == null) {
                int m1587goto = O2.m1587goto(this, R.attr.colorControlActivated);
                int m1587goto2 = O2.m1587goto(this, R.attr.colorError);
                int m1587goto3 = O2.m1587goto(this, R.attr.colorSurface);
                int m1587goto4 = O2.m1587goto(this, R.attr.colorOnSurface);
                this.f10770do = new ColorStateList(f10766do, new int[]{O2.m1581catch(1.0f, m1587goto3, m1587goto2), O2.m1581catch(1.0f, m1587goto3, m1587goto), O2.m1581catch(0.54f, m1587goto3, m1587goto4), O2.m1581catch(0.38f, m1587goto3, m1587goto4), O2.m1581catch(0.38f, m1587goto3, m1587goto4)});
            }
            C3844v9.Cdo.m8436for(this, this.f10770do);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (this.f10780for == 2) {
            View.mergeDrawableStates(onCreateDrawableState, f10768if);
        }
        if (this.f10782for) {
            View.mergeDrawableStates(onCreateDrawableState, f10767for);
        }
        this.f10779do = C0492Se.m2174for(onCreateDrawableState);
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable m8434do;
        if (!this.f10786if || !TextUtils.isEmpty(getText()) || (m8434do = C3844v9.m8434do(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - m8434do.getIntrinsicWidth()) / 2) * (C3738tL.m8282else(this) ? -1 : 1);
        int save = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
        if (getBackground() != null) {
            Rect bounds = m8434do.getBounds();
            C0426Pe.Cdo.m1783case(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.f10782for) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f10776do));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        m5738case(savedState.f10789for);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10789for = this.f10780for;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public final void setButtonDrawable(int i) {
        setButtonDrawable(C3645ro.m7997extends(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public final void setButtonTintList(ColorStateList colorStateList) {
        if (this.f10783if == colorStateList) {
            return;
        }
        this.f10783if = colorStateList;
        m5740for();
    }

    @Override // android.widget.CompoundButton
    public final void setButtonTintMode(PorterDuff.Mode mode) {
        C4013y1 c4013y1 = ((AppCompatCheckBox) this).f5687do;
        if (c4013y1 != null) {
            c4013y1.f16661do = mode;
            c4013y1.f16665if = true;
            c4013y1.m8696do();
        }
        m5740for();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void setChecked(boolean z) {
        m5738case(z ? 1 : 0);
    }

    @Override // android.widget.TextView, android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
    }

    @Override // android.widget.CompoundButton
    public final void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f10773do = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public final void setStateDescription(CharSequence charSequence) {
        this.f10785if = charSequence;
        if (charSequence == null) {
            m5739else();
        } else {
            super.setStateDescription(charSequence);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, i);
        C0785c1 c0785c1;
        int next;
        new LinkedHashSet();
        this.f10777do = new LinkedHashSet<>();
        Context context2 = getContext();
        if (Build.VERSION.SDK_INT >= 24) {
            c0785c1 = new C0785c1(context2);
            Resources resources = context2.getResources();
            Resources.Theme theme = context2.getTheme();
            ThreadLocal<TypedValue> threadLocal = Oz.f2712do;
            Drawable m1726do = Oz.Cdo.m1726do(resources, R.drawable.mtrl_checkbox_button_checked_unchecked, theme);
            ((AbstractC2745fK) c0785c1).f12895do = m1726do;
            m1726do.setCallback(c0785c1.f8469do);
            new C0785c1.Cfor(((AbstractC2745fK) c0785c1).f12895do.getConstantState());
        } else {
            int i2 = C0785c1.f8467for;
            try {
                XmlResourceParser xml = context2.getResources().getXml(R.drawable.mtrl_checkbox_button_checked_unchecked);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                Resources resources2 = context2.getResources();
                Resources.Theme theme2 = context2.getTheme();
                C0785c1 c0785c12 = new C0785c1(context2);
                c0785c12.inflate(resources2, xml, asAttributeSet, theme2);
                c0785c1 = c0785c12;
            } catch (IOException | XmlPullParserException unused) {
                c0785c1 = null;
            }
        }
        this.f10774do = c0785c1;
        this.f10775do = new Cdo();
        Context context3 = getContext();
        this.f10772do = C3844v9.m8434do(this);
        ColorStateList colorStateList = this.f10783if;
        if (colorStateList == null) {
            if (super.getButtonTintList() != null) {
                colorStateList = super.getButtonTintList();
            } else {
                C4013y1 c4013y1 = ((AppCompatCheckBox) this).f5687do;
                colorStateList = c4013y1 != null ? c4013y1.f16660do : null;
            }
        }
        this.f10783if = colorStateList;
        C4013y1 c4013y12 = ((AppCompatCheckBox) this).f5687do;
        if (c4013y12 != null) {
            c4013y12.f16660do = null;
            c4013y12.f16663do = true;
            c4013y12.m8696do();
        }
        C3970xH m3116try = C0682aH.m3116try(context3, attributeSet, O2.f2477continue, i, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        this.f10784if = m3116try.m8639try(2);
        if (this.f10772do != null && C0154Cr.m306if(context3, R.attr.isMaterial3Theme, false)) {
            if (m3116try.m8638this(0, 0) == f10769new && m3116try.m8638this(1, 0) == 0) {
                super.setButtonDrawable((Drawable) null);
                this.f10772do = C3645ro.m7997extends(context3, R.drawable.mtrl_checkbox_button);
                this.f10787new = true;
                if (this.f10784if == null) {
                    this.f10784if = C3645ro.m7997extends(context3, R.drawable.mtrl_checkbox_button_icon);
                }
            }
        }
        this.f10781for = C0659Zr.m3069do(context3, m3116try, 3);
        this.f10771do = C3738tL.m8284goto(m3116try.m8635goto(4, -1), PorterDuff.Mode.SRC_IN);
        this.f10778do = m3116try.m8631do(10, false);
        this.f10786if = m3116try.m8631do(6, true);
        this.f10782for = m3116try.m8631do(9, false);
        this.f10776do = m3116try.m8629catch(8);
        if (m3116try.m8630class(7)) {
            m5738case(m3116try.m8635goto(7, 0));
        }
        m3116try.m8633final();
        m5740for();
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public final void setButtonDrawable(Drawable drawable) {
        this.f10772do = drawable;
        this.f10787new = false;
        m5740for();
    }
}

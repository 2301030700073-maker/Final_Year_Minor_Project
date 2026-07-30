package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import defpackage.C0742bH;
import defpackage.C3645ro;
import defpackage.C3793uH;
import defpackage.C3836v1;
import defpackage.C3970xH;
import defpackage.InterfaceC4029yH;
import defpackage.L1;
import defpackage.S1;

/* loaded from: classes.dex */
public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView implements InterfaceC4029yH {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f5705do = {R.attr.popupBackground};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final L1 f5706do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final S1 f5707do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3836v1 f5708do;

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.autoCompleteTextViewStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3836v1 c3836v1 = this.f5708do;
        if (c3836v1 != null) {
            c3836v1.m8414do();
        }
        S1 s1 = this.f5707do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: new */
    public final void mo3407new(PorterDuff.Mode mode) {
        S1 s1 = this.f5707do;
        s1.m2085catch(mode);
        s1.m2090if();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C3645ro.m7994continue(this, editorInfo, onCreateInputConnection);
        return this.f5706do.m1256for(onCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3836v1 c3836v1 = this.f5708do;
        if (c3836v1 != null) {
            c3836v1.m8421try();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C3836v1 c3836v1 = this.f5708do;
        if (c3836v1 != null) {
            c3836v1.m8413case(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5707do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5707do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public final void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C3645ro.m7997extends(getContext(), i));
    }

    @Override // android.widget.TextView
    public final void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f5706do.m1255do(keyListener));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        S1 s1 = this.f5707do;
        if (s1 != null) {
            s1.m2093try(context, i);
        }
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: try */
    public final void mo3408try(ColorStateList colorStateList) {
        S1 s1 = this.f5707do;
        s1.m2084break(colorStateList);
        s1.m2090if();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C3793uH.m8378do(context);
        C0742bH.m4822do(getContext(), this);
        C3970xH m8626const = C3970xH.m8626const(getContext(), attributeSet, f5705do, i);
        if (m8626const.m8630class(0)) {
            setDropDownBackgroundDrawable(m8626const.m8639try(0));
        }
        m8626const.m8633final();
        C3836v1 c3836v1 = new C3836v1(this);
        this.f5708do = c3836v1;
        c3836v1.m8419new(attributeSet, i);
        S1 s1 = new S1(this);
        this.f5707do = s1;
        s1.m2091new(attributeSet, i);
        s1.m2090if();
        L1 l1 = new L1(this);
        this.f5706do = l1;
        l1.m1257if(attributeSet, i);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean isFocusable = super.isFocusable();
            boolean isClickable = super.isClickable();
            boolean isLongClickable = super.isLongClickable();
            int inputType = super.getInputType();
            KeyListener m1255do = l1.m1255do(keyListener);
            if (m1255do == keyListener) {
                return;
            }
            super.setKeyListener(m1255do);
            super.setRawInputType(inputType);
            super.setFocusable(isFocusable);
            super.setClickable(isClickable);
            super.setLongClickable(isLongClickable);
        }
    }
}

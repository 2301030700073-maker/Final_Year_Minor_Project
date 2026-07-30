package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import com.joeykrim.rootcheck.R;
import defpackage.C0378Na;
import defpackage.C0742bH;
import defpackage.C3793uH;
import defpackage.C3836v1;
import defpackage.InterfaceC0575Vv;
import defpackage.InterfaceC4029yH;
import defpackage.L1;
import defpackage.P1;
import defpackage.QK;
import defpackage.R1;
import defpackage.S1;
import defpackage.XG;
import defpackage.YG;

/* loaded from: classes.dex */
public class AppCompatEditText extends EditText implements InterfaceC0575Vv, InterfaceC4029yH {

    /* renamed from: do, reason: not valid java name */
    public final L1 f5692do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final R1 f5693do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final S1 f5694do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final YG f5695do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f5696do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3836v1 f5697do;

    /* renamed from: androidx.appcompat.widget.AppCompatEditText$do, reason: invalid class name */
    public class Cdo {
        public Cdo() {
        }
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    @Override // defpackage.InterfaceC0575Vv
    /* renamed from: do */
    public final C0378Na mo1323do(C0378Na c0378Na) {
        return this.f5695do.mo2481do(this, c0378Na);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3836v1 c3836v1 = this.f5697do;
        if (c3836v1 != null) {
            c3836v1.m8414do();
        }
        S1 s1 = this.f5694do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return XG.m2802new(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public final TextClassifier getTextClassifier() {
        R1 r1;
        if (Build.VERSION.SDK_INT < 28 && (r1 = this.f5693do) != null) {
            TextClassifier textClassifier = r1.f3093do;
            return textClassifier == null ? R1.Cdo.m2010do(r1.f3094do) : textClassifier;
        }
        if (this.f5696do == null) {
            this.f5696do = new Cdo();
        }
        return super.getTextClassifier();
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: new */
    public final void mo3407new(PorterDuff.Mode mode) {
        S1 s1 = this.f5694do;
        s1.m2085catch(mode);
        s1.m2090if();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r1 != null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
    
        r6 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006a, code lost:
    
        if (r1 != null) goto L23;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo r8) {
        /*
            r7 = this;
            android.view.inputmethod.InputConnection r0 = super.onCreateInputConnection(r8)
            S1 r1 = r7.f5694do
            r1.getClass()
            defpackage.S1.m2082case(r7, r0, r8)
            defpackage.C3645ro.m7994continue(r7, r8, r0)
            if (r0 == 0) goto L77
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 30
            if (r1 > r2) goto L77
            java.lang.String[] r2 = defpackage.QK.m1855goto(r7)
            if (r2 == 0) goto L77
            java.lang.String r3 = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            java.lang.String r4 = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            r5 = 25
            if (r1 < r5) goto L29
            defpackage.C3931wf.m8580do(r8, r2)
            goto L3e
        L29:
            android.os.Bundle r6 = r8.extras
            if (r6 != 0) goto L34
            android.os.Bundle r6 = new android.os.Bundle
            r6.<init>()
            r8.extras = r6
        L34:
            android.os.Bundle r6 = r8.extras
            r6.putStringArray(r4, r2)
            android.os.Bundle r6 = r8.extras
            r6.putStringArray(r3, r2)
        L3e:
            Nn r2 = new Nn
            r6 = 0
            r2.<init>(r7, r6)
            if (r1 < r5) goto L4d
            On r1 = new On
            r1.<init>(r0, r2)
        L4b:
            r0 = r1
            goto L77
        L4d:
            java.lang.String[] r6 = defpackage.C4049yf.f16806do
            if (r1 < r5) goto L59
            java.lang.String[] r1 = defpackage.C3990xf.m8658if(r8)
            if (r1 == 0) goto L6d
        L57:
            r6 = r1
            goto L6d
        L59:
            android.os.Bundle r1 = r8.extras
            if (r1 != 0) goto L5e
            goto L6d
        L5e:
            java.lang.String[] r1 = r1.getStringArray(r4)
            if (r1 != 0) goto L6a
            android.os.Bundle r1 = r8.extras
            java.lang.String[] r1 = r1.getStringArray(r3)
        L6a:
            if (r1 == 0) goto L6d
            goto L57
        L6d:
            int r1 = r6.length
            if (r1 != 0) goto L71
            goto L77
        L71:
            Pn r1 = new Pn
            r1.<init>(r0, r2)
            goto L4b
        L77:
            L1 r1 = r7.f5692do
            android.view.inputmethod.InputConnection r8 = r1.m1256for(r0, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatEditText.onCreateInputConnection(android.view.inputmethod.EditorInfo):android.view.inputmethod.InputConnection");
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i = Build.VERSION.SDK_INT;
        boolean z = false;
        if (i < 31 && i >= 24 && dragEvent.getLocalState() == null && QK.m1855goto(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                toString();
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                z = P1.m1735do(dragEvent, this, activity);
            }
        }
        if (z) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 31 && QK.m1855goto(this) != null && (i == 16908322 || i == 16908337)) {
            ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
            ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
            if (primaryClip != null && primaryClip.getItemCount() > 0) {
                C0378Na.Cif cdo = i2 >= 31 ? new C0378Na.Cdo(primaryClip, 1) : new C0378Na.Cfor(primaryClip, 1);
                cdo.mo1541if(i != 16908322 ? 1 : 0);
                QK.m1863super(this, cdo.mo1540for());
            }
            r2 = 1;
        }
        if (r2 != 0) {
            return true;
        }
        return super.onTextContextMenuItem(i);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3836v1 c3836v1 = this.f5697do;
        if (c3836v1 != null) {
            c3836v1.m8421try();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C3836v1 c3836v1 = this.f5697do;
        if (c3836v1 != null) {
            c3836v1.m8413case(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5694do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5694do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(XG.m2803try(callback, this));
    }

    @Override // android.widget.TextView
    public final void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f5692do.m1255do(keyListener));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        S1 s1 = this.f5694do;
        if (s1 != null) {
            s1.m2093try(context, i);
        }
    }

    @Override // android.widget.TextView
    public final void setTextClassifier(TextClassifier textClassifier) {
        R1 r1;
        if (Build.VERSION.SDK_INT < 28 && (r1 = this.f5693do) != null) {
            r1.f3093do = textClassifier;
            return;
        }
        if (this.f5696do == null) {
            this.f5696do = new Cdo();
        }
        super.setTextClassifier(textClassifier);
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: try */
    public final void mo3408try(ColorStateList colorStateList) {
        S1 s1 = this.f5694do;
        s1.m2084break(colorStateList);
        s1.m2090if();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C3793uH.m8378do(context);
        C0742bH.m4822do(getContext(), this);
        C3836v1 c3836v1 = new C3836v1(this);
        this.f5697do = c3836v1;
        c3836v1.m8419new(attributeSet, i);
        S1 s1 = new S1(this);
        this.f5694do = s1;
        s1.m2091new(attributeSet, i);
        s1.m2090if();
        this.f5693do = new R1(this);
        this.f5695do = new YG();
        L1 l1 = new L1(this);
        this.f5692do = l1;
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

    @Override // android.widget.EditText, android.widget.TextView
    public final Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }
}

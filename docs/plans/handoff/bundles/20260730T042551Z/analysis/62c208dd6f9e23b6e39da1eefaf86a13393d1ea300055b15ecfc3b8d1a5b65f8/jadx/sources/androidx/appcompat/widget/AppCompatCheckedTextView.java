package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import com.joeykrim.rootcheck.R;
import defpackage.C3645ro;
import defpackage.C3836v1;
import defpackage.C3954x1;
import defpackage.InterfaceC4029yH;
import defpackage.M1;
import defpackage.S1;
import defpackage.XG;

/* loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView implements InterfaceC4029yH {

    /* renamed from: do, reason: not valid java name */
    public M1 f5688do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final S1 f5689do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3836v1 f5690do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3954x1 f5691do;

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        S1 s1 = this.f5689do;
        if (s1 != null) {
            s1.m2090if();
        }
        C3836v1 c3836v1 = this.f5690do;
        if (c3836v1 != null) {
            c3836v1.m8414do();
        }
        C3954x1 c3954x1 = this.f5691do;
        if (c3954x1 != null) {
            c3954x1.m8617do();
        }
    }

    @Override // android.widget.TextView
    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return XG.m2802new(super.getCustomSelectionActionModeCallback());
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: new */
    public final void mo3407new(PorterDuff.Mode mode) {
        S1 s1 = this.f5689do;
        s1.m2085catch(mode);
        s1.m2090if();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C3645ro.m7994continue(this, editorInfo, onCreateInputConnection);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public final void setAllCaps(boolean z) {
        super.setAllCaps(z);
        if (this.f5688do == null) {
            this.f5688do = new M1(this);
        }
        this.f5688do.m1378try(z);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3836v1 c3836v1 = this.f5690do;
        if (c3836v1 != null) {
            c3836v1.m8421try();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C3836v1 c3836v1 = this.f5690do;
        if (c3836v1 != null) {
            c3836v1.m8413case(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public final void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C3954x1 c3954x1 = this.f5691do;
        if (c3954x1 != null) {
            if (c3954x1.f16511for) {
                c3954x1.f16511for = false;
            } else {
                c3954x1.f16511for = true;
                c3954x1.m8617do();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5689do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        S1 s1 = this.f5689do;
        if (s1 != null) {
            s1.m2090if();
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(XG.m2803try(callback, this));
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        S1 s1 = this.f5689do;
        if (s1 != null) {
            s1.m2093try(context, i);
        }
    }

    @Override // defpackage.InterfaceC4029yH
    /* renamed from: try */
    public final void mo3408try(ColorStateList colorStateList) {
        S1 s1 = this.f5689do;
        s1.m2084break(colorStateList);
        s1.m2090if();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007d A[Catch: all -> 0x00ac, TryCatch #1 {all -> 0x00ac, blocks: (B:3:0x0042, B:5:0x0049, B:8:0x004f, B:10:0x005f, B:12:0x0065, B:14:0x006b, B:15:0x0076, B:17:0x007d, B:18:0x0084, B:20:0x008b), top: B:2:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008b A[Catch: all -> 0x00ac, TRY_LEAVE, TryCatch #1 {all -> 0x00ac, blocks: (B:3:0x0042, B:5:0x0049, B:8:0x004f, B:10:0x005f, B:12:0x0065, B:14:0x006b, B:15:0x0076, B:17:0x007d, B:18:0x0084, B:20:0x008b), top: B:2:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatCheckedTextView(android.content.Context r7, android.util.AttributeSet r8, int r9) {
        /*
            r6 = this;
            defpackage.C3793uH.m8378do(r7)
            r6.<init>(r7, r8, r9)
            android.content.Context r7 = r6.getContext()
            defpackage.C0742bH.m4822do(r7, r6)
            S1 r7 = new S1
            r7.<init>(r6)
            r6.f5689do = r7
            r7.m2091new(r8, r9)
            r7.m2090if()
            v1 r7 = new v1
            r7.<init>(r6)
            r6.f5690do = r7
            r7.m8419new(r8, r9)
            x1 r7 = new x1
            r7.<init>(r6)
            r6.f5691do = r7
            android.content.Context r7 = r6.getContext()
            int[] r2 = defpackage.O4.f2559native
            xH r7 = defpackage.C3970xH.m8626const(r7, r8, r2, r9)
            android.content.Context r1 = r6.getContext()
            android.content.res.TypedArray r4 = r7.f16536do
            r0 = r6
            r3 = r8
            r5 = r9
            defpackage.QK.m1857import(r0, r1, r2, r3, r4, r5)
            r0 = 1
            boolean r1 = r7.m8630class(r0)     // Catch: java.lang.Throwable -> Lac
            r2 = 0
            if (r1 == 0) goto L5c
            int r1 = r7.m8638this(r0, r2)     // Catch: java.lang.Throwable -> Lac
            if (r1 == 0) goto L5c
            android.content.Context r3 = r6.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L5b java.lang.Throwable -> Lac
            android.graphics.drawable.Drawable r1 = defpackage.C3645ro.m7997extends(r3, r1)     // Catch: android.content.res.Resources.NotFoundException -> L5b java.lang.Throwable -> Lac
            r6.setCheckMarkDrawable(r1)     // Catch: android.content.res.Resources.NotFoundException -> L5b java.lang.Throwable -> Lac
            goto L5d
        L5b:
        L5c:
            r0 = 0
        L5d:
            if (r0 != 0) goto L76
            boolean r0 = r7.m8630class(r2)     // Catch: java.lang.Throwable -> Lac
            if (r0 == 0) goto L76
            int r0 = r7.m8638this(r2, r2)     // Catch: java.lang.Throwable -> Lac
            if (r0 == 0) goto L76
            android.content.Context r1 = r6.getContext()     // Catch: java.lang.Throwable -> Lac
            android.graphics.drawable.Drawable r0 = defpackage.C3645ro.m7997extends(r1, r0)     // Catch: java.lang.Throwable -> Lac
            r6.setCheckMarkDrawable(r0)     // Catch: java.lang.Throwable -> Lac
        L76:
            r0 = 2
            boolean r1 = r7.m8630class(r0)     // Catch: java.lang.Throwable -> Lac
            if (r1 == 0) goto L84
            android.content.res.ColorStateList r0 = r7.m8636if(r0)     // Catch: java.lang.Throwable -> Lac
            r6.setCheckMarkTintList(r0)     // Catch: java.lang.Throwable -> Lac
        L84:
            r0 = 3
            boolean r1 = r7.m8630class(r0)     // Catch: java.lang.Throwable -> Lac
            if (r1 == 0) goto L98
            r1 = -1
            int r0 = r7.m8635goto(r0, r1)     // Catch: java.lang.Throwable -> Lac
            r1 = 0
            android.graphics.PorterDuff$Mode r0 = defpackage.C0470Re.m2062for(r0, r1)     // Catch: java.lang.Throwable -> Lac
            r6.setCheckMarkTintMode(r0)     // Catch: java.lang.Throwable -> Lac
        L98:
            r7.m8633final()
            M1 r7 = r6.f5688do
            if (r7 != 0) goto La6
            M1 r7 = new M1
            r7.<init>(r6)
            r6.f5688do = r7
        La6:
            M1 r7 = r6.f5688do
            r7.m1375for(r8, r9)
            return
        Lac:
            r8 = move-exception
            r7.m8633final()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCheckedTextView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @Override // android.widget.CheckedTextView
    public final void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C3645ro.m7997extends(getContext(), i));
    }
}

package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import defpackage.C0682aH;
import defpackage.C2775fs;
import defpackage.C4122zt;
import defpackage.O2;
import java.util.Locale;

/* loaded from: classes3.dex */
public class TextInputEditText extends AppCompatEditText {

    /* renamed from: do, reason: not valid java name */
    public final Rect f11615do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11616do;

    public TextInputEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        super.getFocusedRect(rect);
        TextInputLayout m5969if = m5969if();
        if (!(m5969if != null && this.f11616do) || rect == null) {
            return;
        }
        Rect rect2 = this.f11615do;
        m5969if.getFocusedRect(rect2);
        rect.bottom = rect2.bottom;
    }

    @Override // android.view.View
    public final boolean getGlobalVisibleRect(Rect rect, Point point) {
        TextInputLayout m5969if = m5969if();
        if (!(m5969if != null && this.f11616do)) {
            return super.getGlobalVisibleRect(rect, point);
        }
        boolean globalVisibleRect = m5969if.getGlobalVisibleRect(rect, point);
        if (globalVisibleRect && point != null) {
            point.offset(-getScrollX(), -getScrollY());
        }
        return globalVisibleRect;
    }

    @Override // android.widget.TextView
    public final CharSequence getHint() {
        TextInputLayout m5969if = m5969if();
        return (m5969if == null || !m5969if.f11692try) ? super.getHint() : m5969if.m5984goto();
    }

    /* renamed from: if, reason: not valid java name */
    public final TextInputLayout m5969if() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout m5969if = m5969if();
        if (m5969if != null && m5969if.f11692try && super.getHint() == null) {
            String str = Build.MANUFACTURER;
            if ((str != null ? str.toLowerCase(Locale.ENGLISH) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).equals("meizu")) {
                setHint(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            TextInputLayout m5969if = m5969if();
            editorInfo.hintText = m5969if != null ? m5969if.m5984goto() : null;
        }
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        TextInputLayout m5969if = m5969if();
        if (Build.VERSION.SDK_INT >= 23 || m5969if == null) {
            return;
        }
        Editable text = getText();
        CharSequence m5984goto = m5969if.m5984goto();
        boolean z = !TextUtils.isEmpty(text);
        boolean z2 = !TextUtils.isEmpty(m5984goto);
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        String charSequence = z2 ? m5984goto.toString() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append((Object) text);
            if (!TextUtils.isEmpty(charSequence)) {
                str = C4122zt.m8824for(", ", charSequence);
            }
            sb.append(str);
            str = sb.toString();
        } else if (!TextUtils.isEmpty(charSequence)) {
            str = charSequence;
        }
        accessibilityNodeInfo.setText(str);
    }

    @Override // android.view.View
    public final boolean requestRectangleOnScreen(Rect rect) {
        TextInputLayout m5969if = m5969if();
        if (!(m5969if != null && this.f11616do) || rect == null) {
            return super.requestRectangleOnScreen(rect);
        }
        int height = m5969if.getHeight() - getHeight();
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom + height;
        Rect rect2 = this.f11615do;
        rect2.set(i, i2, i3, i4);
        return super.requestRectangleOnScreen(rect2);
    }

    public TextInputEditText(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, 0), attributeSet, i);
        this.f11615do = new Rect();
        TypedArray m3115new = C0682aH.m3115new(context, attributeSet, O2.s, i, R.style.Widget_Design_TextInputEditText, new int[0]);
        this.f11616do = m3115new.getBoolean(0, false);
        m3115new.recycle();
    }
}

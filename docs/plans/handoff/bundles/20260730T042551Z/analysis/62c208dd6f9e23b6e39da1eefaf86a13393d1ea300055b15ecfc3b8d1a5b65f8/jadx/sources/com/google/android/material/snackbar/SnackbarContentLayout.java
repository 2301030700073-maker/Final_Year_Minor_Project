package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.joeykrim.rootcheck.R;
import defpackage.C0222Ft;
import defpackage.C2785g1;
import defpackage.C3385nL;
import defpackage.InterfaceC0422Pa;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class SnackbarContentLayout extends LinearLayout implements InterfaceC0422Pa {

    /* renamed from: do, reason: not valid java name */
    public final TimeInterpolator f11496do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Button f11497do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f11498do;

    /* renamed from: for, reason: not valid java name */
    public int f11499for;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11496do = C0222Ft.m651new(context, R.attr.motionEasingEmphasizedInterpolator, C2785g1.f13026do);
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m5931do(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f11498do.getPaddingTop() == i2 && this.f11498do.getPaddingBottom() == i3) {
            return z;
        }
        TextView textView = this.f11498do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (textView.isPaddingRelative()) {
            textView.setPaddingRelative(textView.getPaddingStart(), i2, textView.getPaddingEnd(), i3);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i2, textView.getPaddingRight(), i3);
        return true;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f11498do = (TextView) findViewById(R.id.snackbar_text);
        this.f11497do = (Button) findViewById(R.id.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
    
        if (m5931do(1, r0, r0 - r2) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
    
        if (r1 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
    
        super.onMeasure(r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0054, code lost:
    
        if (m5931do(0, r0, r0) != false) goto L26;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            super.onMeasure(r8, r9)
            int r0 = r7.getOrientation()
            r1 = 1
            if (r0 != r1) goto Lb
            return
        Lb:
            android.content.res.Resources r0 = r7.getResources()
            r2 = 2131099800(0x7f060098, float:1.7811963E38)
            int r0 = r0.getDimensionPixelSize(r2)
            android.content.res.Resources r2 = r7.getResources()
            r3 = 2131099799(0x7f060097, float:1.7811961E38)
            int r2 = r2.getDimensionPixelSize(r3)
            android.widget.TextView r3 = r7.f11498do
            android.text.Layout r3 = r3.getLayout()
            r4 = 0
            if (r3 == 0) goto L32
            int r3 = r3.getLineCount()
            if (r3 <= r1) goto L32
            r3 = 1
            goto L33
        L32:
            r3 = 0
        L33:
            if (r3 == 0) goto L4c
            int r5 = r7.f11499for
            if (r5 <= 0) goto L4c
            android.widget.Button r5 = r7.f11497do
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.f11499for
            if (r5 <= r6) goto L4c
            int r2 = r0 - r2
            boolean r0 = r7.m5931do(r1, r0, r2)
            if (r0 == 0) goto L57
            goto L58
        L4c:
            if (r3 == 0) goto L4f
            goto L50
        L4f:
            r0 = r2
        L50:
            boolean r0 = r7.m5931do(r4, r0, r0)
            if (r0 == 0) goto L57
            goto L58
        L57:
            r1 = 0
        L58:
            if (r1 == 0) goto L5d
            super.onMeasure(r8, r9)
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }
}

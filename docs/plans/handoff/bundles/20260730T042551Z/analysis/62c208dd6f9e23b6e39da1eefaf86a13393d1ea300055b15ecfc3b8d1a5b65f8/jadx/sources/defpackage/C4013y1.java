package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import defpackage.C0426Pe;

/* renamed from: y1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4013y1 {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CompoundButton f16662do;

    /* renamed from: for, reason: not valid java name */
    public boolean f16664for;

    /* renamed from: do, reason: not valid java name */
    public ColorStateList f16660do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f16661do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16663do = false;

    /* renamed from: if, reason: not valid java name */
    public boolean f16665if = false;

    public C4013y1(CompoundButton compoundButton) {
        this.f16662do = compoundButton;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8696do() {
        CompoundButton compoundButton = this.f16662do;
        Drawable m8434do = C3844v9.m8434do(compoundButton);
        if (m8434do != null) {
            if (this.f16663do || this.f16665if) {
                Drawable mutate = C0426Pe.m1779goto(m8434do).mutate();
                if (this.f16663do) {
                    C0426Pe.Cdo.m1787goto(mutate, this.f16660do);
                }
                if (this.f16665if) {
                    C0426Pe.Cdo.m1790this(mutate, this.f16661do);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0054 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:3:0x0019, B:5:0x0020, B:8:0x0026, B:10:0x0036, B:12:0x003c, B:14:0x0042, B:15:0x004d, B:17:0x0054, B:18:0x005b, B:20:0x0062), top: B:2:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0062 A[Catch: all -> 0x0073, TRY_LEAVE, TryCatch #0 {all -> 0x0073, blocks: (B:3:0x0019, B:5:0x0020, B:8:0x0026, B:10:0x0036, B:12:0x003c, B:14:0x0042, B:15:0x004d, B:17:0x0054, B:18:0x005b, B:20:0x0062), top: B:2:0x0019 }] */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8697if(android.util.AttributeSet r9, int r10) {
        /*
            r8 = this;
            android.widget.CompoundButton r6 = r8.f16662do
            android.content.Context r0 = r6.getContext()
            int[] r2 = defpackage.O4.f2567public
            xH r7 = defpackage.C3970xH.m8626const(r0, r9, r2, r10)
            android.content.Context r1 = r6.getContext()
            android.content.res.TypedArray r4 = r7.f16536do
            r0 = r6
            r3 = r9
            r5 = r10
            defpackage.QK.m1857import(r0, r1, r2, r3, r4, r5)
            r9 = 1
            boolean r10 = r7.m8630class(r9)     // Catch: java.lang.Throwable -> L73
            r0 = 0
            if (r10 == 0) goto L33
            int r10 = r7.m8638this(r9, r0)     // Catch: java.lang.Throwable -> L73
            if (r10 == 0) goto L33
            android.content.Context r1 = r6.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L32 java.lang.Throwable -> L73
            android.graphics.drawable.Drawable r10 = defpackage.C3645ro.m7997extends(r1, r10)     // Catch: android.content.res.Resources.NotFoundException -> L32 java.lang.Throwable -> L73
            r6.setButtonDrawable(r10)     // Catch: android.content.res.Resources.NotFoundException -> L32 java.lang.Throwable -> L73
            goto L34
        L32:
        L33:
            r9 = 0
        L34:
            if (r9 != 0) goto L4d
            boolean r9 = r7.m8630class(r0)     // Catch: java.lang.Throwable -> L73
            if (r9 == 0) goto L4d
            int r9 = r7.m8638this(r0, r0)     // Catch: java.lang.Throwable -> L73
            if (r9 == 0) goto L4d
            android.content.Context r10 = r6.getContext()     // Catch: java.lang.Throwable -> L73
            android.graphics.drawable.Drawable r9 = defpackage.C3645ro.m7997extends(r10, r9)     // Catch: java.lang.Throwable -> L73
            r6.setButtonDrawable(r9)     // Catch: java.lang.Throwable -> L73
        L4d:
            r9 = 2
            boolean r10 = r7.m8630class(r9)     // Catch: java.lang.Throwable -> L73
            if (r10 == 0) goto L5b
            android.content.res.ColorStateList r9 = r7.m8636if(r9)     // Catch: java.lang.Throwable -> L73
            defpackage.C3844v9.Cdo.m8436for(r6, r9)     // Catch: java.lang.Throwable -> L73
        L5b:
            r9 = 3
            boolean r10 = r7.m8630class(r9)     // Catch: java.lang.Throwable -> L73
            if (r10 == 0) goto L6f
            r10 = -1
            int r9 = r7.m8635goto(r9, r10)     // Catch: java.lang.Throwable -> L73
            r10 = 0
            android.graphics.PorterDuff$Mode r9 = defpackage.C0470Re.m2062for(r9, r10)     // Catch: java.lang.Throwable -> L73
            defpackage.C3844v9.Cdo.m8438new(r6, r9)     // Catch: java.lang.Throwable -> L73
        L6f:
            r7.m8633final()
            return
        L73:
            r9 = move-exception
            r7.m8633final()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C4013y1.m8697if(android.util.AttributeSet, int):void");
    }
}

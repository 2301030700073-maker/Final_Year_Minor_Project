package b.b.g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

/* loaded from: classes.dex */
public class B {

    /* renamed from: a, reason: collision with root package name */
    public final CompoundButton f425a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f426b = null;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f427c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f428d = false;
    public boolean e = false;
    public boolean f;

    public B(CompoundButton compoundButton) {
        this.f425a = compoundButton;
    }

    public void a() {
        Drawable buttonDrawable = this.f425a.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.f428d || this.e) {
                Drawable mutate = buttonDrawable.mutate();
                if (this.f428d) {
                    mutate.setTintList(this.f426b);
                }
                if (this.e) {
                    mutate.setTintMode(this.f427c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f425a.getDrawableState());
                }
                this.f425a.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005d A[Catch: all -> 0x0067, TryCatch #1 {all -> 0x0067, blocks: (B:3:0x001c, B:5:0x0022, B:8:0x0028, B:10:0x003b, B:12:0x0041, B:14:0x0047, B:15:0x0056, B:17:0x005d, B:18:0x0069, B:20:0x0070), top: B:2:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0070 A[Catch: all -> 0x0067, TRY_LEAVE, TryCatch #1 {all -> 0x0067, blocks: (B:3:0x001c, B:5:0x0022, B:8:0x0028, B:10:0x003b, B:12:0x0041, B:14:0x0047, B:15:0x0056, B:17:0x005d, B:18:0x0069, B:20:0x0070), top: B:2:0x001c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(android.util.AttributeSet r10, int r11) {
        /*
            r9 = this;
            int[] r2 = b.b.b.l
            android.widget.CompoundButton r0 = r9.f425a
            android.content.Context r0 = r0.getContext()
            r7 = 0
            b.b.g.a1 r8 = b.b.g.a1.o(r0, r10, r2, r11, r7)
            android.widget.CompoundButton r0 = r9.f425a
            android.content.Context r1 = r0.getContext()
            android.content.res.TypedArray r4 = r8.f513b
            r6 = 0
            r3 = r10
            r5 = r11
            b.e.i.q.C(r0, r1, r2, r3, r4, r5, r6)
            r10 = 1
            boolean r11 = r8.m(r10)     // Catch: java.lang.Throwable -> L67
            if (r11 == 0) goto L38
            int r11 = r8.j(r10, r7)     // Catch: java.lang.Throwable -> L67
            if (r11 == 0) goto L38
            android.widget.CompoundButton r0 = r9.f425a     // Catch: android.content.res.Resources.NotFoundException -> L38 java.lang.Throwable -> L67
            android.widget.CompoundButton r1 = r9.f425a     // Catch: android.content.res.Resources.NotFoundException -> L38 java.lang.Throwable -> L67
            android.content.Context r1 = r1.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L38 java.lang.Throwable -> L67
            android.graphics.drawable.Drawable r11 = b.b.a.a(r1, r11)     // Catch: android.content.res.Resources.NotFoundException -> L38 java.lang.Throwable -> L67
            r0.setButtonDrawable(r11)     // Catch: android.content.res.Resources.NotFoundException -> L38 java.lang.Throwable -> L67
            goto L39
        L38:
            r10 = r7
        L39:
            if (r10 != 0) goto L56
            boolean r10 = r8.m(r7)     // Catch: java.lang.Throwable -> L67
            if (r10 == 0) goto L56
            int r10 = r8.j(r7, r7)     // Catch: java.lang.Throwable -> L67
            if (r10 == 0) goto L56
            android.widget.CompoundButton r11 = r9.f425a     // Catch: java.lang.Throwable -> L67
            android.widget.CompoundButton r0 = r9.f425a     // Catch: java.lang.Throwable -> L67
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L67
            android.graphics.drawable.Drawable r10 = b.b.a.a(r0, r10)     // Catch: java.lang.Throwable -> L67
            r11.setButtonDrawable(r10)     // Catch: java.lang.Throwable -> L67
        L56:
            r10 = 2
            boolean r11 = r8.m(r10)     // Catch: java.lang.Throwable -> L67
            if (r11 == 0) goto L69
            android.widget.CompoundButton r11 = r9.f425a     // Catch: java.lang.Throwable -> L67
            android.content.res.ColorStateList r10 = r8.b(r10)     // Catch: java.lang.Throwable -> L67
            r11.setButtonTintList(r10)     // Catch: java.lang.Throwable -> L67
            goto L69
        L67:
            r9 = move-exception
            goto L85
        L69:
            r10 = 3
            boolean r11 = r8.m(r10)     // Catch: java.lang.Throwable -> L67
            if (r11 == 0) goto L7f
            android.widget.CompoundButton r9 = r9.f425a     // Catch: java.lang.Throwable -> L67
            r11 = -1
            int r10 = r8.h(r10, r11)     // Catch: java.lang.Throwable -> L67
            r11 = 0
            android.graphics.PorterDuff$Mode r10 = b.b.g.C0055j0.d(r10, r11)     // Catch: java.lang.Throwable -> L67
            r9.setButtonTintMode(r10)     // Catch: java.lang.Throwable -> L67
        L7f:
            android.content.res.TypedArray r9 = r8.f513b
            r9.recycle()
            return
        L85:
            android.content.res.TypedArray r10 = r8.f513b
            r10.recycle()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.B.b(android.util.AttributeSet, int):void");
    }
}

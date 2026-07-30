package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import defpackage.C0426Pe;
import defpackage.C2799gF;

/* renamed from: Qe, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0448Qe extends Drawable implements Drawable.Callback {

    /* renamed from: try, reason: not valid java name */
    public static final /* synthetic */ int f2979try = 0;

    /* renamed from: do, reason: not valid java name */
    public long f2980do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f2981do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f2982do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f2983do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Rect f2984do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f2985do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2986do;

    /* renamed from: if, reason: not valid java name */
    public long f2988if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Drawable f2989if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f2990if;

    /* renamed from: for, reason: not valid java name */
    public int f2987for = 255;

    /* renamed from: new, reason: not valid java name */
    public int f2991new = -1;

    /* renamed from: Qe$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ C0448Qe f2992do;

        public Cdo(C2799gF c2799gF) {
            this.f2992do = c2799gF;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0448Qe c0448Qe = this.f2992do;
            c0448Qe.m1976do(true);
            c0448Qe.invalidateSelf();
        }
    }

    /* renamed from: Qe$for, reason: invalid class name */
    public static abstract class Cfor extends Drawable.ConstantState {

        /* renamed from: break, reason: not valid java name */
        public int f2993break;

        /* renamed from: break, reason: not valid java name and collision with other field name */
        public boolean f2994break;

        /* renamed from: case, reason: not valid java name */
        public int f2995case;

        /* renamed from: case, reason: not valid java name and collision with other field name */
        public boolean f2996case;

        /* renamed from: catch, reason: not valid java name */
        public int f2997catch;

        /* renamed from: catch, reason: not valid java name and collision with other field name */
        public boolean f2998catch;

        /* renamed from: class, reason: not valid java name */
        public int f2999class;

        /* renamed from: class, reason: not valid java name and collision with other field name */
        public boolean f3000class;

        /* renamed from: const, reason: not valid java name */
        public boolean f3001const;

        /* renamed from: do, reason: not valid java name */
        public int f3002do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C0448Qe f3003do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ColorStateList f3004do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Resources f3005do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ColorFilter f3006do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public PorterDuff.Mode f3007do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Rect f3008do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public SparseArray<Drawable.ConstantState> f3009do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f3010do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Drawable[] f3011do;

        /* renamed from: else, reason: not valid java name */
        public int f3012else;

        /* renamed from: else, reason: not valid java name and collision with other field name */
        public boolean f3013else;

        /* renamed from: for, reason: not valid java name */
        public int f3014for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f3015for;

        /* renamed from: goto, reason: not valid java name */
        public int f3016goto;

        /* renamed from: goto, reason: not valid java name and collision with other field name */
        public boolean f3017goto;

        /* renamed from: if, reason: not valid java name */
        public int f3018if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f3019if;

        /* renamed from: new, reason: not valid java name */
        public int f3020new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public boolean f3021new;

        /* renamed from: this, reason: not valid java name */
        public int f3022this;

        /* renamed from: this, reason: not valid java name and collision with other field name */
        public boolean f3023this;

        /* renamed from: try, reason: not valid java name */
        public int f3024try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public boolean f3025try;

        public Cfor(Cfor cfor, C0448Qe c0448Qe, Resources resources) {
            this.f3010do = false;
            this.f3015for = false;
            this.f3023this = true;
            this.f2997catch = 0;
            this.f2999class = 0;
            this.f3003do = c0448Qe;
            this.f3005do = resources != null ? resources : cfor != null ? cfor.f3005do : null;
            int i = cfor != null ? cfor.f3002do : 0;
            int i2 = C0448Qe.f2979try;
            i = resources != null ? resources.getDisplayMetrics().densityDpi : i;
            i = i == 0 ? 160 : i;
            this.f3002do = i;
            if (cfor == null) {
                this.f3011do = new Drawable[10];
                this.f3020new = 0;
                return;
            }
            this.f3018if = cfor.f3018if;
            this.f3014for = cfor.f3014for;
            this.f3013else = true;
            this.f3017goto = true;
            this.f3010do = cfor.f3010do;
            this.f3015for = cfor.f3015for;
            this.f3023this = cfor.f3023this;
            this.f2993break = cfor.f2993break;
            this.f2997catch = cfor.f2997catch;
            this.f2999class = cfor.f2999class;
            this.f2994break = cfor.f2994break;
            this.f3006do = cfor.f3006do;
            this.f2998catch = cfor.f2998catch;
            this.f3004do = cfor.f3004do;
            this.f3007do = cfor.f3007do;
            this.f3000class = cfor.f3000class;
            this.f3001const = cfor.f3001const;
            if (cfor.f3002do == i) {
                if (cfor.f3019if) {
                    this.f3008do = cfor.f3008do != null ? new Rect(cfor.f3008do) : null;
                    this.f3019if = true;
                }
                if (cfor.f3021new) {
                    this.f3024try = cfor.f3024try;
                    this.f2995case = cfor.f2995case;
                    this.f3012else = cfor.f3012else;
                    this.f3016goto = cfor.f3016goto;
                    this.f3021new = true;
                }
            }
            if (cfor.f3025try) {
                this.f3022this = cfor.f3022this;
                this.f3025try = true;
            }
            if (cfor.f2996case) {
                this.f2996case = true;
            }
            Drawable[] drawableArr = cfor.f3011do;
            this.f3011do = new Drawable[drawableArr.length];
            this.f3020new = cfor.f3020new;
            SparseArray<Drawable.ConstantState> sparseArray = cfor.f3009do;
            if (sparseArray != null) {
                this.f3009do = sparseArray.clone();
            } else {
                this.f3009do = new SparseArray<>(this.f3020new);
            }
            int i3 = this.f3020new;
            for (int i4 = 0; i4 < i3; i4++) {
                Drawable drawable = drawableArr[i4];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.f3009do.put(i4, constantState);
                    } else {
                        this.f3011do[i4] = drawableArr[i4];
                    }
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            int i = this.f3020new;
            Drawable[] drawableArr = this.f3011do;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f3009do.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (C0426Pe.Cdo.m1788if(drawable)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public final int m1981do(Drawable drawable) {
            int i = this.f3020new;
            if (i >= this.f3011do.length) {
                int i2 = i + 10;
                C2799gF.Cdo cdo = (C2799gF.Cdo) this;
                Drawable[] drawableArr = new Drawable[i2];
                Drawable[] drawableArr2 = ((Cfor) cdo).f3011do;
                if (drawableArr2 != null) {
                    System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
                }
                ((Cfor) cdo).f3011do = drawableArr;
                int[][] iArr = new int[i2][];
                System.arraycopy(cdo.f13083do, 0, iArr, 0, i);
                cdo.f13083do = iArr;
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f3003do);
            this.f3011do[i] = drawable;
            this.f3020new++;
            this.f3014for = drawable.getChangingConfigurations() | this.f3014for;
            this.f3025try = false;
            this.f2996case = false;
            this.f3008do = null;
            this.f3019if = false;
            this.f3021new = false;
            this.f3013else = false;
            return i;
        }

        /* renamed from: for, reason: not valid java name */
        public final void m1982for() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f3009do;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = this.f3009do.keyAt(i);
                    Drawable.ConstantState valueAt = this.f3009do.valueAt(i);
                    Drawable[] drawableArr = this.f3011do;
                    Drawable newDrawable = valueAt.newDrawable(this.f3005do);
                    if (Build.VERSION.SDK_INT >= 23) {
                        C0426Pe.m1778for(newDrawable, this.f2993break);
                    }
                    Drawable mutate = newDrawable.mutate();
                    mutate.setCallback(this.f3003do);
                    drawableArr[keyAt] = mutate;
                }
                this.f3009do = null;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f3018if | this.f3014for;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m1983if() {
            this.f3021new = true;
            m1982for();
            int i = this.f3020new;
            Drawable[] drawableArr = this.f3011do;
            this.f2995case = -1;
            this.f3024try = -1;
            this.f3016goto = 0;
            this.f3012else = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f3024try) {
                    this.f3024try = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f2995case) {
                    this.f2995case = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f3012else) {
                    this.f3012else = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f3016goto) {
                    this.f3016goto = minimumHeight;
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        public final Drawable m1984new(int i) {
            int indexOfKey;
            Drawable drawable = this.f3011do[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f3009do;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable newDrawable = this.f3009do.valueAt(indexOfKey).newDrawable(this.f3005do);
            if (Build.VERSION.SDK_INT >= 23) {
                C0426Pe.m1778for(newDrawable, this.f2993break);
            }
            Drawable mutate = newDrawable.mutate();
            mutate.setCallback(this.f3003do);
            this.f3011do[i] = mutate;
            this.f3009do.removeAt(indexOfKey);
            if (this.f3009do.size() == 0) {
                this.f3009do = null;
            }
            return mutate;
        }

        /* renamed from: try, reason: not valid java name */
        public abstract void mo1985try();
    }

    /* renamed from: Qe$if, reason: invalid class name */
    public static class Cif implements Drawable.Callback {

        /* renamed from: do, reason: not valid java name */
        public Drawable.Callback f3026do;

        @Override // android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.f3026do;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f3026do;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Cfor cfor = this.f2982do;
        if (theme == null) {
            cfor.getClass();
            return;
        }
        cfor.m1982for();
        int i = cfor.f3020new;
        Drawable[] drawableArr = cfor.f3011do;
        for (int i2 = 0; i2 < i; i2++) {
            Drawable drawable = drawableArr[i2];
            if (drawable != null && C0426Pe.Cdo.m1788if(drawable)) {
                C0426Pe.Cdo.m1784do(drawableArr[i2], theme);
                cfor.f3014for |= drawableArr[i2].getChangingConfigurations();
            }
        }
        Resources resources = theme.getResources();
        if (resources != null) {
            cfor.f3005do = resources;
            int i3 = resources.getDisplayMetrics().densityDpi;
            if (i3 == 0) {
                i3 = 160;
            }
            int i4 = cfor.f3002do;
            cfor.f3002do = i3;
            if (i4 != i3) {
                cfor.f3021new = false;
                cfor.f3019if = false;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.f2982do.canApplyTheme();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0065  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1976do(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f2986do = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f2985do
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r8 = 0
            if (r3 == 0) goto L38
            long r9 = r13.f2980do
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 == 0) goto L3a
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f2987for
            r3.setAlpha(r9)
            r13.f2980do = r6
            goto L3a
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r10 = (int) r9
            Qe$for r9 = r13.f2982do
            int r9 = r9.f2997catch
            int r10 = r10 / r9
            int r9 = 255 - r10
            int r10 = r13.f2987for
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = 1
            goto L3b
        L38:
            r13.f2980do = r6
        L3a:
            r3 = 0
        L3b:
            android.graphics.drawable.Drawable r9 = r13.f2989if
            if (r9 == 0) goto L65
            long r10 = r13.f2988if
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 == 0) goto L67
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L52
            r9.setVisible(r8, r8)
            r0 = 0
            r13.f2989if = r0
            r13.f2988if = r6
            goto L67
        L52:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            Qe$for r4 = r13.f2982do
            int r4 = r4.f2999class
            int r3 = r3 / r4
            int r4 = r13.f2987for
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L68
        L65:
            r13.f2988if = r6
        L67:
            r0 = r3
        L68:
            if (r14 == 0) goto L74
            if (r0 == 0) goto L74
            Qe$do r14 = r13.f2981do
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0448Qe.m1976do(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f2985do;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f2989if;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1977for(Drawable drawable) {
        if (this.f2983do == null) {
            this.f2983do = new Cif();
        }
        Cif cif = this.f2983do;
        cif.f3026do = drawable.getCallback();
        drawable.setCallback(cif);
        try {
            if (this.f2982do.f2997catch <= 0 && this.f2986do) {
                drawable.setAlpha(this.f2987for);
            }
            Cfor cfor = this.f2982do;
            if (cfor.f2998catch) {
                drawable.setColorFilter(cfor.f3006do);
            } else {
                if (cfor.f3000class) {
                    C0426Pe.Cdo.m1787goto(drawable, cfor.f3004do);
                }
                Cfor cfor2 = this.f2982do;
                if (cfor2.f3001const) {
                    C0426Pe.Cdo.m1790this(drawable, cfor2.f3007do);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f2982do.f3023this);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                C0426Pe.m1778for(drawable, C0426Pe.m1780if(this));
            }
            drawable.setAutoMirrored(this.f2982do.f2994break);
            Rect rect = this.f2984do;
            if (rect != null) {
                C0426Pe.Cdo.m1783case(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            Cif cif2 = this.f2983do;
            Drawable.Callback callback = cif2.f3026do;
            cif2.f3026do = null;
            drawable.setCallback(callback);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f2987for;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        Cfor cfor = this.f2982do;
        return changingConfigurations | cfor.f3014for | cfor.f3018if;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        boolean z;
        Cfor cfor = this.f2982do;
        if (!cfor.f3013else) {
            cfor.m1982for();
            cfor.f3013else = true;
            int i = cfor.f3020new;
            Drawable[] drawableArr = cfor.f3011do;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    cfor.f3017goto = true;
                    z = true;
                    break;
                }
                if (drawableArr[i2].getConstantState() == null) {
                    cfor.f3017goto = false;
                    z = false;
                    break;
                }
                i2++;
            }
        } else {
            z = cfor.f3017goto;
        }
        if (!z) {
            return null;
        }
        this.f2982do.f3018if = getChangingConfigurations();
        return this.f2982do;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f2985do;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f2984do;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Cfor cfor = this.f2982do;
        if (cfor.f3015for) {
            if (!cfor.f3021new) {
                cfor.m1983if();
            }
            return cfor.f2995case;
        }
        Drawable drawable = this.f2985do;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Cfor cfor = this.f2982do;
        if (cfor.f3015for) {
            if (!cfor.f3021new) {
                cfor.m1983if();
            }
            return cfor.f3024try;
        }
        Drawable drawable = this.f2985do;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        Cfor cfor = this.f2982do;
        if (cfor.f3015for) {
            if (!cfor.f3021new) {
                cfor.m1983if();
            }
            return cfor.f3016goto;
        }
        Drawable drawable = this.f2985do;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        Cfor cfor = this.f2982do;
        if (cfor.f3015for) {
            if (!cfor.f3021new) {
                cfor.m1983if();
            }
            return cfor.f3012else;
        }
        Drawable drawable = this.f2985do;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f2985do;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        Cfor cfor = this.f2982do;
        if (cfor.f3025try) {
            return cfor.f3022this;
        }
        cfor.m1982for();
        int i = cfor.f3020new;
        Drawable[] drawableArr = cfor.f3011do;
        int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
        for (int i2 = 1; i2 < i; i2++) {
            opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
        }
        cfor.f3022this = opacity;
        cfor.f3025try = true;
        return opacity;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.f2985do;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        boolean padding;
        Cfor cfor = this.f2982do;
        Rect rect2 = null;
        if (!cfor.f3010do) {
            Rect rect3 = cfor.f3008do;
            if (rect3 != null || cfor.f3019if) {
                rect2 = rect3;
            } else {
                cfor.m1982for();
                Rect rect4 = new Rect();
                int i = cfor.f3020new;
                Drawable[] drawableArr = cfor.f3011do;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i3 = rect4.left;
                        if (i3 > rect2.left) {
                            rect2.left = i3;
                        }
                        int i4 = rect4.top;
                        if (i4 > rect2.top) {
                            rect2.top = i4;
                        }
                        int i5 = rect4.right;
                        if (i5 > rect2.right) {
                            rect2.right = i5;
                        }
                        int i6 = rect4.bottom;
                        if (i6 > rect2.bottom) {
                            rect2.bottom = i6;
                        }
                    }
                }
                cfor.f3019if = true;
                cfor.f3008do = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            padding = (((rect2.left | rect2.top) | rect2.bottom) | rect2.right) != 0;
        } else {
            Drawable drawable = this.f2985do;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.f2982do.f2994break && C0426Pe.m1780if(this) == 1) {
            int i7 = rect.left;
            rect.left = rect.right;
            rect.right = i7;
        }
        return padding;
    }

    /* renamed from: if, reason: not valid java name */
    public Cfor mo1978if() {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Cfor cfor = this.f2982do;
        if (cfor != null) {
            cfor.f3025try = false;
            cfor.f2996case = false;
        }
        if (drawable != this.f2985do || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f2982do.f2994break;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f2989if;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f2989if = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f2985do;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f2986do) {
                this.f2985do.setAlpha(this.f2987for);
            }
        }
        if (this.f2988if != 0) {
            this.f2988if = 0L;
            z = true;
        }
        if (this.f2980do != 0) {
            this.f2980do = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f2990if && super.mutate() == this) {
            Cfor mo1978if = mo1978if();
            mo1978if.mo1985try();
            mo1980try(mo1978if);
            this.f2990if = true;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1979new(int r10) {
        /*
            r9 = this;
            int r0 = r9.f2991new
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            Qe$for r0 = r9.f2982do
            int r0 = r0.f2999class
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f2989if
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f2985do
            if (r0 == 0) goto L29
            r9.f2989if = r0
            Qe$for r0 = r9.f2982do
            int r0 = r0.f2999class
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.f2988if = r0
            goto L35
        L29:
            r9.f2989if = r4
            r9.f2988if = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f2985do
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            Qe$for r0 = r9.f2982do
            int r1 = r0.f3020new
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.m1984new(r10)
            r9.f2985do = r0
            r9.f2991new = r10
            if (r0 == 0) goto L5a
            Qe$for r10 = r9.f2982do
            int r10 = r10.f2997catch
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f2980do = r2
        L51:
            r9.m1977for(r0)
            goto L5a
        L55:
            r9.f2985do = r4
            r10 = -1
            r9.f2991new = r10
        L5a:
            long r0 = r9.f2980do
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.f2988if
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L7c
        L67:
            Qe$do r0 = r9.f2981do
            if (r0 != 0) goto L76
            Qe$do r0 = new Qe$do
            r1 = r9
            gF r1 = (defpackage.C2799gF) r1
            r0.<init>(r1)
            r9.f2981do = r0
            goto L79
        L76:
            r9.unscheduleSelf(r0)
        L79:
            r9.m1976do(r10)
        L7c:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0448Qe.m1979new(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2989if;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f2985do;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        Cfor cfor = this.f2982do;
        int i2 = this.f2991new;
        int i3 = cfor.f3020new;
        Drawable[] drawableArr = cfor.f3011do;
        boolean z = false;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                boolean m1778for = Build.VERSION.SDK_INT >= 23 ? C0426Pe.m1778for(drawable, i) : false;
                if (i4 == i2) {
                    z = m1778for;
                }
            }
        }
        cfor.f2993break = i;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.f2989if;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f2985do;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f2989if;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f2985do;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f2985do || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f2986do && this.f2987for == i) {
            return;
        }
        this.f2986do = true;
        this.f2987for = i;
        Drawable drawable = this.f2985do;
        if (drawable != null) {
            if (this.f2980do == 0) {
                drawable.setAlpha(i);
            } else {
                m1976do(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Cfor cfor = this.f2982do;
        if (cfor.f2994break != z) {
            cfor.f2994break = z;
            Drawable drawable = this.f2985do;
            if (drawable != null) {
                drawable.setAutoMirrored(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Cfor cfor = this.f2982do;
        cfor.f2998catch = true;
        if (cfor.f3006do != colorFilter) {
            cfor.f3006do = colorFilter;
            Drawable drawable = this.f2985do;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        Cfor cfor = this.f2982do;
        if (cfor.f3023this != z) {
            cfor.f3023this = z;
            Drawable drawable = this.f2985do;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        Drawable drawable = this.f2985do;
        if (drawable != null) {
            C0426Pe.Cdo.m1791try(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f2984do;
        if (rect == null) {
            this.f2984do = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f2985do;
        if (drawable != null) {
            C0426Pe.Cdo.m1783case(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Cfor cfor = this.f2982do;
        cfor.f3000class = true;
        if (cfor.f3004do != colorStateList) {
            cfor.f3004do = colorStateList;
            C0426Pe.m1782try(this.f2985do, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Cfor cfor = this.f2982do;
        cfor.f3001const = true;
        if (cfor.f3007do != mode) {
            cfor.f3007do = mode;
            C0426Pe.m1775case(this.f2985do, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f2989if;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f2985do;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    /* renamed from: try, reason: not valid java name */
    public void mo1980try(Cfor cfor) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f2985do || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}

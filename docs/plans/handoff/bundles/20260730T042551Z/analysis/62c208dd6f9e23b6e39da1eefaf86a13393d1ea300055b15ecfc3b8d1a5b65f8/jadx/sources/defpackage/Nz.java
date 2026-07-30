package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import defpackage.K1;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class Nz {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Nz f2455do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ME<String> f2457do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f2458do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TypedValue f2459do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2680eE<String, Ctry> f2460do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WeakHashMap<Context, ME<ColorStateList>> f2461do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2462do;

    /* renamed from: if, reason: not valid java name */
    public final WeakHashMap<Context, C3354mr<WeakReference<Drawable.ConstantState>>> f2463if = new WeakHashMap<>(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final PorterDuff.Mode f2456do = PorterDuff.Mode.SRC_IN;

    /* renamed from: do, reason: not valid java name */
    public static final Cfor f2454do = new Cfor();

    /* renamed from: Nz$case, reason: invalid class name */
    public interface Ccase {
    }

    /* renamed from: Nz$do, reason: invalid class name */
    public static class Cdo implements Ctry {
        @Override // defpackage.Nz.Ctry
        /* renamed from: do, reason: not valid java name */
        public final Drawable mo1573do(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return C0726b1.m4803else(context, theme, context.getResources(), attributeSet, xmlResourceParser);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* renamed from: Nz$else, reason: invalid class name */
    public static class Celse implements Ctry {
        @Override // defpackage.Nz.Ctry
        /* renamed from: do */
        public final Drawable mo1573do(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                C2804gK c2804gK = new C2804gK();
                c2804gK.inflate(resources, xmlResourceParser, attributeSet, theme);
                return c2804gK;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* renamed from: Nz$for, reason: invalid class name */
    public static class Cfor extends C3472or<Integer, PorterDuffColorFilter> {
        public Cfor() {
            super(6);
        }
    }

    /* renamed from: Nz$if, reason: invalid class name */
    public static class Cif implements Ctry {
        @Override // defpackage.Nz.Ctry
        /* renamed from: do */
        public final Drawable mo1573do(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                C0785c1 c0785c1 = new C0785c1(context);
                c0785c1.inflate(resources, xmlResourceParser, attributeSet, theme);
                return c0785c1;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* renamed from: Nz$new, reason: invalid class name */
    public static class Cnew implements Ctry {
        @Override // defpackage.Nz.Ctry
        /* renamed from: do */
        public final Drawable mo1573do(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute == null) {
                return null;
            }
            try {
                Drawable drawable = (Drawable) Cnew.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                P8.m1750for(drawable, context.getResources(), xmlResourceParser, attributeSet, theme);
                return drawable;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* renamed from: Nz$try, reason: invalid class name */
    public interface Ctry {
        /* renamed from: do */
        Drawable mo1573do(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* renamed from: break, reason: not valid java name */
    public static void m1560break(Nz nz) {
        if (Build.VERSION.SDK_INT < 24) {
            nz.m1567do("vector", new Celse());
            nz.m1567do("animated-vector", new Cif());
            nz.m1567do("animated-selector", new Cdo());
            nz.m1567do("drawable", new Cnew());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static synchronized PorterDuffColorFilter m1561goto(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (Nz.class) {
            Cfor cfor = f2454do;
            cfor.getClass();
            int i2 = (i + 31) * 31;
            porterDuffColorFilter = cfor.get(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                cfor.put(Integer.valueOf(mode.hashCode() + i2), porterDuffColorFilter);
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: new, reason: not valid java name */
    public static synchronized Nz m1562new() {
        Nz nz;
        synchronized (Nz.class) {
            if (f2455do == null) {
                Nz nz2 = new Nz();
                f2455do = nz2;
                m1560break(nz2);
            }
            nz = f2455do;
        }
        return nz;
    }

    /* renamed from: case, reason: not valid java name */
    public final synchronized Drawable m1563case(Context context, int i) {
        return m1568else(context, i, false);
    }

    /* renamed from: catch, reason: not valid java name */
    public final synchronized void m1564catch(Context context) {
        C3354mr<WeakReference<Drawable.ConstantState>> c3354mr = this.f2463if.get(context);
        if (c3354mr != null) {
            c3354mr.m7471if();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final synchronized void m1565class(K1.Cdo cdo) {
        this.f2458do = cdo;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004f  */
    /* renamed from: const, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1566const(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
        /*
            r6 = this;
            Nz$case r0 = r6.f2458do
            r1 = 0
            if (r0 == 0) goto L6b
            K1$do r0 = (defpackage.K1.Cdo) r0
            android.graphics.PorterDuff$Mode r2 = defpackage.K1.f1740do
            int[] r3 = r0.f1743do
            boolean r3 = defpackage.K1.Cdo.m1106do(r8, r3)
            r4 = 1
            r5 = -1
            if (r3 == 0) goto L17
            r8 = 2130903289(0x7f0300f9, float:1.7413392E38)
            goto L46
        L17:
            int[] r3 = r0.f1744for
            boolean r3 = defpackage.K1.Cdo.m1106do(r8, r3)
            if (r3 == 0) goto L23
            r8 = 2130903287(0x7f0300f7, float:1.7413388E38)
            goto L46
        L23:
            int[] r0 = r0.f1746new
            boolean r0 = defpackage.K1.Cdo.m1106do(r8, r0)
            if (r0 == 0) goto L2e
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L43
        L2e:
            r0 = 2131165267(0x7f070053, float:1.7944746E38)
            if (r8 != r0) goto L3e
            r8 = 1109603123(0x42233333, float:40.8)
            int r8 = java.lang.Math.round(r8)
            r0 = 16842800(0x1010030, float:2.3693693E-38)
            goto L48
        L3e:
            r0 = 2131165249(0x7f070041, float:1.794471E38)
            if (r8 != r0) goto L4a
        L43:
            r8 = 16842801(0x1010031, float:2.3693695E-38)
        L46:
            r0 = r8
            r8 = -1
        L48:
            r3 = 1
            goto L4d
        L4a:
            r8 = -1
            r0 = 0
            r3 = 0
        L4d:
            if (r3 == 0) goto L67
            int[] r3 = defpackage.C0470Re.f3209do
            android.graphics.drawable.Drawable r9 = r9.mutate()
            int r7 = defpackage.C0742bH.m4823for(r7, r0)
            android.graphics.PorterDuffColorFilter r7 = defpackage.K1.m1102for(r7, r2)
            r9.setColorFilter(r7)
            if (r8 == r5) goto L65
            r9.setAlpha(r8)
        L65:
            r7 = 1
            goto L68
        L67:
            r7 = 0
        L68:
            if (r7 == 0) goto L6b
            r1 = 1
        L6b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Nz.m1566const(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1567do(String str, Ctry ctry) {
        if (this.f2460do == null) {
            this.f2460do = new C2680eE<>();
        }
        this.f2460do.put(str, ctry);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0111, code lost:
    
        defpackage.C0426Pe.Cdo.m1790this(r13, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x002b, code lost:
    
        if (((r0 instanceof defpackage.C2804gK) || "android.graphics.drawable.VectorDrawable".equals(r0.getClass().getName())) == false) goto L99;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e4 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:6:0x002d, B:8:0x0032, B:10:0x0038, B:12:0x003e, B:15:0x004c, B:18:0x005d, B:20:0x0061, B:21:0x0068, B:25:0x00e4, B:27:0x00ea, B:29:0x00f0, B:31:0x00f6, B:35:0x0111, B:40:0x010d, B:41:0x0117, B:45:0x012e, B:56:0x0164, B:57:0x018e, B:62:0x019b, B:66:0x0082, B:68:0x0086, B:71:0x0092, B:72:0x009a, B:78:0x00a6, B:80:0x00b9, B:82:0x00c3, B:83:0x00d1, B:84:0x00d8, B:88:0x00db, B:89:0x0056, B:91:0x0008, B:93:0x0013, B:95:0x0017, B:101:0x01a0, B:102:0x01a9), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ea A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:6:0x002d, B:8:0x0032, B:10:0x0038, B:12:0x003e, B:15:0x004c, B:18:0x005d, B:20:0x0061, B:21:0x0068, B:25:0x00e4, B:27:0x00ea, B:29:0x00f0, B:31:0x00f6, B:35:0x0111, B:40:0x010d, B:41:0x0117, B:45:0x012e, B:56:0x0164, B:57:0x018e, B:62:0x019b, B:66:0x0082, B:68:0x0086, B:71:0x0092, B:72:0x009a, B:78:0x00a6, B:80:0x00b9, B:82:0x00c3, B:83:0x00d1, B:84:0x00d8, B:88:0x00db, B:89:0x0056, B:91:0x0008, B:93:0x0013, B:95:0x0017, B:101:0x01a0, B:102:0x01a9), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f0 A[Catch: all -> 0x00cc, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:6:0x002d, B:8:0x0032, B:10:0x0038, B:12:0x003e, B:15:0x004c, B:18:0x005d, B:20:0x0061, B:21:0x0068, B:25:0x00e4, B:27:0x00ea, B:29:0x00f0, B:31:0x00f6, B:35:0x0111, B:40:0x010d, B:41:0x0117, B:45:0x012e, B:56:0x0164, B:57:0x018e, B:62:0x019b, B:66:0x0082, B:68:0x0086, B:71:0x0092, B:72:0x009a, B:78:0x00a6, B:80:0x00b9, B:82:0x00c3, B:83:0x00d1, B:84:0x00d8, B:88:0x00db, B:89:0x0056, B:91:0x0008, B:93:0x0013, B:95:0x0017, B:101:0x01a0, B:102:0x01a9), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x019b A[Catch: all -> 0x00cc, TRY_LEAVE, TryCatch #1 {all -> 0x00cc, blocks: (B:3:0x0001, B:6:0x002d, B:8:0x0032, B:10:0x0038, B:12:0x003e, B:15:0x004c, B:18:0x005d, B:20:0x0061, B:21:0x0068, B:25:0x00e4, B:27:0x00ea, B:29:0x00f0, B:31:0x00f6, B:35:0x0111, B:40:0x010d, B:41:0x0117, B:45:0x012e, B:56:0x0164, B:57:0x018e, B:62:0x019b, B:66:0x0082, B:68:0x0086, B:71:0x0092, B:72:0x009a, B:78:0x00a6, B:80:0x00b9, B:82:0x00c3, B:83:0x00d1, B:84:0x00d8, B:88:0x00db, B:89:0x0056, B:91:0x0008, B:93:0x0013, B:95:0x0017, B:101:0x01a0, B:102:0x01a9), top: B:2:0x0001 }] */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized android.graphics.drawable.Drawable m1568else(android.content.Context r13, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Nz.m1568else(android.content.Context, int, boolean):android.graphics.drawable.Drawable");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0076  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable m1569for(android.content.Context r8, int r9) {
        /*
            r7 = this;
            android.util.TypedValue r0 = r7.f2459do
            if (r0 != 0) goto Lb
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            r7.f2459do = r0
        Lb:
            android.util.TypedValue r0 = r7.f2459do
            android.content.res.Resources r1 = r8.getResources()
            r2 = 1
            r1.getValue(r9, r0, r2)
            int r1 = r0.assetCookie
            long r3 = (long) r1
            r1 = 32
            long r3 = r3 << r1
            int r1 = r0.data
            long r5 = (long) r1
            long r3 = r3 | r5
            android.graphics.drawable.Drawable r1 = r7.m1572try(r8, r3)
            if (r1 == 0) goto L26
            return r1
        L26:
            Nz$case r1 = r7.f2458do
            if (r1 != 0) goto L2b
            goto L73
        L2b:
            r1 = 2131165246(0x7f07003e, float:1.7944704E38)
            if (r9 != r1) goto L4c
            android.graphics.drawable.LayerDrawable r9 = new android.graphics.drawable.LayerDrawable
            r1 = 2
            android.graphics.drawable.Drawable[] r1 = new android.graphics.drawable.Drawable[r1]
            r5 = 2131165245(0x7f07003d, float:1.7944702E38)
            android.graphics.drawable.Drawable r5 = r7.m1563case(r8, r5)
            r6 = 0
            r1[r6] = r5
            r5 = 2131165247(0x7f07003f, float:1.7944706E38)
            android.graphics.drawable.Drawable r5 = r7.m1563case(r8, r5)
            r1[r2] = r5
            r9.<init>(r1)
            goto L74
        L4c:
            r1 = 2131165281(0x7f070061, float:1.7944775E38)
            if (r9 != r1) goto L59
            r9 = 2131099707(0x7f06003b, float:1.7811775E38)
            android.graphics.drawable.LayerDrawable r9 = defpackage.K1.Cdo.m1107for(r7, r8, r9)
            goto L74
        L59:
            r1 = 2131165280(0x7f070060, float:1.7944773E38)
            if (r9 != r1) goto L66
            r9 = 2131099708(0x7f06003c, float:1.7811777E38)
            android.graphics.drawable.LayerDrawable r9 = defpackage.K1.Cdo.m1107for(r7, r8, r9)
            goto L74
        L66:
            r1 = 2131165282(0x7f070062, float:1.7944777E38)
            if (r9 != r1) goto L73
            r9 = 2131099709(0x7f06003d, float:1.7811779E38)
            android.graphics.drawable.LayerDrawable r9 = defpackage.K1.Cdo.m1107for(r7, r8, r9)
            goto L74
        L73:
            r9 = 0
        L74:
            if (r9 == 0) goto L7e
            int r0 = r0.changingConfigurations
            r9.setChangingConfigurations(r0)
            r7.m1570if(r8, r3, r9)
        L7e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Nz.m1569for(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized void m1570if(Context context, long j, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            C3354mr<WeakReference<Drawable.ConstantState>> c3354mr = this.f2463if.get(context);
            if (c3354mr == null) {
                c3354mr = new C3354mr<>();
                this.f2463if.put(context, c3354mr);
            }
            c3354mr.m7467case(j, new WeakReference<>(constantState));
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final synchronized ColorStateList m1571this(Context context, int i) {
        ColorStateList colorStateList;
        ME<ColorStateList> me;
        try {
            WeakHashMap<Context, ME<ColorStateList>> weakHashMap = this.f2461do;
            ColorStateList colorStateList2 = null;
            colorStateList = (weakHashMap == null || (me = weakHashMap.get(context)) == null) ? null : (ColorStateList) me.m1398for(i, null);
            if (colorStateList == null) {
                Ccase ccase = this.f2458do;
                if (ccase != null) {
                    colorStateList2 = ((K1.Cdo) ccase).m1110new(context, i);
                }
                if (colorStateList2 != null) {
                    if (this.f2461do == null) {
                        this.f2461do = new WeakHashMap<>();
                    }
                    ME<ColorStateList> me2 = this.f2461do.get(context);
                    if (me2 == null) {
                        me2 = new ME<>();
                        this.f2461do.put(context, me2);
                    }
                    me2.m1397do(i, colorStateList2);
                }
                colorStateList = colorStateList2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return colorStateList;
    }

    /* renamed from: try, reason: not valid java name */
    public final synchronized Drawable m1572try(Context context, long j) {
        C3354mr<WeakReference<Drawable.ConstantState>> c3354mr = this.f2463if.get(context);
        if (c3354mr == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) c3354mr.m7473try(j, null);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int m1155case = C0315Kc.m1155case(c3354mr.f14405do, c3354mr.f14407for, j);
            if (m1155case >= 0) {
                Object[] objArr = c3354mr.f14406do;
                Object obj = objArr[m1155case];
                Object obj2 = C3354mr.f14403do;
                if (obj != obj2) {
                    objArr[m1155case] = obj2;
                    c3354mr.f14404do = true;
                }
            }
        }
        return null;
    }
}

package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import com.android.systemui.shared.R;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class E0 {
    public static E0 i;

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap f439a;

    /* renamed from: b, reason: collision with root package name */
    public b.d.n f440b;

    /* renamed from: c, reason: collision with root package name */
    public b.d.o f441c;

    /* renamed from: d, reason: collision with root package name */
    public final WeakHashMap f442d = new WeakHashMap(0);
    public TypedValue e;
    public boolean f;
    public C g;
    public static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;
    public static final C0 j = new C0(6);

    public static synchronized E0 c() {
        E0 e0;
        synchronized (E0.class) {
            if (i == null) {
                i = new E0();
            }
            e0 = i;
        }
        return e0;
    }

    public static synchronized PorterDuffColorFilter g(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (E0.class) {
            C0 c0 = j;
            Objects.requireNonNull(c0);
            int i3 = (i2 + 31) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) c0.a(Integer.valueOf(mode.hashCode() + i3));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
                C0 c02 = j;
                Objects.requireNonNull(c02);
            }
        }
        return porterDuffColorFilter;
    }

    public static void k(Drawable drawable, Y0 y0, int[] iArr) {
        if (C0055j0.a(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (!y0.f500d && !y0.f499c) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilter = null;
        ColorStateList colorStateList = y0.f500d ? y0.f497a : null;
        PorterDuff.Mode mode = y0.f499c ? y0.f498b : h;
        if (colorStateList != null && mode != null) {
            porterDuffColorFilter = g(colorStateList.getColorForState(iArr, 0), mode);
        }
        drawable.setColorFilter(porterDuffColorFilter);
    }

    public final synchronized boolean a(Context context, long j2, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        b.d.l lVar = (b.d.l) this.f442d.get(context);
        if (lVar == null) {
            lVar = new b.d.l();
            this.f442d.put(context, lVar);
        }
        lVar.e(j2, new WeakReference(constantState));
        return true;
    }

    public final Drawable b(Context context, int i2) {
        if (this.e == null) {
            this.e = new TypedValue();
        }
        TypedValue typedValue = this.e;
        context.getResources().getValue(i2, typedValue, true);
        long j2 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable d2 = d(context, j2);
        if (d2 != null) {
            return d2;
        }
        LayerDrawable layerDrawable = null;
        if (this.g != null && i2 == R.drawable.abc_cab_background_top_material) {
            layerDrawable = new LayerDrawable(new Drawable[]{e(context, R.drawable.abc_cab_background_internal_bg), e(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, j2, layerDrawable);
        }
        return layerDrawable;
    }

    public final synchronized Drawable d(Context context, long j2) {
        b.d.l lVar = (b.d.l) this.f442d.get(context);
        if (lVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) lVar.d(j2, null);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int b2 = b.d.j.b(lVar.f646b, lVar.f648d, j2);
            if (b2 >= 0) {
                Object[] objArr = lVar.f647c;
                Object obj = objArr[b2];
                Object obj2 = b.d.l.e;
                Object obj3 = b.d.l.e;
                if (obj != obj3) {
                    objArr[b2] = obj3;
                    lVar.f645a = true;
                }
            }
        }
        return null;
    }

    public synchronized Drawable e(Context context, int i2) {
        return f(context, i2, false);
    }

    public synchronized Drawable f(Context context, int i2, boolean z) {
        Drawable i3;
        if (!this.f) {
            boolean z2 = true;
            this.f = true;
            Drawable e = e(context, R.drawable.abc_vector_test);
            if (e != null) {
                if (!(e instanceof b.o.a.a.b) && !"android.graphics.drawable.VectorDrawable".equals(e.getClass().getName())) {
                    z2 = false;
                }
            }
            this.f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
        i3 = i(context, i2);
        if (i3 == null) {
            i3 = b(context, i2);
        }
        if (i3 == null) {
            i3 = b.e.b.b.e(context, i2);
        }
        if (i3 != null) {
            i3 = j(context, i2, z, i3);
        }
        if (i3 != null) {
            C0055j0.b(i3);
        }
        return i3;
    }

    public synchronized ColorStateList h(Context context, int i2) {
        ColorStateList colorStateList;
        b.d.o oVar;
        WeakHashMap weakHashMap = this.f439a;
        ColorStateList colorStateList2 = null;
        colorStateList = (weakHashMap == null || (oVar = (b.d.o) weakHashMap.get(context)) == null) ? null : (ColorStateList) oVar.e(i2, null);
        if (colorStateList == null) {
            if (this.g != null) {
                colorStateList2 = this.g.c(context, i2);
            }
            if (colorStateList2 != null) {
                if (this.f439a == null) {
                    this.f439a = new WeakHashMap();
                }
                b.d.o oVar2 = (b.d.o) this.f439a.get(context);
                if (oVar2 == null) {
                    oVar2 = new b.d.o();
                    this.f439a.put(context, oVar2);
                }
                oVar2.a(i2, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    public final Drawable i(Context context, int i2) {
        int next;
        b.d.n nVar = this.f440b;
        if (nVar == null || nVar.isEmpty()) {
            return null;
        }
        b.d.o oVar = this.f441c;
        if (oVar != null) {
            String str = (String) oVar.e(i2, null);
            if ("appcompat_skip_skip".equals(str) || (str != null && this.f440b.getOrDefault(str, null) == null)) {
                return null;
            }
        } else {
            this.f441c = new b.d.o();
        }
        if (this.e == null) {
            this.e = new TypedValue();
        }
        TypedValue typedValue = this.e;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long j2 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable d2 = d(context, j2);
        if (d2 != null) {
            return d2;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i2);
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
                String name = xml.getName();
                this.f441c.a(i2, name);
                D0 d0 = (D0) this.f440b.get(name);
                if (d0 != null) {
                    d2 = d0.a(context, xml, asAttributeSet, context.getTheme());
                }
                if (d2 != null) {
                    d2.setChangingConfigurations(typedValue.changingConfigurations);
                    a(context, j2, d2);
                }
            } catch (Exception e) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
            }
        }
        if (d2 == null) {
            this.f441c.a(i2, "appcompat_skip_skip");
        }
        return d2;
    }

    public final Drawable j(Context context, int i2, boolean z, Drawable drawable) {
        ColorStateList h2 = h(context, i2);
        PorterDuff.Mode mode = null;
        if (h2 != null) {
            if (C0055j0.a(drawable)) {
                drawable = drawable.mutate();
            }
            drawable.setTintList(h2);
            if (this.g != null && i2 == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode == null) {
                return drawable;
            }
            drawable.setTintMode(mode);
            return drawable;
        }
        C c2 = this.g;
        if (c2 != null) {
            Objects.requireNonNull(c2);
            boolean z2 = true;
            if (i2 == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                c2.d(layerDrawable.findDrawableByLayerId(android.R.id.background), V0.c(context, R.attr.colorControlNormal), D.f433b);
                c2.d(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), V0.c(context, R.attr.colorControlNormal), D.f433b);
                c2.d(layerDrawable.findDrawableByLayerId(android.R.id.progress), V0.c(context, R.attr.colorControlActivated), D.f433b);
            } else if (i2 == R.drawable.abc_ratingbar_material || i2 == R.drawable.abc_ratingbar_indicator_material || i2 == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                c2.d(layerDrawable2.findDrawableByLayerId(android.R.id.background), V0.b(context, R.attr.colorControlNormal), D.f433b);
                c2.d(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), V0.c(context, R.attr.colorControlActivated), D.f433b);
                c2.d(layerDrawable2.findDrawableByLayerId(android.R.id.progress), V0.c(context, R.attr.colorControlActivated), D.f433b);
            } else {
                z2 = false;
            }
            if (z2) {
                return drawable;
            }
        }
        if (l(context, i2, drawable) || !z) {
            return drawable;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean l(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
        /*
            r6 = this;
            b.b.g.C r6 = r6.g
            r0 = 1
            r1 = 0
            if (r6 == 0) goto L77
            java.util.Objects.requireNonNull(r6)
            android.graphics.PorterDuff$Mode r2 = b.b.g.D.f433b
            int[] r3 = r6.f429a
            boolean r3 = r6.a(r3, r8)
            r4 = 16842801(0x1010031, float:2.3693695E-38)
            r5 = -1
            if (r3 == 0) goto L1b
            r4 = 2130968678(0x7f040066, float:1.7546016E38)
            goto L47
        L1b:
            int[] r3 = r6.f431c
            boolean r3 = r6.a(r3, r8)
            if (r3 == 0) goto L27
            r4 = 2130968676(0x7f040064, float:1.7546012E38)
            goto L47
        L27:
            int[] r3 = r6.f432d
            boolean r6 = r6.a(r3, r8)
            if (r6 == 0) goto L32
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L47
        L32:
            r6 = 2131231113(0x7f080189, float:1.8078298E38)
            if (r8 != r6) goto L42
            r6 = 16842800(0x1010030, float:2.3693693E-38)
            r8 = 1109603123(0x42233333, float:40.8)
            int r8 = java.lang.Math.round(r8)
            goto L49
        L42:
            r6 = 2131231089(0x7f080171, float:1.807825E38)
            if (r8 != r6) goto L4b
        L47:
            r6 = r4
            r8 = r5
        L49:
            r3 = r0
            goto L4e
        L4b:
            r6 = r1
            r3 = r6
            r8 = r5
        L4e:
            if (r3 == 0) goto L73
            boolean r3 = b.b.g.C0055j0.a(r9)
            if (r3 == 0) goto L5a
            android.graphics.drawable.Drawable r9 = r9.mutate()
        L5a:
            int r6 = b.b.g.V0.c(r7, r6)
            java.lang.Class<b.b.g.D> r7 = b.b.g.D.class
            monitor-enter(r7)
            android.graphics.PorterDuffColorFilter r6 = g(r6, r2)     // Catch: java.lang.Throwable -> L70
            monitor-exit(r7)
            r9.setColorFilter(r6)
            if (r8 == r5) goto L6e
            r9.setAlpha(r8)
        L6e:
            r6 = r0
            goto L74
        L70:
            r6 = move-exception
            monitor-exit(r7)
            throw r6
        L73:
            r6 = r1
        L74:
            if (r6 == 0) goto L77
            goto L78
        L77:
            r0 = r1
        L78:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.E0.l(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }
}

package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.joeykrim.rootcheck.R;

/* renamed from: Va, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0554Va extends ContextWrapper {

    /* renamed from: if, reason: not valid java name */
    public static Configuration f4139if;

    /* renamed from: do, reason: not valid java name */
    public int f4140do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Configuration f4141do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Resources.Theme f4142do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Resources f4143do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LayoutInflater f4144do;

    /* renamed from: Va$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static Context m2653do(C0554Va c0554Va, Configuration configuration) {
            return c0554Va.createConfigurationContext(configuration);
        }
    }

    public C0554Va() {
        super(null);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2651do(Configuration configuration) {
        if (this.f4143do != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f4141do != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f4141do = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (r0.equals(defpackage.C0554Va.f4139if) != false) goto L15;
     */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.res.Resources getResources() {
        /*
            r3 = this;
            android.content.res.Resources r0 = r3.f4143do
            if (r0 != 0) goto L38
            android.content.res.Configuration r0 = r3.f4141do
            if (r0 == 0) goto L32
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r1 < r2) goto L25
            android.content.res.Configuration r1 = defpackage.C0554Va.f4139if
            if (r1 != 0) goto L1c
            android.content.res.Configuration r1 = new android.content.res.Configuration
            r1.<init>()
            r2 = 0
            r1.fontScale = r2
            defpackage.C0554Va.f4139if = r1
        L1c:
            android.content.res.Configuration r1 = defpackage.C0554Va.f4139if
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
            goto L32
        L25:
            android.content.res.Configuration r0 = r3.f4141do
            android.content.Context r0 = defpackage.C0554Va.Cdo.m2653do(r3, r0)
            android.content.res.Resources r0 = r0.getResources()
            r3.f4143do = r0
            goto L38
        L32:
            android.content.res.Resources r0 = super.getResources()
            r3.f4143do = r0
        L38:
            android.content.res.Resources r0 = r3.f4143do
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0554Va.getResources():android.content.res.Resources");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f4144do == null) {
            this.f4144do = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f4144do;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f4142do;
        if (theme != null) {
            return theme;
        }
        if (this.f4140do == 0) {
            this.f4140do = R.style.Theme_AppCompat_Light;
        }
        m2652if();
        return this.f4142do;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2652if() {
        if (this.f4142do == null) {
            this.f4142do = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f4142do.setTo(theme);
            }
        }
        this.f4142do.applyStyle(this.f4140do, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        if (this.f4140do != i) {
            this.f4140do = i;
            m2652if();
        }
    }

    public C0554Va(Context context, int i) {
        super(context);
        this.f4140do = i;
    }
}

package b.b.f;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class d extends ContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    public int f330a;

    /* renamed from: b, reason: collision with root package name */
    public Resources.Theme f331b;

    /* renamed from: c, reason: collision with root package name */
    public LayoutInflater f332c;

    /* renamed from: d, reason: collision with root package name */
    public Configuration f333d;
    public Resources e;

    public d() {
        super(null);
    }

    public void a(Configuration configuration) {
        if (this.e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f333d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f333d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f331b == null) {
            this.f331b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f331b.setTo(theme);
            }
        }
        this.f331b.applyStyle(this.f330a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.e == null) {
            Configuration configuration = this.f333d;
            if (configuration == null) {
                this.e = super.getResources();
            } else {
                this.e = createConfigurationContext(configuration).getResources();
            }
        }
        return this.e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f332c == null) {
            this.f332c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f332c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f331b;
        if (theme != null) {
            return theme;
        }
        if (this.f330a == 0) {
            this.f330a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.f331b;
    }

    public int getThemeResId() {
        return this.f330a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f330a != i) {
            this.f330a = i;
            b();
        }
    }

    public d(Context context, int i) {
        super(context);
        this.f330a = i;
    }
}

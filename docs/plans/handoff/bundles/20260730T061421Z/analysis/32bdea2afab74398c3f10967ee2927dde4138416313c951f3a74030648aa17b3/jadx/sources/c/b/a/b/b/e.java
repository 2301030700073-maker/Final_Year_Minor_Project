package c.b.a.b.b;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import b.l.W;
import c.b.a.d.a.a.h;
import c.b.a.d.a.a.i;
import c.b.a.d.a.a.j;
import c.b.a.d.a.a.k;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SystemUiController;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.shared.LauncherExterns;
import com.android.systemui.plugins.shared.LauncherOverlayManager;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.qsb.longpopup.SearchOptionsPopup;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.function.Function;

/* loaded from: classes.dex */
public class e implements LauncherOverlayManager.LauncherOverlay, k, SharedPreferences.OnSharedPreferenceChangeListener, WallpaperColorInfo.OnChangeListener, LauncherOverlayManager {
    public static final Function h;
    public static Function i;

    /* renamed from: a, reason: collision with root package name */
    public final Launcher f2535a;

    /* renamed from: b, reason: collision with root package name */
    public final LauncherExterns f2536b;

    /* renamed from: c, reason: collision with root package name */
    public final j f2537c;
    public LauncherOverlayManager.LauncherOverlayCallbacks e;
    public SearchOptionsPopup g;

    /* renamed from: d, reason: collision with root package name */
    public final Bundle f2538d = new Bundle();
    public boolean f = false;

    static {
        a aVar = new Function() { // from class: c.b.a.b.b.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return e.d((SharedPreferences) obj);
            }
        };
        h = aVar;
        i = aVar;
    }

    public e(Launcher launcher, LauncherExterns launcherExterns) {
        this.f2535a = launcher;
        this.f2536b = launcherExterns;
        SharedPreferences sharedPrefs = launcherExterns.getSharedPrefs();
        sharedPrefs.registerOnSharedPreferenceChangeListener(this);
        this.f2537c = new j(this.f2535a, this, d(sharedPrefs), Executors.UI_HELPER_EXECUTOR.getLooper());
        Bundle bundle = this.f2538d;
        SystemUiController systemUiController = this.f2535a.getSystemUiController();
        bundle.putInt("system_ui_visibility", systemUiController.getSysUiVisibilityFlags(systemUiController.mStates[0], systemUiController.mWindow.getDecorView().getSystemUiVisibility()));
        WallpaperColorInfo wallpaperColorInfo = (WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(this.f2535a);
        wallpaperColorInfo.mListeners.add(this);
        e(wallpaperColorInfo);
        this.f2537c.h(this.f2538d);
    }

    public static /* synthetic */ h d(SharedPreferences sharedPreferences) {
        return new h((sharedPreferences.getBoolean("pref_enable_minus_one", true) ? 1 : 0) | 2 | 4 | 8);
    }

    @Override // c.b.a.d.a.a.k
    public void a(boolean z, boolean z2) {
        if (z != this.f) {
            this.f = z;
            LauncherExterns launcherExterns = this.f2536b;
            if (!z) {
                this = null;
            }
            launcherExterns.setLauncherOverlay(this);
        }
    }

    @Override // c.b.a.d.a.a.k
    public void b(int i2) {
        Utilities.getDevicePrefs(this.f2535a).edit().putInt("pref_persistent_flags", i2 & 24).apply();
    }

    @Override // c.b.a.d.a.a.k
    public void c(float f) {
        LauncherOverlayManager.LauncherOverlayCallbacks launcherOverlayCallbacks = this.e;
        if (launcherOverlayCallbacks != null) {
            launcherOverlayCallbacks.onScrollChanged(f);
        }
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager
    public void dump(String str, PrintWriter printWriter) {
        j jVar = this.f2537c;
        Objects.requireNonNull(jVar);
        printWriter.println(String.valueOf(str).concat("LauncherClient"));
        String concat = String.valueOf(str).concat("  ");
        boolean c2 = jVar.c();
        StringBuilder sb = new StringBuilder(String.valueOf(concat).length() + 18);
        sb.append(concat);
        sb.append("isConnected: ");
        sb.append(c2);
        printWriter.println(sb.toString());
        boolean z = jVar.g.f;
        StringBuilder sb2 = new StringBuilder(String.valueOf(concat).length() + 18);
        sb2.append(concat);
        sb2.append("act.isBound: ");
        sb2.append(z);
        printWriter.println(sb2.toString());
        boolean z2 = jVar.h.f;
        StringBuilder sb3 = new StringBuilder(String.valueOf(concat).length() + 18);
        sb3.append(concat);
        sb3.append("app.isBound: ");
        sb3.append(z2);
        printWriter.println(sb3.toString());
        int i2 = j.r;
        StringBuilder sb4 = new StringBuilder(String.valueOf(concat).length() + 27);
        sb4.append(concat);
        sb4.append("serviceVersion: ");
        sb4.append(i2);
        printWriter.println(sb4.toString());
        StringBuilder sb5 = new StringBuilder(String.valueOf(concat).length() + 17);
        sb5.append(concat);
        sb5.append("clientVersion: ");
        sb5.append(14);
        printWriter.println(sb5.toString());
        int i3 = jVar.k;
        StringBuilder sb6 = new StringBuilder(String.valueOf(concat).length() + 27);
        sb6.append(concat);
        sb6.append("mActivityState: ");
        sb6.append(i3);
        printWriter.println(sb6.toString());
        int i4 = jVar.m;
        StringBuilder sb7 = new StringBuilder(String.valueOf(concat).length() + 27);
        sb7.append(concat);
        sb7.append("mServiceStatus: ");
        sb7.append(i4);
        printWriter.println(sb7.toString());
        int i5 = jVar.n;
        StringBuilder sb8 = new StringBuilder(String.valueOf(concat).length() + 45);
        sb8.append(concat);
        sb8.append("mCurrentServiceConnectionOptions: ");
        sb8.append(i5);
        printWriter.println(sb8.toString());
        jVar.e.c(concat, printWriter);
        jVar.f.c(concat, printWriter);
    }

    public final boolean e(WallpaperColorInfo wallpaperColorInfo) {
        boolean z;
        int integer = this.f2535a.getResources().getInteger(R.integer.extracted_color_gradient_alpha);
        int f = b.e.d.a.f(W.getAttrColor(this.f2535a, R.attr.allAppsScrimColor), GraphicsUtils.setColorAlphaBound(wallpaperColorInfo.mExtractionInfo.mainColor, integer));
        if (this.f2538d.getInt("background_color_hint", 0) != f) {
            this.f2538d.putInt("background_color_hint", f);
            z = true;
        } else {
            z = false;
        }
        int f2 = b.e.d.a.f(W.getAttrColor(this.f2535a, R.attr.allAppsScrimColor), GraphicsUtils.setColorAlphaBound(wallpaperColorInfo.mExtractionInfo.secondaryColor, integer));
        if (this.f2538d.getInt("background_secondary_color_hint", 0) != f2) {
            this.f2538d.putInt("background_secondary_color_hint", f2);
            z = true;
        }
        boolean attrBoolean = W.getAttrBoolean(this.f2535a, R.attr.isMainColorDark);
        if (this.f2538d.containsKey("is_background_dark") && this.f2538d.getBoolean("is_background_dark") == attrBoolean) {
            return z;
        }
        this.f2538d.putBoolean("is_background_dark", attrBoolean);
        return true;
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager
    public void hideOverlay(boolean z) {
        SearchOptionsPopup searchOptionsPopup = this.g;
        if (searchOptionsPopup != null) {
            searchOptionsPopup.close(z);
        }
        j jVar = this.f2537c;
        jVar.e.a(z ? 3 : 4, "hideOverlay", RecentsState.NO_OFFSET);
        ILauncherOverlay iLauncherOverlay = jVar.j;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.closeOverlay(z ? 1 : 0);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        j jVar = this.f2537c;
        boolean z = !jVar.f3095a.isChangingConfigurations();
        if (!jVar.l) {
            jVar.f3095a.unregisterReceiver(jVar.i);
        }
        jVar.l = true;
        jVar.g.b();
        i iVar = jVar.p;
        if (iVar != null) {
            iVar.f3092b = null;
            iVar.f3093c = null;
            iVar.e = null;
            jVar.p = null;
        }
        c.b.a.d.a.a.a aVar = jVar.h;
        WeakReference weakReference = aVar.h;
        j jVar2 = weakReference != null ? (j) weakReference.get() : null;
        if (jVar2 != null && jVar2.equals(jVar)) {
            aVar.h = null;
            if (z) {
                aVar.b();
                if (c.b.a.d.a.a.a.j == aVar) {
                    c.b.a.d.a.a.a.j = null;
                }
            }
        }
        this.f2536b.getSharedPrefs().unregisterOnSharedPreferenceChangeListener(this);
        ((WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(this.f2535a)).mListeners.remove(this);
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        j jVar = this.f2537c;
        if (jVar.l) {
            return;
        }
        int i2 = jVar.k & (-3);
        jVar.k = i2;
        ILauncherOverlay iLauncherOverlay = jVar.j;
        if (iLauncherOverlay != null && jVar.o != null) {
            try {
                if (j.r < 4) {
                    iLauncherOverlay.onPause();
                } else {
                    iLauncherOverlay.setActivityState(i2);
                }
            } catch (RemoteException unused) {
            }
        }
        jVar.e.a(2, "stateChanged ", jVar.k);
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        j jVar = this.f2537c;
        if (jVar.l) {
            return;
        }
        int i2 = jVar.k | 2;
        jVar.k = i2;
        ILauncherOverlay iLauncherOverlay = jVar.j;
        if (iLauncherOverlay != null && jVar.o != null) {
            try {
                if (j.r < 4) {
                    iLauncherOverlay.onResume();
                } else {
                    iLauncherOverlay.setActivityState(i2);
                }
            } catch (RemoteException unused) {
            }
        }
        jVar.e.a(2, "stateChanged ", jVar.k);
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        j jVar = this.f2537c;
        if (jVar.l) {
            return;
        }
        jVar.h.i = false;
        jVar.f();
        int i2 = jVar.k | 1;
        jVar.k = i2;
        ILauncherOverlay iLauncherOverlay = jVar.j;
        if (iLauncherOverlay != null && jVar.o != null) {
            try {
                iLauncherOverlay.setActivityState(i2);
            } catch (RemoteException unused) {
            }
        }
        jVar.e.a(2, "stateChanged ", jVar.k);
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        j jVar = this.f2537c;
        if (jVar.l) {
            return;
        }
        c.b.a.d.a.a.a aVar = jVar.h;
        aVar.i = true;
        if (aVar.g == null) {
            aVar.b();
        }
        jVar.g.b();
        int i2 = jVar.k & (-2);
        jVar.k = i2;
        ILauncherOverlay iLauncherOverlay = jVar.j;
        if (iLauncherOverlay != null && jVar.o != null) {
            try {
                iLauncherOverlay.setActivityState(i2);
            } catch (RemoteException unused) {
            }
        }
        jVar.e.a(2, "stateChanged ", jVar.k);
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager
    public void onAttachedToWindow() {
        this.f2537c.e();
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager
    public void onDetachedFromWindow() {
        j jVar = this.f2537c;
        if (jVar.l) {
            return;
        }
        jVar.e.a(0, "detachedFromWindow", RecentsState.NO_OFFSET);
        jVar.i(null);
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager
    public void onDeviceProvideChanged() {
        j jVar = this.f2537c;
        jVar.e.a(0, "reattachOverlay", RecentsState.NO_OFFSET);
        if (jVar.o == null || j.r < 7) {
            return;
        }
        jVar.a();
    }

    @Override // com.android.launcher3.uioverrides.WallpaperColorInfo.OnChangeListener
    public void onExtractedColorsChanged(WallpaperColorInfo wallpaperColorInfo) {
        if (e(wallpaperColorInfo)) {
            this.f2536b.runOnOverlayHidden(new Runnable() { // from class: c.b.a.b.b.b
                @Override // java.lang.Runnable
                public final void run() {
                    e eVar = e.this;
                    eVar.f2537c.h(eVar.f2538d);
                }
            });
        }
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager.LauncherOverlay
    public void onScrollChange(float f, boolean z) {
        j jVar = this.f2537c;
        jVar.e.a(1, "updateMove", f);
        if (jVar.c()) {
            try {
                jVar.j.onScroll(f);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager.LauncherOverlay
    public void onScrollInteractionBegin() {
        j jVar = this.f2537c;
        jVar.e.a(0, "startMove", RecentsState.NO_OFFSET);
        if (jVar.c()) {
            try {
                jVar.j.startScroll();
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager.LauncherOverlay
    public void onScrollInteractionEnd() {
        j jVar = this.f2537c;
        jVar.e.a(0, "endMove", RecentsState.NO_OFFSET);
        if (jVar.c()) {
            try {
                jVar.j.endScroll();
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("pref_enable_minus_one".equals(str)) {
            j jVar = this.f2537c;
            h d2 = d(sharedPreferences);
            Objects.requireNonNull(jVar);
            int i2 = d2.f3089a;
            if (i2 != jVar.n) {
                jVar.n = i2;
                if (jVar.o != null) {
                    jVar.a();
                }
                jVar.e.a(2, "setClientOptions ", jVar.n);
            }
        }
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager
    public void openOverlay() {
        j jVar = this.f2537c;
        jVar.e.a(3, "showOverlay", RecentsState.NO_OFFSET);
        ILauncherOverlay iLauncherOverlay = jVar.j;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.openOverlay(1);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager.LauncherOverlay
    public void setOverlayCallbacks(LauncherOverlayManager.LauncherOverlayCallbacks launcherOverlayCallbacks) {
        this.e = launcherOverlayCallbacks;
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager
    public boolean startSearch(byte[] bArr, Bundle bundle) {
        ILauncherOverlay iLauncherOverlay;
        j jVar = this.f2537c;
        jVar.e.a(0, "startSearch", RecentsState.NO_OFFSET);
        if (j.r < 6 || (iLauncherOverlay = jVar.j) == null) {
            return false;
        }
        try {
            return iLauncherOverlay.startSearch(bArr, bundle);
        } catch (RemoteException e) {
            Log.e("DrawerOverlayClient", "Error starting session for search", e);
            return false;
        }
    }

    @Override // com.android.systemui.plugins.shared.LauncherOverlayManager
    public void hideOverlay(int i2) {
        SearchOptionsPopup searchOptionsPopup = this.g;
        if (searchOptionsPopup != null) {
            searchOptionsPopup.close(i2 > 0);
        }
        j jVar = this.f2537c;
        Objects.requireNonNull(jVar);
        if (i2 > 0 && i2 <= 2047) {
            int i3 = (i2 << 2) | 1;
            jVar.e.a(2, "hideOverlay", i2);
            ILauncherOverlay iLauncherOverlay = jVar.j;
            if (iLauncherOverlay != null) {
                try {
                    iLauncherOverlay.closeOverlay(i3);
                    return;
                } catch (RemoteException unused) {
                    return;
                }
            }
            return;
        }
        throw new IllegalArgumentException("Invalid duration");
    }
}

package androidx.appcompat.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.app.Ctry;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import defpackage.B1;
import defpackage.C0131Bq;
import defpackage.C0262Hp;
import defpackage.C0554Va;
import defpackage.C0731b6;
import defpackage.C0820cd;
import defpackage.C1;
import defpackage.C2659du;
import defpackage.C2680eE;
import defpackage.C3385nL;
import defpackage.C3645ro;
import defpackage.C3915wL;
import defpackage.D1;
import defpackage.G;
import defpackage.II;
import defpackage.InterfaceC0175Dq;
import defpackage.InterfaceC2643dd;
import defpackage.InterfaceC3895w1;
import defpackage.J1;
import defpackage.K1;
import defpackage.O4;
import defpackage.Oz;
import defpackage.QK;
import defpackage.RunnableC4072z1;
import defpackage.W1;
import defpackage.WF;
import defpackage.WindowCallbackC2806gM;
import defpackage.YF;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class AppCompatDelegateImpl extends androidx.appcompat.app.Cfor implements Ccase.Cdo, LayoutInflater.Factory2 {

    /* renamed from: do, reason: not valid java name */
    public static final C2680eE<String, Integer> f5208do = new C2680eE<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f5209do = {R.attr.windowBackground};

    /* renamed from: native, reason: not valid java name */
    public static final boolean f5210native = !"robolectric".equals(Build.FINGERPRINT);

    /* renamed from: public, reason: not valid java name */
    public static final boolean f5211public = true;

    /* renamed from: break, reason: not valid java name */
    public boolean f5212break;

    /* renamed from: case, reason: not valid java name */
    public int f5213case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f5214case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f5215catch;

    /* renamed from: class, reason: not valid java name */
    public boolean f5216class;

    /* renamed from: const, reason: not valid java name */
    public boolean f5217const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public D1 f5218do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public G f5219do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public W1 f5220do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public YF f5221do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f5222do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Configuration f5223do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Rect f5224do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5225do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewGroup f5226do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Window f5227do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PopupWindow f5228do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f5229do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OnBackInvokedCallback f5230do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OnBackInvokedDispatcher f5231do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionBar f5232do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PanelFeatureState f5233do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cbreak f5234do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cclass f5235do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfinal f5237do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f5238do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cthis f5239do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionBarContextView f5240do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC2643dd f5241do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f5242do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3895w1 f5244do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PanelFeatureState[] f5245do;

    /* renamed from: else, reason: not valid java name */
    public int f5246else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f5247else;

    /* renamed from: final, reason: not valid java name */
    public boolean f5248final;

    /* renamed from: for, reason: not valid java name */
    public final Object f5249for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5250for;

    /* renamed from: goto, reason: not valid java name */
    public boolean f5251goto;

    /* renamed from: if, reason: not valid java name */
    public Rect f5252if;

    /* renamed from: import, reason: not valid java name */
    public boolean f5254import;

    /* renamed from: new, reason: not valid java name */
    public final int f5255new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f5256new;

    /* renamed from: super, reason: not valid java name */
    public boolean f5257super;

    /* renamed from: this, reason: not valid java name */
    public boolean f5258this;

    /* renamed from: throw, reason: not valid java name */
    public boolean f5259throw;

    /* renamed from: try, reason: not valid java name */
    public int f5260try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f5261try;

    /* renamed from: while, reason: not valid java name */
    public boolean f5262while;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3385nL f5243do = null;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f5253if = true;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5236do = new Cdo();

    public static final class PanelFeatureState {

        /* renamed from: do, reason: not valid java name */
        public final int f5263do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0554Va f5264do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Bundle f5265do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public View f5266do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cconst f5267do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public androidx.appcompat.view.menu.Ccase f5268do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public androidx.appcompat.view.menu.Cnew f5269do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f5270do;

        /* renamed from: for, reason: not valid java name */
        public int f5271for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f5272for;

        /* renamed from: if, reason: not valid java name */
        public int f5273if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public View f5274if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f5275if;

        /* renamed from: new, reason: not valid java name */
        public int f5276new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public boolean f5277new = false;

        /* renamed from: try, reason: not valid java name */
        public boolean f5278try;

        @SuppressLint({"BanParcelableUsage"})
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

            /* renamed from: do, reason: not valid java name */
            public Bundle f5279do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public boolean f5280do;

            /* renamed from: for, reason: not valid java name */
            public int f5281for;

            /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$do, reason: invalid class name */
            public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.ClassLoaderCreator
                public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.m3268do(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public final Object[] newArray(int i) {
                    return new SavedState[i];
                }

                @Override // android.os.Parcelable.Creator
                public final Object createFromParcel(Parcel parcel) {
                    return SavedState.m3268do(parcel, null);
                }
            }

            /* renamed from: do, reason: not valid java name */
            public static SavedState m3268do(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f5281for = parcel.readInt();
                boolean z = parcel.readInt() == 1;
                savedState.f5280do = z;
                if (z) {
                    savedState.f5279do = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f5281for);
                parcel.writeInt(this.f5280do ? 1 : 0);
                if (this.f5280do) {
                    parcel.writeBundle(this.f5279do);
                }
            }
        }

        public PanelFeatureState(int i) {
            this.f5263do = i;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$break, reason: invalid class name */
    public class Cbreak extends Ccatch {

        /* renamed from: do, reason: not valid java name */
        public final PowerManager f5282do;

        public Cbreak(Context context) {
            super();
            this.f5282do = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.Ccatch
        /* renamed from: for, reason: not valid java name */
        public final int mo3269for() {
            return this.f5282do.isPowerSaveMode() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.Ccatch
        /* renamed from: if, reason: not valid java name */
        public final IntentFilter mo3270if() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.Ccatch
        /* renamed from: new, reason: not valid java name */
        public final void mo3271new() {
            AppCompatDelegateImpl.this.m3246finally(true, true);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$case, reason: invalid class name */
    public static class Ccase {
        /* renamed from: do, reason: not valid java name */
        public static String m3272do(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$catch, reason: invalid class name */
    public abstract class Ccatch {

        /* renamed from: do, reason: not valid java name */
        public Cdo f5284do;

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$catch$do, reason: invalid class name */
        public class Cdo extends BroadcastReceiver {
            public Cdo() {
            }

            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                Ccatch.this.mo3271new();
            }
        }

        public Ccatch() {
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3273do() {
            Cdo cdo = this.f5284do;
            if (cdo != null) {
                try {
                    AppCompatDelegateImpl.this.f5222do.unregisterReceiver(cdo);
                } catch (IllegalArgumentException unused) {
                }
                this.f5284do = null;
            }
        }

        /* renamed from: for */
        public abstract int mo3269for();

        /* renamed from: if */
        public abstract IntentFilter mo3270if();

        /* renamed from: new */
        public abstract void mo3271new();

        /* renamed from: try, reason: not valid java name */
        public final void m3274try() {
            m3273do();
            IntentFilter mo3270if = mo3270if();
            if (mo3270if == null || mo3270if.countActions() == 0) {
                return;
            }
            if (this.f5284do == null) {
                this.f5284do = new Cdo();
            }
            AppCompatDelegateImpl.this.f5222do.registerReceiver(this.f5284do, mo3270if);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$class, reason: invalid class name */
    public class Cclass extends Ccatch {

        /* renamed from: do, reason: not valid java name */
        public final II f5287do;

        public Cclass(II ii) {
            super();
            this.f5287do = ii;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00dc  */
        @Override // androidx.appcompat.app.AppCompatDelegateImpl.Ccatch
        /* renamed from: for */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int mo3269for() {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.Cclass.mo3269for():int");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.Ccatch
        /* renamed from: if */
        public final IntentFilter mo3270if() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.Ccatch
        /* renamed from: new */
        public final void mo3271new() {
            AppCompatDelegateImpl.this.m3246finally(true, true);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$const, reason: invalid class name */
    public class Cconst extends ContentFrameLayout {
        public Cconst(C0554Va c0554Va) {
            super(c0554Va, null);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m3252interface(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                    appCompatDelegateImpl.m3259strictfp(appCompatDelegateImpl.a(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i) {
            setBackgroundDrawable(C3645ro.m7997extends(getContext(), i));
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.f5246else & 1) != 0) {
                appCompatDelegateImpl.m3255protected(0);
            }
            if ((appCompatDelegateImpl.f5246else & 4096) != 0) {
                appCompatDelegateImpl.m3255protected(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
            }
            appCompatDelegateImpl.f5262while = false;
            appCompatDelegateImpl.f5246else = 0;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$else, reason: invalid class name */
    public static class Celse {
        /* renamed from: do, reason: not valid java name */
        public static void m3275do(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales;
            LocaleList locales2;
            boolean equals;
            locales = configuration.getLocales();
            locales2 = configuration2.getLocales();
            equals = locales.equals(locales2);
            if (equals) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }

        /* renamed from: for, reason: not valid java name */
        public static void m3276for(C0131Bq c0131Bq) {
            LocaleList forLanguageTags;
            forLanguageTags = LocaleList.forLanguageTags(c0131Bq.f289do.mo302for());
            LocaleList.setDefault(forLanguageTags);
        }

        /* renamed from: if, reason: not valid java name */
        public static C0131Bq m3277if(Configuration configuration) {
            LocaleList locales;
            String languageTags;
            locales = configuration.getLocales();
            languageTags = locales.toLanguageTags();
            return C0131Bq.m227if(languageTags);
        }

        /* renamed from: new, reason: not valid java name */
        public static void m3278new(Configuration configuration, C0131Bq c0131Bq) {
            LocaleList forLanguageTags;
            forLanguageTags = LocaleList.forLanguageTags(c0131Bq.f289do.mo302for());
            configuration.setLocales(forLanguageTags);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$final, reason: invalid class name */
    public final class Cfinal implements Cbreak.Cdo {
        public Cfinal() {
        }

        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: for, reason: not valid java name */
        public final void mo3279for(androidx.appcompat.view.menu.Ccase ccase, boolean z) {
            PanelFeatureState panelFeatureState;
            androidx.appcompat.view.menu.Ccase mo3325catch = ccase.mo3325catch();
            int i = 0;
            boolean z2 = mo3325catch != ccase;
            if (z2) {
                ccase = mo3325catch;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            PanelFeatureState[] panelFeatureStateArr = appCompatDelegateImpl.f5245do;
            int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
            while (true) {
                if (i < length) {
                    panelFeatureState = panelFeatureStateArr[i];
                    if (panelFeatureState != null && panelFeatureState.f5268do == ccase) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                if (!z2) {
                    appCompatDelegateImpl.m3259strictfp(panelFeatureState, z);
                } else {
                    appCompatDelegateImpl.m3236abstract(panelFeatureState.f5263do, panelFeatureState, mo3325catch);
                    appCompatDelegateImpl.m3259strictfp(panelFeatureState, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: new, reason: not valid java name */
        public final boolean mo3280new(androidx.appcompat.view.menu.Ccase ccase) {
            Window.Callback b;
            if (ccase != ccase.mo3325catch()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.f5214case || (b = appCompatDelegateImpl.b()) == null || appCompatDelegateImpl.f5257super) {
                return true;
            }
            b.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, ccase);
            return true;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$for, reason: invalid class name */
    public final class Cfor implements Cbreak.Cdo {
        public Cfor() {
        }

        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: for */
        public final void mo3279for(androidx.appcompat.view.menu.Ccase ccase, boolean z) {
            AppCompatDelegateImpl.this.m3241continue(ccase);
        }

        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: new */
        public final boolean mo3280new(androidx.appcompat.view.menu.Ccase ccase) {
            Window.Callback b = AppCompatDelegateImpl.this.b();
            if (b == null) {
                return true;
            }
            b.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, ccase);
            return true;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$goto, reason: invalid class name */
    public static class Cgoto {
        /* renamed from: do, reason: not valid java name */
        public static OnBackInvokedDispatcher m3281do(Activity activity) {
            return activity.getOnBackInvokedDispatcher();
        }

        /* renamed from: for, reason: not valid java name */
        public static void m3282for(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }

        /* renamed from: if, reason: not valid java name */
        public static OnBackInvokedCallback m3283if(Object obj, final AppCompatDelegateImpl appCompatDelegateImpl) {
            Objects.requireNonNull(appCompatDelegateImpl);
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: H1
                @Override // android.window.OnBackInvokedCallback
                public final void onBackInvoked() {
                    AppCompatDelegateImpl.this.e();
                }
            };
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, onBackInvokedCallback);
            return onBackInvokedCallback;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$if, reason: invalid class name */
    public interface Cif {
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$new, reason: invalid class name */
    public class Cnew implements G.Cdo {

        /* renamed from: do, reason: not valid java name */
        public final G.Cdo f5293do;

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$new$do, reason: invalid class name */
        public class Cdo extends C0820cd {
            public Cdo() {
                super(1);
            }

            @Override // defpackage.InterfaceC3503pL
            /* renamed from: do */
            public final void mo325do() {
                Cnew cnew = Cnew.this;
                AppCompatDelegateImpl.this.f5240do.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.f5228do;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.f5240do.getParent() instanceof View) {
                    View view = (View) appCompatDelegateImpl.f5240do.getParent();
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    QK.Cfor.m1903for(view);
                }
                appCompatDelegateImpl.f5240do.m3367this();
                appCompatDelegateImpl.f5243do.m7566new(null);
                appCompatDelegateImpl.f5243do = null;
                ViewGroup viewGroup = appCompatDelegateImpl.f5226do;
                WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                QK.Cfor.m1903for(viewGroup);
            }
        }

        public Cnew(WF.Cdo cdo) {
            this.f5293do = cdo;
        }

        @Override // defpackage.G.Cdo
        /* renamed from: do */
        public final boolean mo675do(G g, MenuItem menuItem) {
            return this.f5293do.mo675do(g, menuItem);
        }

        @Override // defpackage.G.Cdo
        /* renamed from: for */
        public final boolean mo676for(G g, androidx.appcompat.view.menu.Ccase ccase) {
            ViewGroup viewGroup = AppCompatDelegateImpl.this.f5226do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cfor.m1903for(viewGroup);
            return this.f5293do.mo676for(g, ccase);
        }

        @Override // defpackage.G.Cdo
        /* renamed from: if */
        public final void mo677if(G g) {
            this.f5293do.mo677if(g);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f5228do != null) {
                appCompatDelegateImpl.f5227do.getDecorView().removeCallbacks(appCompatDelegateImpl.f5218do);
            }
            if (appCompatDelegateImpl.f5240do != null) {
                C3385nL c3385nL = appCompatDelegateImpl.f5243do;
                if (c3385nL != null) {
                    c3385nL.m7565if();
                }
                C3385nL m1851do = QK.m1851do(appCompatDelegateImpl.f5240do);
                m1851do.m7563do(0.0f);
                appCompatDelegateImpl.f5243do = m1851do;
                m1851do.m7566new(new Cdo());
            }
            InterfaceC3895w1 interfaceC3895w1 = appCompatDelegateImpl.f5244do;
            if (interfaceC3895w1 != null) {
                interfaceC3895w1.mo1002new();
            }
            appCompatDelegateImpl.f5219do = null;
            ViewGroup viewGroup = appCompatDelegateImpl.f5226do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cfor.m1903for(viewGroup);
            appCompatDelegateImpl.j();
        }

        @Override // defpackage.G.Cdo
        /* renamed from: new */
        public final boolean mo678new(G g, androidx.appcompat.view.menu.Ccase ccase) {
            return this.f5293do.mo678new(g, ccase);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$try, reason: invalid class name */
    public static class Ctry {
        /* renamed from: do, reason: not valid java name */
        public static void m3286do(Configuration configuration, Locale locale) {
            configuration.setLayoutDirection(locale);
        }

        /* renamed from: if, reason: not valid java name */
        public static void m3287if(Configuration configuration, Locale locale) {
            configuration.setLocale(locale);
        }
    }

    public AppCompatDelegateImpl(Context context, Window window, InterfaceC3895w1 interfaceC3895w1, Object obj) {
        C2680eE<String, Integer> c2680eE;
        Integer orDefault;
        AppCompatActivity appCompatActivity;
        this.f5255new = -100;
        this.f5222do = context;
        this.f5244do = interfaceC3895w1;
        this.f5249for = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof AppCompatActivity)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    appCompatActivity = (AppCompatActivity) context;
                    break;
                }
            }
            appCompatActivity = null;
            if (appCompatActivity != null) {
                this.f5255new = appCompatActivity.m3230super().mo3243else();
            }
        }
        if (this.f5255new == -100 && (orDefault = (c2680eE = f5208do).getOrDefault(this.f5249for.getClass().getName(), null)) != null) {
            this.f5255new = orDefault.intValue();
            c2680eE.remove(this.f5249for.getClass().getName());
        }
        if (window != null) {
            m3254package(window);
        }
        K1.m1103new();
    }

    /* renamed from: private, reason: not valid java name */
    public static C0131Bq m3233private(Context context) {
        C0131Bq c0131Bq;
        C0131Bq m227if;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 || (c0131Bq = androidx.appcompat.app.Cfor.f5339do) == null) {
            return null;
        }
        C0131Bq m3234synchronized = m3234synchronized(context.getApplicationContext().getResources().getConfiguration());
        int i2 = 0;
        if (i < 24) {
            m227if = c0131Bq.m229new() ? C0131Bq.f288do : C0131Bq.m227if(c0131Bq.m228for(0).toString());
        } else if (c0131Bq.m229new()) {
            m227if = C0131Bq.f288do;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (true) {
                InterfaceC0175Dq interfaceC0175Dq = c0131Bq.f289do;
                if (i2 >= m3234synchronized.f289do.size() + interfaceC0175Dq.size()) {
                    break;
                }
                Locale m228for = i2 < interfaceC0175Dq.size() ? c0131Bq.m228for(i2) : m3234synchronized.m228for(i2 - interfaceC0175Dq.size());
                if (m228for != null) {
                    linkedHashSet.add(m228for);
                }
                i2++;
            }
            m227if = C0131Bq.m226do((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return m227if.m229new() ? m3234synchronized : m227if;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static C0131Bq m3234synchronized(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? Celse.m3277if(configuration) : C0131Bq.m227if(Ccase.m3272do(configuration.locale));
    }

    /* renamed from: volatile, reason: not valid java name */
    public static Configuration m3235volatile(Context context, int i, C0131Bq c0131Bq, Configuration configuration, boolean z) {
        int i2 = i != 1 ? i != 2 ? z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (c0131Bq != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                Celse.m3278new(configuration2, c0131Bq);
            } else {
                Ctry.m3287if(configuration2, c0131Bq.m228for(0));
                Ctry.m3286do(configuration2, c0131Bq.m228for(0));
            }
        }
        return configuration2;
    }

    public final PanelFeatureState a(int i) {
        PanelFeatureState[] panelFeatureStateArr = this.f5245do;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.f5245do = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i);
        panelFeatureStateArr[i] = panelFeatureState2;
        return panelFeatureState2;
    }

    /* renamed from: abstract, reason: not valid java name */
    public final void m3236abstract(int i, PanelFeatureState panelFeatureState, androidx.appcompat.view.menu.Ccase ccase) {
        if (ccase == null) {
            if (panelFeatureState == null && i >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.f5245do;
                if (i < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i];
                }
            }
            if (panelFeatureState != null) {
                ccase = panelFeatureState.f5268do;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.f5272for) && !this.f5257super) {
            Cthis cthis = this.f5239do;
            Window.Callback callback = this.f5227do.getCallback();
            cthis.getClass();
            try {
                cthis.f5299for = true;
                callback.onPanelClosed(i, ccase);
            } finally {
                cthis.f5299for = false;
            }
        }
    }

    public final Window.Callback b() {
        return this.f5227do.getCallback();
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: break, reason: not valid java name */
    public final void mo3237break() {
        LayoutInflater from = LayoutInflater.from(this.f5222do);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else {
            boolean z = from.getFactory2() instanceof AppCompatDelegateImpl;
        }
    }

    public final void c() {
        m3265transient();
        if (this.f5214case && this.f5232do == null) {
            Object obj = this.f5249for;
            if (obj instanceof Activity) {
                this.f5232do = new androidx.appcompat.app.Ccase(this.f5247else, (Activity) obj);
            } else if (obj instanceof Dialog) {
                this.f5232do = new androidx.appcompat.app.Ccase((Dialog) obj);
            }
            ActionBar actionBar = this.f5232do;
            if (actionBar != null) {
                actionBar.mo3212class(this.f5254import);
            }
        }
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: case, reason: not valid java name */
    public final Context mo3238case() {
        return this.f5222do;
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: catch, reason: not valid java name */
    public final void mo3239catch() {
        if (this.f5232do != null) {
            c();
            if (this.f5232do.mo3210case()) {
                return;
            }
            this.f5246else |= 1;
            if (this.f5262while) {
                return;
            }
            View decorView = this.f5227do.getDecorView();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            decorView.postOnAnimation(this.f5236do);
            this.f5262while = true;
        }
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: const, reason: not valid java name */
    public final void mo3240const(Configuration configuration) {
        if (this.f5214case && this.f5250for) {
            c();
            ActionBar actionBar = this.f5232do;
            if (actionBar != null) {
                actionBar.mo3215else();
            }
        }
        K1 m1101do = K1.m1101do();
        Context context = this.f5222do;
        synchronized (m1101do) {
            m1101do.f1741do.m1564catch(context);
        }
        this.f5223do = new Configuration(this.f5222do.getResources().getConfiguration());
        m3246finally(false, false);
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m3241continue(androidx.appcompat.view.menu.Ccase ccase) {
        if (this.f5215catch) {
            return;
        }
        this.f5215catch = true;
        this.f5241do.mo3370break();
        Window.Callback b = b();
        if (b != null && !this.f5257super) {
            b.onPanelClosed(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, ccase);
        }
        this.f5215catch = false;
    }

    public final int d(Context context, int i) {
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return m3251instanceof(context).mo3269for();
                }
                return -1;
            }
            if (i != 1 && i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.f5234do == null) {
                    this.f5234do = new Cbreak(context);
                }
                return this.f5234do.mo3269for();
            }
        }
        return i;
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: default, reason: not valid java name */
    public final void mo3242default(int i) {
        this.f5260try = i;
    }

    @Override // androidx.appcompat.view.menu.Ccase.Cdo
    /* renamed from: do */
    public final void mo2229do(androidx.appcompat.view.menu.Ccase ccase) {
        InterfaceC2643dd interfaceC2643dd = this.f5241do;
        if (interfaceC2643dd == null || !interfaceC2643dd.mo3371case() || (ViewConfiguration.get(this.f5222do).hasPermanentMenuKey() && !this.f5241do.mo3386this())) {
            PanelFeatureState a = a(0);
            a.f5277new = true;
            m3259strictfp(a, false);
            f(a, null);
            return;
        }
        Window.Callback b = b();
        if (this.f5241do.mo3375do()) {
            this.f5241do.mo3380if();
            if (this.f5257super) {
                return;
            }
            b.onPanelClosed(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, a(0).f5268do);
            return;
        }
        if (b == null || this.f5257super) {
            return;
        }
        if (this.f5262while && (1 & this.f5246else) != 0) {
            View decorView = this.f5227do.getDecorView();
            Cdo cdo = this.f5236do;
            decorView.removeCallbacks(cdo);
            cdo.run();
        }
        PanelFeatureState a2 = a(0);
        androidx.appcompat.view.menu.Ccase ccase2 = a2.f5268do;
        if (ccase2 == null || a2.f5278try || !b.onPreparePanel(0, a2.f5274if, ccase2)) {
            return;
        }
        b.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, a2.f5268do);
        this.f5241do.mo3376else();
    }

    public final boolean e() {
        boolean z = this.f5216class;
        this.f5216class = false;
        PanelFeatureState a = a(0);
        if (a.f5272for) {
            if (!z) {
                m3259strictfp(a, true);
            }
            return true;
        }
        G g = this.f5219do;
        if (g != null) {
            g.mo668for();
            return true;
        }
        c();
        ActionBar actionBar = this.f5232do;
        return actionBar != null && actionBar.mo3219if();
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: else, reason: not valid java name */
    public final int mo3243else() {
        return this.f5255new;
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: extends, reason: not valid java name */
    public final void mo3244extends(CharSequence charSequence) {
        this.f5242do = charSequence;
        InterfaceC2643dd interfaceC2643dd = this.f5241do;
        if (interfaceC2643dd != null) {
            interfaceC2643dd.mo3378for(charSequence);
            return;
        }
        ActionBar actionBar = this.f5232do;
        if (actionBar != null) {
            actionBar.mo3221super(charSequence);
            return;
        }
        TextView textView = this.f5229do;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0178, code lost:
    
        if (r2.f5531do.getCount() > 0) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0154, code lost:
    
        if (r2 != null) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0180  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.f(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):void");
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: final, reason: not valid java name */
    public final void mo3245final() {
        String str;
        this.f5217const = true;
        m3246finally(false, true);
        m3249implements();
        Object obj = this.f5249for;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = C2659du.m6470for(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                ActionBar actionBar = this.f5232do;
                if (actionBar == null) {
                    this.f5254import = true;
                } else {
                    actionBar.mo3212class(true);
                }
            }
            synchronized (androidx.appcompat.app.Cfor.f5343do) {
                androidx.appcompat.app.Cfor.m3294native(this);
                androidx.appcompat.app.Cfor.f5340do.add(new WeakReference<>(this));
            }
        }
        this.f5223do = new Configuration(this.f5222do.getResources().getConfiguration());
        this.f5248final = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0232 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e8 A[ADDED_TO_REGION] */
    /* renamed from: finally, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3246finally(boolean r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m3246finally(boolean, boolean):boolean");
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: for, reason: not valid java name */
    public final void mo3247for(View view, ViewGroup.LayoutParams layoutParams) {
        m3265transient();
        ((ViewGroup) this.f5226do.findViewById(R.id.content)).addView(view, layoutParams);
        this.f5239do.m3284do(this.f5227do.getCallback());
    }

    public final boolean g(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent) {
        androidx.appcompat.view.menu.Ccase ccase;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.f5270do || h(panelFeatureState, keyEvent)) && (ccase = panelFeatureState.f5268do) != null) {
            return ccase.performShortcut(i, keyEvent, 1);
        }
        return false;
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: goto, reason: not valid java name */
    public final MenuInflater mo3248goto() {
        if (this.f5221do == null) {
            c();
            ActionBar actionBar = this.f5232do;
            this.f5221do = new YF(actionBar != null ? actionBar.mo3224try() : this.f5222do);
        }
        return this.f5221do;
    }

    public final boolean h(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        InterfaceC2643dd interfaceC2643dd;
        InterfaceC2643dd interfaceC2643dd2;
        Resources.Theme theme;
        InterfaceC2643dd interfaceC2643dd3;
        InterfaceC2643dd interfaceC2643dd4;
        if (this.f5257super) {
            return false;
        }
        if (panelFeatureState.f5270do) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.f5233do;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            m3259strictfp(panelFeatureState2, false);
        }
        Window.Callback b = b();
        int i = panelFeatureState.f5263do;
        if (b != null) {
            panelFeatureState.f5274if = b.onCreatePanelView(i);
        }
        boolean z = i == 0 || i == 108;
        if (z && (interfaceC2643dd4 = this.f5241do) != null) {
            interfaceC2643dd4.mo3379goto();
        }
        if (panelFeatureState.f5274if == null && (!z || !(this.f5232do instanceof androidx.appcompat.app.Ctry))) {
            androidx.appcompat.view.menu.Ccase ccase = panelFeatureState.f5268do;
            if (ccase == null || panelFeatureState.f5278try) {
                if (ccase == null) {
                    Context context = this.f5222do;
                    if ((i == 0 || i == 108) && this.f5241do != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(com.joeykrim.rootcheck.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(com.joeykrim.rootcheck.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme2.resolveAttribute(com.joeykrim.rootcheck.R.attr.actionBarWidgetTheme, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            C0554Va c0554Va = new C0554Va(context, 0);
                            c0554Va.getTheme().setTo(theme);
                            context = c0554Va;
                        }
                    }
                    androidx.appcompat.view.menu.Ccase ccase2 = new androidx.appcompat.view.menu.Ccase(context);
                    ccase2.f5407do = this;
                    androidx.appcompat.view.menu.Ccase ccase3 = panelFeatureState.f5268do;
                    if (ccase2 != ccase3) {
                        if (ccase3 != null) {
                            ccase3.m3336import(panelFeatureState.f5269do);
                        }
                        panelFeatureState.f5268do = ccase2;
                        androidx.appcompat.view.menu.Cnew cnew = panelFeatureState.f5269do;
                        if (cnew != null) {
                            ccase2.m3335if(cnew, ccase2.f5403do);
                        }
                    }
                    if (panelFeatureState.f5268do == null) {
                        return false;
                    }
                }
                if (z && (interfaceC2643dd2 = this.f5241do) != null) {
                    if (this.f5238do == null) {
                        this.f5238do = new Cfor();
                    }
                    interfaceC2643dd2.mo3388try(panelFeatureState.f5268do, this.f5238do);
                }
                panelFeatureState.f5268do.m3331extends();
                if (!b.onCreatePanelMenu(i, panelFeatureState.f5268do)) {
                    androidx.appcompat.view.menu.Ccase ccase4 = panelFeatureState.f5268do;
                    if (ccase4 != null) {
                        if (ccase4 != null) {
                            ccase4.m3336import(panelFeatureState.f5269do);
                        }
                        panelFeatureState.f5268do = null;
                    }
                    if (z && (interfaceC2643dd = this.f5241do) != null) {
                        interfaceC2643dd.mo3388try(null, this.f5238do);
                    }
                    return false;
                }
                panelFeatureState.f5278try = false;
            }
            panelFeatureState.f5268do.m3331extends();
            Bundle bundle = panelFeatureState.f5265do;
            if (bundle != null) {
                panelFeatureState.f5268do.m3337native(bundle);
                panelFeatureState.f5265do = null;
            }
            if (!b.onPreparePanel(0, panelFeatureState.f5274if, panelFeatureState.f5268do)) {
                if (z && (interfaceC2643dd3 = this.f5241do) != null) {
                    interfaceC2643dd3.mo3388try(null, this.f5238do);
                }
                panelFeatureState.f5268do.m3328default();
                return false;
            }
            panelFeatureState.f5268do.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            panelFeatureState.f5268do.m3328default();
        }
        panelFeatureState.f5270do = true;
        panelFeatureState.f5275if = false;
        this.f5233do = panelFeatureState;
        return true;
    }

    public final void i() {
        if (this.f5250for) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    @Override // androidx.appcompat.view.menu.Ccase.Cdo
    /* renamed from: if */
    public final boolean mo2230if(androidx.appcompat.view.menu.Ccase ccase, MenuItem menuItem) {
        PanelFeatureState panelFeatureState;
        Window.Callback b = b();
        if (b != null && !this.f5257super) {
            androidx.appcompat.view.menu.Ccase mo3325catch = ccase.mo3325catch();
            PanelFeatureState[] panelFeatureStateArr = this.f5245do;
            int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
            int i = 0;
            while (true) {
                if (i < length) {
                    panelFeatureState = panelFeatureStateArr[i];
                    if (panelFeatureState != null && panelFeatureState.f5268do == mo3325catch) {
                        break;
                    }
                    i++;
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                return b.onMenuItemSelected(panelFeatureState.f5263do, menuItem);
            }
        }
        return false;
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m3249implements() {
        if (this.f5227do == null) {
            Object obj = this.f5249for;
            if (obj instanceof Activity) {
                m3254package(((Activity) obj).getWindow());
            }
        }
        if (this.f5227do == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: import, reason: not valid java name */
    public final void mo3250import() {
        c();
        ActionBar actionBar = this.f5232do;
        if (actionBar != null) {
            actionBar.mo3213const(false);
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final Ccatch m3251instanceof(Context context) {
        if (this.f5235do == null) {
            if (II.f1481do == null) {
                Context applicationContext = context.getApplicationContext();
                II.f1481do = new II(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.f5235do = new Cclass(II.f1481do);
        }
        return this.f5235do;
    }

    /* renamed from: interface, reason: not valid java name */
    public final boolean m3252interface(KeyEvent keyEvent) {
        View decorView;
        boolean z;
        boolean z2;
        AudioManager audioManager;
        Object obj = this.f5249for;
        if (((obj instanceof C0262Hp.Cdo) || (obj instanceof J1)) && (decorView = this.f5227do.getDecorView()) != null && C0262Hp.m885do(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82) {
            Cthis cthis = this.f5239do;
            Window.Callback callback = this.f5227do.getCallback();
            cthis.getClass();
            try {
                cthis.f5300if = true;
                if (callback.dispatchKeyEvent(keyEvent)) {
                    return true;
                }
            } finally {
                cthis.f5300if = false;
            }
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() == 0) {
            if (keyCode == 4) {
                this.f5216class = (keyEvent.getFlags() & 128) != 0;
            } else if (keyCode == 82) {
                if (keyEvent.getRepeatCount() != 0) {
                    return true;
                }
                PanelFeatureState a = a(0);
                if (a.f5272for) {
                    return true;
                }
                h(a, keyEvent);
                return true;
            }
        } else if (keyCode != 4) {
            if (keyCode == 82) {
                if (this.f5219do != null) {
                    return true;
                }
                PanelFeatureState a2 = a(0);
                InterfaceC2643dd interfaceC2643dd = this.f5241do;
                Context context = this.f5222do;
                if (interfaceC2643dd == null || !interfaceC2643dd.mo3371case() || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                    boolean z3 = a2.f5272for;
                    if (z3 || a2.f5275if) {
                        m3259strictfp(a2, true);
                        z = z3;
                    } else {
                        if (a2.f5270do) {
                            if (a2.f5278try) {
                                a2.f5270do = false;
                                z2 = h(a2, keyEvent);
                            } else {
                                z2 = true;
                            }
                            if (z2) {
                                f(a2, keyEvent);
                                z = true;
                            }
                        }
                        z = false;
                    }
                } else if (this.f5241do.mo3375do()) {
                    z = this.f5241do.mo3380if();
                } else {
                    if (!this.f5257super && h(a2, keyEvent)) {
                        z = this.f5241do.mo3376else();
                    }
                    z = false;
                }
                if (!z || (audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio")) == null) {
                    return true;
                }
                audioManager.playSoundEffect(0);
                return true;
            }
        } else if (e()) {
            return true;
        }
        return false;
    }

    public final void j() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.f5231do != null && (a(0).f5272for || this.f5219do != null)) {
                z = true;
            }
            if (z && this.f5230do == null) {
                this.f5230do = Cgoto.m3283if(this.f5231do, this);
            } else {
                if (z || (onBackInvokedCallback = this.f5230do) == null) {
                    return;
                }
                Cgoto.m3282for(this.f5231do, onBackInvokedCallback);
            }
        }
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: new, reason: not valid java name */
    public final Context mo3253new(Context context) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        this.f5217const = true;
        int i9 = this.f5255new;
        if (i9 == -100) {
            i9 = androidx.appcompat.app.Cfor.f5345for;
        }
        int d = d(context, i9);
        int i10 = 0;
        if (androidx.appcompat.app.Cfor.m3293class(context) && androidx.appcompat.app.Cfor.m3293class(context)) {
            if (!C0731b6.m4812for()) {
                synchronized (androidx.appcompat.app.Cfor.f5347if) {
                    C0131Bq c0131Bq = androidx.appcompat.app.Cfor.f5339do;
                    if (c0131Bq == null) {
                        if (androidx.appcompat.app.Cfor.f5346if == null) {
                            androidx.appcompat.app.Cfor.f5346if = C0131Bq.m227if(androidx.appcompat.app.Cnew.m3301if(context));
                        }
                        if (!androidx.appcompat.app.Cfor.f5346if.m229new()) {
                            androidx.appcompat.app.Cfor.f5339do = androidx.appcompat.app.Cfor.f5346if;
                        }
                    } else if (!c0131Bq.equals(androidx.appcompat.app.Cfor.f5346if)) {
                        C0131Bq c0131Bq2 = androidx.appcompat.app.Cfor.f5339do;
                        androidx.appcompat.app.Cfor.f5346if = c0131Bq2;
                        androidx.appcompat.app.Cnew.m3300do(context, c0131Bq2.f289do.mo302for());
                    }
                }
            } else if (!androidx.appcompat.app.Cfor.f5344do) {
                androidx.appcompat.app.Cfor.f5341do.execute(new RunnableC4072z1(context, i10));
            }
        }
        C0131Bq m3233private = m3233private(context);
        Configuration configuration = null;
        if (f5211public && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(m3235volatile(context, d, m3233private, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof C0554Va) {
            try {
                ((C0554Va) context).m2651do(m3235volatile(context, d, m3233private, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f5210native) {
            return context;
        }
        int i11 = Build.VERSION.SDK_INT;
        Configuration configuration2 = new Configuration();
        configuration2.uiMode = -1;
        configuration2.fontScale = 0.0f;
        Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
        Configuration configuration4 = context.getResources().getConfiguration();
        configuration3.uiMode = configuration4.uiMode;
        if (!configuration3.equals(configuration4)) {
            configuration = new Configuration();
            configuration.fontScale = 0.0f;
            if (configuration3.diff(configuration4) != 0) {
                float f = configuration3.fontScale;
                float f2 = configuration4.fontScale;
                if (f != f2) {
                    configuration.fontScale = f2;
                }
                int i12 = configuration3.mcc;
                int i13 = configuration4.mcc;
                if (i12 != i13) {
                    configuration.mcc = i13;
                }
                int i14 = configuration3.mnc;
                int i15 = configuration4.mnc;
                if (i14 != i15) {
                    configuration.mnc = i15;
                }
                if (i11 >= 24) {
                    Celse.m3275do(configuration3, configuration4, configuration);
                } else if (!Objects.equals(configuration3.locale, configuration4.locale)) {
                    configuration.locale = configuration4.locale;
                }
                int i16 = configuration3.touchscreen;
                int i17 = configuration4.touchscreen;
                if (i16 != i17) {
                    configuration.touchscreen = i17;
                }
                int i18 = configuration3.keyboard;
                int i19 = configuration4.keyboard;
                if (i18 != i19) {
                    configuration.keyboard = i19;
                }
                int i20 = configuration3.keyboardHidden;
                int i21 = configuration4.keyboardHidden;
                if (i20 != i21) {
                    configuration.keyboardHidden = i21;
                }
                int i22 = configuration3.navigation;
                int i23 = configuration4.navigation;
                if (i22 != i23) {
                    configuration.navigation = i23;
                }
                int i24 = configuration3.navigationHidden;
                int i25 = configuration4.navigationHidden;
                if (i24 != i25) {
                    configuration.navigationHidden = i25;
                }
                int i26 = configuration3.orientation;
                int i27 = configuration4.orientation;
                if (i26 != i27) {
                    configuration.orientation = i27;
                }
                int i28 = configuration3.screenLayout & 15;
                int i29 = configuration4.screenLayout & 15;
                if (i28 != i29) {
                    configuration.screenLayout |= i29;
                }
                int i30 = configuration3.screenLayout & 192;
                int i31 = configuration4.screenLayout & 192;
                if (i30 != i31) {
                    configuration.screenLayout |= i31;
                }
                int i32 = configuration3.screenLayout & 48;
                int i33 = configuration4.screenLayout & 48;
                if (i32 != i33) {
                    configuration.screenLayout |= i33;
                }
                int i34 = configuration3.screenLayout & 768;
                int i35 = configuration4.screenLayout & 768;
                if (i34 != i35) {
                    configuration.screenLayout |= i35;
                }
                if (i11 >= 26) {
                    i = configuration3.colorMode;
                    int i36 = i & 3;
                    i2 = configuration4.colorMode;
                    if (i36 != (i2 & 3)) {
                        i7 = configuration.colorMode;
                        i8 = configuration4.colorMode;
                        configuration.colorMode = i7 | (i8 & 3);
                    }
                    i3 = configuration3.colorMode;
                    int i37 = i3 & 12;
                    i4 = configuration4.colorMode;
                    if (i37 != (i4 & 12)) {
                        i5 = configuration.colorMode;
                        i6 = configuration4.colorMode;
                        configuration.colorMode = i5 | (i6 & 12);
                    }
                }
                int i38 = configuration3.uiMode & 15;
                int i39 = configuration4.uiMode & 15;
                if (i38 != i39) {
                    configuration.uiMode |= i39;
                }
                int i40 = configuration3.uiMode & 48;
                int i41 = configuration4.uiMode & 48;
                if (i40 != i41) {
                    configuration.uiMode |= i41;
                }
                int i42 = configuration3.screenWidthDp;
                int i43 = configuration4.screenWidthDp;
                if (i42 != i43) {
                    configuration.screenWidthDp = i43;
                }
                int i44 = configuration3.screenHeightDp;
                int i45 = configuration4.screenHeightDp;
                if (i44 != i45) {
                    configuration.screenHeightDp = i45;
                }
                int i46 = configuration3.smallestScreenWidthDp;
                int i47 = configuration4.smallestScreenWidthDp;
                if (i46 != i47) {
                    configuration.smallestScreenWidthDp = i47;
                }
                int i48 = configuration3.densityDpi;
                int i49 = configuration4.densityDpi;
                if (i48 != i49) {
                    configuration.densityDpi = i49;
                }
            }
        }
        Configuration m3235volatile = m3235volatile(context, d, m3233private, configuration, true);
        C0554Va c0554Va = new C0554Va(context, com.joeykrim.rootcheck.R.style.Theme_AppCompat_Empty);
        c0554Va.m2651do(m3235volatile);
        try {
            i10 = context.getTheme() == null ? 0 : 1;
        } catch (NullPointerException unused3) {
        }
        if (i10 != 0) {
            Oz.Ccase.m1724do(c0554Va.getTheme());
        }
        return c0554Va;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x00f0, code lost:
    
        if (r9.equals("ImageButton") == false) goto L76;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r8, java.lang.String r9, android.content.Context r10, android.util.AttributeSet r11) {
        /*
            Method dump skipped, instructions count: 696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    /* renamed from: package, reason: not valid java name */
    public final void m3254package(Window window) {
        Drawable drawable;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.f5227do != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof Cthis) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Cthis cthis = new Cthis(callback);
        this.f5239do = cthis;
        window.setCallback(cthis);
        Context context = this.f5222do;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, f5209do);
        if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawable = null;
        } else {
            K1 m1101do = K1.m1101do();
            synchronized (m1101do) {
                drawable = m1101do.f1741do.m1568else(context, resourceId, true);
            }
        }
        if (drawable != null) {
            window.setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.f5227do = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.f5231do) != null) {
            return;
        }
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.f5230do) != null) {
            Cgoto.m3282for(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f5230do = null;
        }
        Object obj = this.f5249for;
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.f5231do = Cgoto.m3281do(activity);
                j();
            }
        }
        this.f5231do = null;
        j();
    }

    /* renamed from: protected, reason: not valid java name */
    public final void m3255protected(int i) {
        PanelFeatureState a = a(i);
        if (a.f5268do != null) {
            Bundle bundle = new Bundle();
            a.f5268do.m3340return(bundle);
            if (bundle.size() > 0) {
                a.f5265do = bundle;
            }
            a.f5268do.m3331extends();
            a.f5268do.clear();
        }
        a.f5278try = true;
        a.f5277new = true;
        if ((i == 108 || i == 0) && this.f5241do != null) {
            PanelFeatureState a2 = a(0);
            a2.f5270do = false;
            h(a2, null);
        }
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: public, reason: not valid java name */
    public final boolean mo3256public(int i) {
        if (i == 8) {
            i = FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS;
        } else if (i == 9) {
            i = FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD;
        }
        if (this.f5212break && i == 108) {
            return false;
        }
        if (this.f5214case && i == 1) {
            this.f5214case = false;
        }
        if (i == 1) {
            i();
            this.f5212break = true;
            return true;
        }
        if (i == 2) {
            i();
            this.f5256new = true;
            return true;
        }
        if (i == 5) {
            i();
            this.f5261try = true;
            return true;
        }
        if (i == 10) {
            i();
            this.f5251goto = true;
            return true;
        }
        if (i == 108) {
            i();
            this.f5214case = true;
            return true;
        }
        if (i != 109) {
            return this.f5227do.requestFeature(i);
        }
        i();
        this.f5247else = true;
        return true;
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: return, reason: not valid java name */
    public final void mo3257return(int i) {
        m3265transient();
        ViewGroup viewGroup = (ViewGroup) this.f5226do.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f5222do).inflate(i, viewGroup);
        this.f5239do.m3284do(this.f5227do.getCallback());
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: static, reason: not valid java name */
    public final void mo3258static(View view) {
        m3265transient();
        ViewGroup viewGroup = (ViewGroup) this.f5226do.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f5239do.m3284do(this.f5227do.getCallback());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m3259strictfp(PanelFeatureState panelFeatureState, boolean z) {
        Cconst cconst;
        InterfaceC2643dd interfaceC2643dd;
        if (z && panelFeatureState.f5263do == 0 && (interfaceC2643dd = this.f5241do) != null && interfaceC2643dd.mo3375do()) {
            m3241continue(panelFeatureState.f5268do);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f5222do.getSystemService("window");
        if (windowManager != null && panelFeatureState.f5272for && (cconst = panelFeatureState.f5267do) != null) {
            windowManager.removeView(cconst);
            if (z) {
                m3236abstract(panelFeatureState.f5263do, panelFeatureState, null);
            }
        }
        panelFeatureState.f5270do = false;
        panelFeatureState.f5275if = false;
        panelFeatureState.f5272for = false;
        panelFeatureState.f5266do = null;
        panelFeatureState.f5277new = true;
        if (this.f5233do == panelFeatureState) {
            this.f5233do = null;
        }
        if (panelFeatureState.f5263do == 0) {
            j();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.app.Cfor
    /* renamed from: super, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo3260super() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f5249for
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = androidx.appcompat.app.Cfor.f5343do
            monitor-enter(r0)
            androidx.appcompat.app.Cfor.m3294native(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.f5262while
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.f5227do
            android.view.View r0 = r0.getDecorView()
            androidx.appcompat.app.AppCompatDelegateImpl$do r1 = r3.f5236do
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.f5257super = r0
            int r0 = r3.f5255new
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.f5249for
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            eE<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f5208do
            java.lang.Object r1 = r3.f5249for
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.f5255new
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            eE<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f5208do
            java.lang.Object r1 = r3.f5249for
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            androidx.appcompat.app.ActionBar r0 = r3.f5232do
            if (r0 == 0) goto L63
            r0.mo3218goto()
        L63:
            androidx.appcompat.app.AppCompatDelegateImpl$class r0 = r3.f5235do
            if (r0 == 0) goto L6a
            r0.m3273do()
        L6a:
            androidx.appcompat.app.AppCompatDelegateImpl$break r0 = r3.f5234do
            if (r0 == 0) goto L71
            r0.m3273do()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.mo3260super():void");
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: switch, reason: not valid java name */
    public final void mo3261switch(View view, ViewGroup.LayoutParams layoutParams) {
        m3265transient();
        ViewGroup viewGroup = (ViewGroup) this.f5226do.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f5239do.m3284do(this.f5227do.getCallback());
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: this, reason: not valid java name */
    public final ActionBar mo3262this() {
        c();
        return this.f5232do;
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: throw, reason: not valid java name */
    public final void mo3263throw() {
        c();
        ActionBar actionBar = this.f5232do;
        if (actionBar != null) {
            actionBar.mo3213const(true);
        }
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: throws, reason: not valid java name */
    public final void mo3264throws(Toolbar toolbar) {
        Object obj = this.f5249for;
        if (obj instanceof Activity) {
            c();
            ActionBar actionBar = this.f5232do;
            if (actionBar instanceof androidx.appcompat.app.Ccase) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f5221do = null;
            if (actionBar != null) {
                actionBar.mo3218goto();
            }
            this.f5232do = null;
            if (toolbar != null) {
                androidx.appcompat.app.Ctry ctry = new androidx.appcompat.app.Ctry(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : this.f5242do, this.f5239do);
                this.f5232do = ctry;
                this.f5239do.f5296do = ctry.f5357do;
                toolbar.m3497static();
            } else {
                this.f5239do.f5296do = null;
            }
            mo3239catch();
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public final void m3265transient() {
        ViewGroup viewGroup;
        if (this.f5250for) {
            return;
        }
        int[] iArr = O4.f2581while;
        Context context = this.f5222do;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(117)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(126, false)) {
            mo3256public(1);
        } else if (obtainStyledAttributes.getBoolean(117, false)) {
            mo3256public(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
        }
        if (obtainStyledAttributes.getBoolean(118, false)) {
            mo3256public(FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD);
        }
        if (obtainStyledAttributes.getBoolean(119, false)) {
            mo3256public(10);
        }
        this.f5258this = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        m3249implements();
        this.f5227do.getDecorView();
        LayoutInflater from = LayoutInflater.from(context);
        if (this.f5212break) {
            viewGroup = this.f5251goto ? (ViewGroup) from.inflate(com.joeykrim.rootcheck.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(com.joeykrim.rootcheck.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.f5258this) {
            viewGroup = (ViewGroup) from.inflate(com.joeykrim.rootcheck.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.f5247else = false;
            this.f5214case = false;
        } else if (this.f5214case) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.joeykrim.rootcheck.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C0554Va(context, typedValue.resourceId) : context).inflate(com.joeykrim.rootcheck.R.layout.abc_screen_toolbar, (ViewGroup) null);
            InterfaceC2643dd interfaceC2643dd = (InterfaceC2643dd) viewGroup.findViewById(com.joeykrim.rootcheck.R.id.decor_content_parent);
            this.f5241do = interfaceC2643dd;
            interfaceC2643dd.mo3382new(b());
            if (this.f5247else) {
                this.f5241do.mo3387throw(FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD);
            }
            if (this.f5256new) {
                this.f5241do.mo3387throw(2);
            }
            if (this.f5261try) {
                this.f5241do.mo3387throw(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f5214case + ", windowActionBarOverlay: " + this.f5247else + ", android:windowIsFloating: " + this.f5258this + ", windowActionModeOverlay: " + this.f5251goto + ", windowNoTitle: " + this.f5212break + " }");
        }
        B1 b1 = new B1(this);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        QK.Cnew.m1935return(viewGroup, b1);
        if (this.f5241do == null) {
            this.f5229do = (TextView) viewGroup.findViewById(com.joeykrim.rootcheck.R.id.title);
        }
        Method method = C3915wL.f16320do;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.joeykrim.rootcheck.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f5227do.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f5227do.setContentView(viewGroup);
        contentFrameLayout.f5758do = new C1(this);
        this.f5226do = viewGroup;
        Object obj = this.f5249for;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f5242do;
        if (!TextUtils.isEmpty(title)) {
            InterfaceC2643dd interfaceC2643dd2 = this.f5241do;
            if (interfaceC2643dd2 != null) {
                interfaceC2643dd2.mo3378for(title);
            } else {
                ActionBar actionBar = this.f5232do;
                if (actionBar != null) {
                    actionBar.mo3221super(title);
                } else {
                    TextView textView = this.f5229do;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f5226do.findViewById(R.id.content);
        View decorView = this.f5227do.getDecorView();
        contentFrameLayout2.f5756do.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        if (contentFrameLayout2.f5757do == null) {
            contentFrameLayout2.f5757do = new TypedValue();
        }
        obtainStyledAttributes2.getValue(124, contentFrameLayout2.f5757do);
        if (contentFrameLayout2.f5760if == null) {
            contentFrameLayout2.f5760if = new TypedValue();
        }
        obtainStyledAttributes2.getValue(125, contentFrameLayout2.f5760if);
        if (obtainStyledAttributes2.hasValue(122)) {
            if (contentFrameLayout2.f5759for == null) {
                contentFrameLayout2.f5759for = new TypedValue();
            }
            obtainStyledAttributes2.getValue(122, contentFrameLayout2.f5759for);
        }
        if (obtainStyledAttributes2.hasValue(123)) {
            if (contentFrameLayout2.f5761new == null) {
                contentFrameLayout2.f5761new = new TypedValue();
            }
            obtainStyledAttributes2.getValue(123, contentFrameLayout2.f5761new);
        }
        if (obtainStyledAttributes2.hasValue(120)) {
            if (contentFrameLayout2.f5762try == null) {
                contentFrameLayout2.f5762try = new TypedValue();
            }
            obtainStyledAttributes2.getValue(120, contentFrameLayout2.f5762try);
        }
        if (obtainStyledAttributes2.hasValue(121)) {
            if (contentFrameLayout2.f5755case == null) {
                contentFrameLayout2.f5755case = new TypedValue();
            }
            obtainStyledAttributes2.getValue(121, contentFrameLayout2.f5755case);
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f5250for = true;
        PanelFeatureState a = a(0);
        if (this.f5257super || a.f5268do != null) {
            return;
        }
        this.f5246else |= 4096;
        if (this.f5262while) {
            return;
        }
        this.f5227do.getDecorView().postOnAnimation(this.f5236do);
        this.f5262while = true;
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: try, reason: not valid java name */
    public final <T extends View> T mo3266try(int i) {
        m3265transient();
        return (T) this.f5227do.findViewById(i);
    }

    @Override // androidx.appcompat.app.Cfor
    /* renamed from: while, reason: not valid java name */
    public final void mo3267while() {
        m3246finally(true, false);
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$this, reason: invalid class name */
    public class Cthis extends WindowCallbackC2806gM {

        /* renamed from: do, reason: not valid java name */
        public Cif f5296do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f5298do;

        /* renamed from: for, reason: not valid java name */
        public boolean f5299for;

        /* renamed from: if, reason: not valid java name */
        public boolean f5300if;

        public Cthis(Window.Callback callback) {
            super(callback);
        }

        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return this.f5300if ? ((WindowCallbackC2806gM) this).f13156do.dispatchKeyEvent(keyEvent) : AppCompatDelegateImpl.this.m3252interface(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
        
            if (r6 != false) goto L20;
         */
        /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x004e A[ORIG_RETURN, RETURN] */
        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean dispatchKeyShortcutEvent(android.view.KeyEvent r6) {
            /*
                r5 = this;
                boolean r0 = super.dispatchKeyShortcutEvent(r6)
                r1 = 1
                if (r0 != 0) goto L4f
                int r0 = r6.getKeyCode()
                androidx.appcompat.app.AppCompatDelegateImpl r2 = androidx.appcompat.app.AppCompatDelegateImpl.this
                r2.c()
                androidx.appcompat.app.ActionBar r3 = r2.f5232do
                r4 = 0
                if (r3 == 0) goto L1c
                boolean r0 = r3.mo3222this(r0, r6)
                if (r0 == 0) goto L1c
                goto L48
            L1c:
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = r2.f5233do
                if (r0 == 0) goto L31
                int r3 = r6.getKeyCode()
                boolean r0 = r2.g(r0, r3, r6)
                if (r0 == 0) goto L31
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r6 = r2.f5233do
                if (r6 == 0) goto L48
                r6.f5275if = r1
                goto L48
            L31:
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = r2.f5233do
                if (r0 != 0) goto L4a
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = r2.a(r4)
                r2.h(r0, r6)
                int r3 = r6.getKeyCode()
                boolean r6 = r2.g(r0, r3, r6)
                r0.f5270do = r4
                if (r6 == 0) goto L4a
            L48:
                r6 = 1
                goto L4b
            L4a:
                r6 = 0
            L4b:
                if (r6 == 0) goto L4e
                goto L4f
            L4e:
                r1 = 0
            L4f:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.Cthis.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
        }

        /* renamed from: do, reason: not valid java name */
        public final void m3284do(Window.Callback callback) {
            try {
                this.f5298do = true;
                callback.onContentChanged();
            } finally {
                this.f5298do = false;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:54:0x0138, code lost:
        
            if (r11.isLaidOut() != false) goto L56;
         */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final defpackage.WF m3285if(android.view.ActionMode.Callback r11) {
            /*
                Method dump skipped, instructions count: 426
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.Cthis.m3285if(android.view.ActionMode$Callback):WF");
        }

        @Override // android.view.Window.Callback
        public final void onContentChanged() {
            if (this.f5298do) {
                ((WindowCallbackC2806gM) this).f13156do.onContentChanged();
            }
        }

        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof androidx.appcompat.view.menu.Ccase)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        public final View onCreatePanelView(int i) {
            Cif cif = this.f5296do;
            if (cif != null) {
                View view = i == 0 ? new View(androidx.appcompat.app.Ctry.this.f5358do.getContext()) : null;
                if (view != null) {
                    return view;
                }
            }
            return super.onCreatePanelView(i);
        }

        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        public final boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i == 108) {
                appCompatDelegateImpl.c();
                ActionBar actionBar = appCompatDelegateImpl.f5232do;
                if (actionBar != null) {
                    actionBar.mo3217for(true);
                }
            } else {
                appCompatDelegateImpl.getClass();
            }
            return true;
        }

        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        public final void onPanelClosed(int i, Menu menu) {
            if (this.f5299for) {
                ((WindowCallbackC2806gM) this).f13156do.onPanelClosed(i, menu);
                return;
            }
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i == 108) {
                appCompatDelegateImpl.c();
                ActionBar actionBar = appCompatDelegateImpl.f5232do;
                if (actionBar != null) {
                    actionBar.mo3217for(false);
                    return;
                }
                return;
            }
            if (i != 0) {
                appCompatDelegateImpl.getClass();
                return;
            }
            PanelFeatureState a = appCompatDelegateImpl.a(i);
            if (a.f5272for) {
                appCompatDelegateImpl.m3259strictfp(a, false);
            }
        }

        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            androidx.appcompat.view.menu.Ccase ccase = menu instanceof androidx.appcompat.view.menu.Ccase ? (androidx.appcompat.view.menu.Ccase) menu : null;
            if (i == 0 && ccase == null) {
                return false;
            }
            if (ccase != null) {
                ccase.f5400break = true;
            }
            Cif cif = this.f5296do;
            if (cif != null) {
                Ctry.C0027try c0027try = (Ctry.C0027try) cif;
                if (i == 0) {
                    androidx.appcompat.app.Ctry ctry = androidx.appcompat.app.Ctry.this;
                    if (!ctry.f5360do) {
                        ctry.f5358do.f6012if = true;
                        ctry.f5360do = true;
                    }
                }
            }
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (ccase != null) {
                ccase.f5400break = false;
            }
            return onPreparePanel;
        }

        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            androidx.appcompat.view.menu.Ccase ccase = AppCompatDelegateImpl.this.a(0).f5268do;
            if (ccase != null) {
                super.onProvideKeyboardShortcuts(list, ccase, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return (AppCompatDelegateImpl.this.f5253if && i == 0) ? m3285if(callback) : super.onWindowStartingActionMode(callback, i);
        }

        @Override // defpackage.WindowCallbackC2806gM, android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (AppCompatDelegateImpl.this.f5253if) {
                return m3285if(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}

package com.fsck.k9.ui.base;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.EdgeToEdgeApi23;
import androidx.activity.EdgeToEdgeApi26;
import androidx.activity.EdgeToEdgeApi28;
import androidx.activity.EdgeToEdgeApi29;
import androidx.activity.EdgeToEdgeApi30;
import androidx.activity.EdgeToEdgeApi35;
import androidx.activity.EdgeToEdgeBase;
import androidx.activity.SystemBarStyle;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.app.ToolbarActionBar;
import androidx.appcompat.app.WindowDecorActionBar;
import androidx.appcompat.widget.Toolbar;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.lifecycle.ViewModelKt;
import androidx.work.OperationKt$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.controller.push.PushController;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Locale;
import java.util.WeakHashMap;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.core.ui.theme.api.Theme;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BaseActivity extends AppCompatActivity {
    public final Lazy appLanguageManager$delegate;
    public Locale overrideLocaleOnLaunch;
    public final Lazy pushController$delegate;
    public final Lazy themeManager$delegate;
    public final ThemeType themeType;

    public BaseActivity(ThemeType themeType) {
        this.themeType = themeType;
        final int i = 0;
        Function0 function0 = new Function0(this) { // from class: com.fsck.k9.ui.base.BaseActivity$special$$inlined$inject$default$1
            public final /* synthetic */ BaseActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                BaseActivity baseActivity = this.$this_inject;
                switch (i2) {
                    case 0:
                        return AtomicFU.getKoinScope(baseActivity).resolve(Reflection.getOrCreateKotlinClass(PushController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(baseActivity).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(baseActivity).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.pushController$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i2 = 1;
        this.themeManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.base.BaseActivity$special$$inlined$inject$default$1
            public final /* synthetic */ BaseActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                BaseActivity baseActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(baseActivity).resolve(Reflection.getOrCreateKotlinClass(PushController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(baseActivity).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(baseActivity).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                }
            }
        });
        final int i3 = 2;
        this.appLanguageManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: com.fsck.k9.ui.base.BaseActivity$special$$inlined$inject$default$1
            public final /* synthetic */ BaseActivity $this_inject;

            {
                this.$this_inject = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                BaseActivity baseActivity = this.$this_inject;
                switch (i22) {
                    case 0:
                        return AtomicFU.getKoinScope(baseActivity).resolve(Reflection.getOrCreateKotlinClass(PushController.class), null, null);
                    case 1:
                        return AtomicFU.getKoinScope(baseActivity).resolve(Reflection.getOrCreateKotlinClass(ThemeManager.class), null, null);
                    default:
                        return AtomicFU.getKoinScope(baseActivity).resolve(Reflection.getOrCreateKotlinClass(AppLanguageManager.class), null, null);
                }
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        context.getClass();
        Locale locale = ((AppLanguageManager) this.appLanguageManager$delegate.getValue()).currentOverrideLocale;
        this.overrideLocaleOnLaunch = locale;
        if (locale != null) {
            context = new LocaleContextWrapper(context, locale);
        }
        super.attachBaseContext(context);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        int i;
        int ordinal = this.themeType.ordinal();
        Lazy lazy = this.themeManager$delegate;
        char c = 1;
        char c2 = 1;
        if (ordinal == 0) {
            ((ThemeManager) lazy.getValue()).getClass();
            i = R.style.Theme_K9_DayNight;
        } else if (ordinal != 1) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        } else {
            ((ThemeManager) lazy.getValue()).getClass();
            i = R.style.Theme_K9_DayNight_Dialog_Translucent;
        }
        setTheme(i);
        ((PushController) this.pushController$delegate.getValue()).init();
        int i2 = 0;
        SystemBarStyle systemBarStyle = new SystemBarStyle(0, 0, new BorderKt$$ExternalSyntheticLambda1(c2 == true ? 1 : 0));
        SystemBarStyle systemBarStyle2 = new SystemBarStyle(EdgeToEdge.DefaultLightScrim, EdgeToEdge.DefaultDarkScrim, new BorderKt$$ExternalSyntheticLambda1(c == true ? 1 : 0));
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        EdgeToEdgeBase edgeToEdgeBase = EdgeToEdge.Impl;
        if (edgeToEdgeBase == null) {
            int i3 = Build.VERSION.SDK_INT;
            edgeToEdgeBase = i3 >= 35 ? new EdgeToEdgeApi35() : i3 >= 30 ? new EdgeToEdgeApi30() : i3 >= 29 ? new EdgeToEdgeApi29() : i3 >= 28 ? new EdgeToEdgeApi28() : i3 >= 26 ? new EdgeToEdgeApi26() : new EdgeToEdgeApi23();
            EdgeToEdge.Impl = edgeToEdgeBase;
        }
        EdgeToEdgeBase edgeToEdgeBase2 = edgeToEdgeBase;
        final OperationKt$$ExternalSyntheticLambda0 operationKt$$ExternalSyntheticLambda0 = new OperationKt$$ExternalSyntheticLambda0(edgeToEdgeBase2, systemBarStyle, systemBarStyle2, this, decorView, 1);
        ViewGroup viewGroup = (ViewGroup) decorView;
        int i4 = 0;
        while (true) {
            if (i4 >= viewGroup.getChildCount()) {
                final Context context = viewGroup.getContext();
                View view = new View(context) { // from class: androidx.activity.EdgeToEdge$enableEdgeToEdge$1$2
                    @Override // android.view.View
                    public final void onConfigurationChanged(Configuration configuration) {
                        configuration.getClass();
                        OperationKt$$ExternalSyntheticLambda0.this.run();
                    }
                };
                view.setTag(edgeToEdgeBase2);
                view.setVisibility(8);
                view.setWillNotDraw(true);
                viewGroup.addView(view);
                break;
            }
            int i5 = i4 + 1;
            View childAt = viewGroup.getChildAt(i4);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            if (childAt.getTag() instanceof EdgeToEdgeBase) {
                break;
            } else {
                i4 = i5;
            }
        }
        operationKt$$ExternalSyntheticLambda0.run();
        Window window = getWindow();
        window.getClass();
        edgeToEdgeBase2.adjustLayoutInDisplayCutoutMode(window);
        Window window2 = getWindow();
        getWindow().getDecorView();
        int i6 = Build.VERSION.SDK_INT;
        (i6 >= 35 ? new WindowInsetsControllerCompat$Impl35(window2) : i6 >= 30 ? new WindowInsetsControllerCompat$Impl30(window2) : i6 >= 26 ? new WindowInsetsControllerCompat$Impl26(window2) : new WindowInsetsControllerCompat$Impl23(window2)).setAppearanceLightStatusBars(((ThemeManager) lazy.getValue()).getAppTheme() == Theme.LIGHT);
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 31) {
            getWindow().getDecorView().setLayoutDirection(getResources().getConfiguration().getLayoutDirection());
        }
        ViewModelKt.asLiveData$default(((AppLanguageManager) this.appLanguageManager$delegate.getValue()).overrideLocale).observe(this, new BaseActivity$sam$androidx_lifecycle_Observer$0(i2, new AbstractMap$$ExternalSyntheticLambda0(10, this)));
    }

    public final void setLayout(int i) {
        setContentView(i);
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.coordinator_layout);
        if (viewGroup == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("TB layouts must provide a ViewGroup with id='coordinator_layout'.");
            return;
        }
        AppBarLayout appBarLayout = (AppBarLayout) findViewById(R.id.app_bar_layout);
        if (appBarLayout == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("TB layouts must provide an AppBarLayout with id='app_bar_layout'.");
            return;
        }
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("TB layouts must provide a Toolbar with id='toolbar'.");
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById(R.id.content_container);
        if (viewGroup2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("TB layouts must provide a FrameLayout with id='content_container'.");
            return;
        }
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        if (appCompatDelegateImpl.mHost instanceof Activity) {
            appCompatDelegateImpl.initWindowDecorActionBar();
            ActionBar actionBar = appCompatDelegateImpl.mActionBar;
            if (actionBar instanceof WindowDecorActionBar) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
                return;
            }
            appCompatDelegateImpl.mMenuInflater = null;
            if (actionBar != null) {
                actionBar.onDestroy();
            }
            appCompatDelegateImpl.mActionBar = null;
            Object obj = appCompatDelegateImpl.mHost;
            ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : appCompatDelegateImpl.mTitle, appCompatDelegateImpl.mAppCompatWindowCallback);
            appCompatDelegateImpl.mActionBar = toolbarActionBar;
            appCompatDelegateImpl.mAppCompatWindowCallback.mActionBarCallback = toolbarActionBar.mMenuCallback;
            toolbar.setBackInvokedCallbackEnabled(true);
            appCompatDelegateImpl.invalidateOptionsMenu();
        }
        CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 = new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(17, appBarLayout, viewGroup2);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(viewGroup, captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0);
    }

    public BaseActivity() {
        this(ThemeType.DEFAULT);
    }
}

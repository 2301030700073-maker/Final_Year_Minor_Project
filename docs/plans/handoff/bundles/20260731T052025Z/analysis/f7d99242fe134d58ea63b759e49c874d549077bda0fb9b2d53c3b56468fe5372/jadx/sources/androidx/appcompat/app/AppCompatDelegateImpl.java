package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.ToolbarActionBar;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.StandaloneActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper$Api23Impl;
import androidx.appcompat.view.WindowCallbackWrapper$Api24Impl;
import androidx.appcompat.view.WindowCallbackWrapper$Api26Impl;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.ViewUtils;
import androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.cardview.widget.CardView;
import androidx.collection.SimpleArrayMap;
import androidx.compose.ui.window.Api33Impl$$ExternalSyntheticLambda0;
import androidx.core.app.NavUtils;
import androidx.core.os.LocaleListCompat;
import androidx.core.os.LocaleListInterface;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;
import net.openid.appauth.JsonUtil$Field;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {
    public ActionBar mActionBar;
    public AnonymousClass3 mActionMenuPresenterCallback;
    public ActionMode mActionMode;
    public PopupWindow mActionModePopup;
    public ActionBarContextView mActionModeView;
    public int mActivityHandlesConfigFlags;
    public boolean mActivityHandlesConfigFlagsChecked;
    public AppCompatViewInflater mAppCompatViewInflater;
    public AppCompatWindowCallback mAppCompatWindowCallback;
    public AutoTimeNightModeManager mAutoBatteryNightModeManager;
    public AutoTimeNightModeManager mAutoTimeNightModeManager;
    public OnBackInvokedCallback mBackCallback;
    public boolean mBaseContextAttached;
    public boolean mClosingActionMenu;
    public final Context mContext;
    public boolean mCreated;
    public ActionBarOverlayLayout mDecorContentParent;
    public boolean mDestroyed;
    public OnBackInvokedDispatcher mDispatcher;
    public Configuration mEffectiveConfiguration;
    public boolean mEnableDefaultActionBarUp;
    public boolean mFeatureIndeterminateProgress;
    public boolean mFeatureProgress;
    public boolean mHasActionBar;
    public final Object mHost;
    public int mInvalidatePanelMenuFeatures;
    public boolean mInvalidatePanelMenuPosted;
    public boolean mIsFloating;
    public final int mLocalNightMode;
    public boolean mLongPressBackDown;
    public SupportMenuInflater mMenuInflater;
    public boolean mOverlayActionBar;
    public boolean mOverlayActionMode;
    public AnonymousClass3 mPanelMenuPresenterCallback;
    public PanelFeatureState[] mPanels;
    public PanelFeatureState mPreparedPanel;
    public AnonymousClass2 mShowActionModePopup;
    public View mStatusGuard;
    public ViewGroup mSubDecor;
    public boolean mSubDecorInstalled;
    public Rect mTempRect1;
    public Rect mTempRect2;
    public int mThemeResId;
    public CharSequence mTitle;
    public TextView mTitleView;
    public Window mWindow;
    public boolean mWindowNoTitle;
    public static final SimpleArrayMap sLocalNightModes = new SimpleArrayMap(0);
    public static final int[] sWindowBackgroundStyleable = {R.attr.windowBackground};
    public static final boolean sCanReturnDifferentContext = !"robolectric".equals(Build.FINGERPRINT);
    public ViewPropertyAnimatorCompat mFadeAnim = null;
    public final AnonymousClass2 mInvalidatePanelMenuRunnable = new AnonymousClass2(this, 0);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$2, reason: invalid class name */
    public final class AnonymousClass2 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ AppCompatDelegateImpl this$0;

        public /* synthetic */ AnonymousClass2(AppCompatDelegateImpl appCompatDelegateImpl, int i) {
            this.$r8$classId = i;
            this.this$0 = appCompatDelegateImpl;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewGroup viewGroup;
            int i = this.$r8$classId;
            int i2 = 1;
            AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
            switch (i) {
                case 0:
                    if ((appCompatDelegateImpl.mInvalidatePanelMenuFeatures & 1) != 0) {
                        appCompatDelegateImpl.doInvalidatePanelMenu(0);
                    }
                    if ((appCompatDelegateImpl.mInvalidatePanelMenuFeatures & 4096) != 0) {
                        appCompatDelegateImpl.doInvalidatePanelMenu(108);
                    }
                    appCompatDelegateImpl.mInvalidatePanelMenuPosted = false;
                    appCompatDelegateImpl.mInvalidatePanelMenuFeatures = 0;
                    break;
                default:
                    appCompatDelegateImpl.mActionModePopup.showAtLocation(appCompatDelegateImpl.mActionModeView, 55, 0, 0);
                    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.mFadeAnim;
                    if (viewPropertyAnimatorCompat != null) {
                        viewPropertyAnimatorCompat.cancel();
                    }
                    if (!appCompatDelegateImpl.mSubDecorInstalled || (viewGroup = appCompatDelegateImpl.mSubDecor) == null || !viewGroup.isLaidOut()) {
                        appCompatDelegateImpl.mActionModeView.setAlpha(1.0f);
                        appCompatDelegateImpl.mActionModeView.setVisibility(0);
                        break;
                    } else {
                        appCompatDelegateImpl.mActionModeView.setAlpha(0.0f);
                        ViewPropertyAnimatorCompat animate = ViewCompat.animate(appCompatDelegateImpl.mActionModeView);
                        animate.alpha(1.0f);
                        appCompatDelegateImpl.mFadeAnim = animate;
                        animate.setListener(new AnonymousClass7(i2, this));
                        break;
                    }
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$3, reason: invalid class name */
    public final class AnonymousClass3 implements OnApplyWindowInsetsListener, ContentFrameLayout.OnAttachListener, MenuPresenter.Callback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ AppCompatDelegateImpl this$0;

        public /* synthetic */ AnonymousClass3(AppCompatDelegateImpl appCompatDelegateImpl, int i) {
            this.$r8$classId = i;
            this.this$0 = appCompatDelegateImpl;
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int i;
            int i2;
            int i3;
            int i4;
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
            Context context = appCompatDelegateImpl.mContext;
            int systemWindowInsetTop2 = windowInsetsCompat.getSystemWindowInsetTop();
            ActionBarContextView actionBarContextView = appCompatDelegateImpl.mActionModeView;
            if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                i = 0;
                i2 = 0;
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) appCompatDelegateImpl.mActionModeView.getLayoutParams();
                if (appCompatDelegateImpl.mActionModeView.isShown()) {
                    if (appCompatDelegateImpl.mTempRect1 == null) {
                        appCompatDelegateImpl.mTempRect1 = new Rect();
                        appCompatDelegateImpl.mTempRect2 = new Rect();
                    }
                    Rect rect = appCompatDelegateImpl.mTempRect1;
                    Rect rect2 = appCompatDelegateImpl.mTempRect2;
                    rect.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                    ViewGroup viewGroup = appCompatDelegateImpl.mSubDecor;
                    if (Build.VERSION.SDK_INT >= 29) {
                        boolean z = ViewUtils.sInitComputeFitSystemWindowsMethod;
                        ViewUtils.Api29Impl.computeFitSystemWindows(viewGroup, rect, rect2);
                        i3 = 0;
                    } else {
                        if (ViewUtils.sInitComputeFitSystemWindowsMethod) {
                            i3 = 0;
                        } else {
                            ViewUtils.sInitComputeFitSystemWindowsMethod = true;
                            i3 = 0;
                            try {
                                Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                                ViewUtils.sComputeFitSystemWindowsMethod = declaredMethod;
                                if (!declaredMethod.isAccessible()) {
                                    ViewUtils.sComputeFitSystemWindowsMethod.setAccessible(true);
                                }
                            } catch (NoSuchMethodException unused) {
                                Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
                            }
                        }
                        Method method = ViewUtils.sComputeFitSystemWindowsMethod;
                        if (method != null) {
                            try {
                                Object[] objArr = new Object[2];
                                objArr[i3] = rect;
                                objArr[1] = rect2;
                                method.invoke(viewGroup, objArr);
                            } catch (Exception e) {
                                Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
                            }
                        }
                    }
                    int i5 = rect.top;
                    int i6 = rect.left;
                    int i7 = rect.right;
                    ViewGroup viewGroup2 = appCompatDelegateImpl.mSubDecor;
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    WindowInsetsCompat rootWindowInsets = ViewCompat.Api23Impl.getRootWindowInsets(viewGroup2);
                    int systemWindowInsetLeft = rootWindowInsets == null ? i3 : rootWindowInsets.getSystemWindowInsetLeft();
                    int systemWindowInsetRight = rootWindowInsets == null ? i3 : rootWindowInsets.getSystemWindowInsetRight();
                    if (marginLayoutParams.topMargin == i5 && marginLayoutParams.leftMargin == i6 && marginLayoutParams.rightMargin == i7) {
                        i4 = i3;
                    } else {
                        marginLayoutParams.topMargin = i5;
                        marginLayoutParams.leftMargin = i6;
                        marginLayoutParams.rightMargin = i7;
                        i4 = 1;
                    }
                    if (i5 <= 0 || appCompatDelegateImpl.mStatusGuard != null) {
                        View view2 = appCompatDelegateImpl.mStatusGuard;
                        if (view2 != null) {
                            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                            int i8 = marginLayoutParams2.height;
                            int i9 = marginLayoutParams.topMargin;
                            if (i8 != i9 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                                marginLayoutParams2.height = i9;
                                marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                                marginLayoutParams2.rightMargin = systemWindowInsetRight;
                                appCompatDelegateImpl.mStatusGuard.setLayoutParams(marginLayoutParams2);
                            }
                        }
                    } else {
                        View view3 = new View(context);
                        appCompatDelegateImpl.mStatusGuard = view3;
                        view3.setVisibility(8);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                        layoutParams.leftMargin = systemWindowInsetLeft;
                        layoutParams.rightMargin = systemWindowInsetRight;
                        appCompatDelegateImpl.mSubDecor.addView(appCompatDelegateImpl.mStatusGuard, -1, layoutParams);
                    }
                    View view4 = appCompatDelegateImpl.mStatusGuard;
                    r8 = view4 == null ? i3 : 1;
                    if (r8 != 0 && view4.getVisibility() != 0) {
                        View view5 = appCompatDelegateImpl.mStatusGuard;
                        view5.setBackgroundColor((view5.getWindowSystemUiVisibility() & 8192) != 0 ? context.getColor(com.fsck.k9.R.color.abc_decor_view_status_guard_light) : context.getColor(com.fsck.k9.R.color.abc_decor_view_status_guard));
                    }
                    if (!appCompatDelegateImpl.mOverlayActionMode && r8 != 0) {
                        systemWindowInsetTop2 = i3;
                    }
                    i = i3;
                    i2 = r8;
                    r8 = i4;
                } else {
                    i = 0;
                    if (marginLayoutParams.topMargin != 0) {
                        marginLayoutParams.topMargin = 0;
                        i2 = 0;
                    } else {
                        i2 = 0;
                        r8 = 0;
                    }
                }
                if (r8 != 0) {
                    appCompatDelegateImpl.mActionModeView.setLayoutParams(marginLayoutParams);
                }
            }
            View view6 = appCompatDelegateImpl.mStatusGuard;
            if (view6 != null) {
                view6.setVisibility(i2 != 0 ? i : 8);
            }
            return ViewCompat.onApplyWindowInsets(view, systemWindowInsetTop != systemWindowInsetTop2 ? windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), systemWindowInsetTop2, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()) : windowInsetsCompat);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            PanelFeatureState panelFeatureState;
            int i = this.$r8$classId;
            AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
            switch (i) {
                case 2:
                    appCompatDelegateImpl.checkCloseActionMenu(menuBuilder);
                    break;
                default:
                    MenuBuilder rootMenu = menuBuilder.getRootMenu();
                    int i2 = 0;
                    boolean z2 = rootMenu != menuBuilder;
                    if (z2) {
                        menuBuilder = rootMenu;
                    }
                    PanelFeatureState[] panelFeatureStateArr = appCompatDelegateImpl.mPanels;
                    int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
                    while (true) {
                        if (i2 >= length) {
                            panelFeatureState = null;
                        } else {
                            panelFeatureState = panelFeatureStateArr[i2];
                            if (panelFeatureState == null || panelFeatureState.menu != menuBuilder) {
                                i2++;
                            }
                        }
                    }
                    if (panelFeatureState != null) {
                        if (!z2) {
                            appCompatDelegateImpl.closePanel(panelFeatureState, z);
                            break;
                        } else {
                            appCompatDelegateImpl.callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, rootMenu);
                            appCompatDelegateImpl.closePanel(panelFeatureState, true);
                            break;
                        }
                    }
                    break;
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback;
            int i = this.$r8$classId;
            AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
            switch (i) {
                case 2:
                    Window.Callback callback2 = appCompatDelegateImpl.mWindow.getCallback();
                    if (callback2 != null) {
                        callback2.onMenuOpened(108, menuBuilder);
                        break;
                    }
                    break;
                default:
                    if (menuBuilder == menuBuilder.getRootMenu() && appCompatDelegateImpl.mHasActionBar && (callback = appCompatDelegateImpl.mWindow.getCallback()) != null && !appCompatDelegateImpl.mDestroyed) {
                        callback.onMenuOpened(108, menuBuilder);
                        break;
                    }
                    break;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$7, reason: invalid class name */
    public final class AnonymousClass7 extends SchemaInfoUtilKt {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass7(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public final void onAnimationEnd() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) obj;
                    appCompatDelegateImpl.mActionModeView.setAlpha(1.0f);
                    appCompatDelegateImpl.mFadeAnim.setListener(null);
                    appCompatDelegateImpl.mFadeAnim = null;
                    break;
                case 1:
                    AppCompatDelegateImpl appCompatDelegateImpl2 = ((AnonymousClass2) obj).this$0;
                    appCompatDelegateImpl2.mActionModeView.setAlpha(1.0f);
                    appCompatDelegateImpl2.mFadeAnim.setListener(null);
                    appCompatDelegateImpl2.mFadeAnim = null;
                    break;
                default:
                    AppCompatDelegateImpl appCompatDelegateImpl3 = (AppCompatDelegateImpl) ((CardView.AnonymousClass1) obj).this$0;
                    appCompatDelegateImpl3.mActionModeView.setVisibility(8);
                    PopupWindow popupWindow = appCompatDelegateImpl3.mActionModePopup;
                    if (popupWindow != null) {
                        popupWindow.dismiss();
                    } else if (appCompatDelegateImpl3.mActionModeView.getParent() instanceof View) {
                        View view = (View) appCompatDelegateImpl3.mActionModeView.getParent();
                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                        view.requestApplyInsets();
                    }
                    appCompatDelegateImpl3.mActionModeView.killMode();
                    appCompatDelegateImpl3.mFadeAnim.setListener(null);
                    appCompatDelegateImpl3.mFadeAnim = null;
                    ViewGroup viewGroup = appCompatDelegateImpl3.mSubDecor;
                    WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                    viewGroup.requestApplyInsets();
                    break;
            }
        }

        @Override // androidx.room.util.SchemaInfoUtilKt, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) obj;
                    appCompatDelegateImpl.mActionModeView.setVisibility(0);
                    if (appCompatDelegateImpl.mActionModeView.getParent() instanceof View) {
                        View view = (View) appCompatDelegateImpl.mActionModeView.getParent();
                        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                        view.requestApplyInsets();
                        break;
                    }
                    break;
                case 1:
                    ((AnonymousClass2) obj).this$0.mActionModeView.setVisibility(0);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api21Impl {
        public static boolean isPowerSaveMode(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }

        public static String toLanguageTag(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api24Impl {
        public static void generateConfigDelta_locale(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }

        public static LocaleListCompat getLocales(Configuration configuration) {
            return LocaleListCompat.forLanguageTags(configuration.getLocales().toLanguageTags());
        }

        public static void setDefaultLocales(LocaleListCompat localeListCompat) {
            LocaleList.setDefault(LocaleList.forLanguageTags(localeListCompat.mImpl.toLanguageTags()));
        }

        public static void setLocales(Configuration configuration, LocaleListCompat localeListCompat) {
            configuration.setLocales(LocaleList.forLanguageTags(localeListCompat.mImpl.toLanguageTags()));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api33Impl {
        public static OnBackInvokedDispatcher getOnBackInvokedDispatcher(Activity activity) {
            return activity.getOnBackInvokedDispatcher();
        }

        public static OnBackInvokedCallback registerOnBackPressedCallback(Object obj, AppCompatDelegateImpl appCompatDelegateImpl) {
            Objects.requireNonNull(appCompatDelegateImpl);
            Api33Impl$$ExternalSyntheticLambda0 api33Impl$$ExternalSyntheticLambda0 = new Api33Impl$$ExternalSyntheticLambda0(1, appCompatDelegateImpl);
            ZslControlImpl$$ExternalSyntheticLambda1.m2m(obj).registerOnBackInvokedCallback(1000000, api33Impl$$ExternalSyntheticLambda0);
            return api33Impl$$ExternalSyntheticLambda0;
        }

        public static void unregisterOnBackInvokedCallback(Object obj, Object obj2) {
            ZslControlImpl$$ExternalSyntheticLambda1.m2m(obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ListMenuDecorView extends ContentFrameLayout {
        public ListMenuDecorView(ContextThemeWrapper contextThemeWrapper) {
            super(contextThemeWrapper);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                    appCompatDelegateImpl.closePanel(appCompatDelegateImpl.getPanelState(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i) {
            setBackgroundDrawable(Utf8.SafeProcessor.getDrawable(getContext(), i));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PanelFeatureState {
        public int background;
        public View createdPanelView;
        public ListMenuDecorView decorView;
        public int featureId;
        public Bundle frozenActionViewState;
        public int gravity;
        public boolean isHandled;
        public boolean isOpen;
        public boolean isPrepared;
        public ListMenuPresenter listMenuPresenter;
        public ContextThemeWrapper listPresenterContext;
        public MenuBuilder menu;
        public boolean refreshDecorView;
        public boolean refreshMenuContent;
        public View shownPanelView;
        public int windowAnimations;
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        AppCompatActivity appCompatActivity = null;
        this.mLocalNightMode = -100;
        this.mContext = context;
        this.mHost = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
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
                } else {
                    break;
                }
            }
            if (appCompatActivity != null) {
                this.mLocalNightMode = ((AppCompatDelegateImpl) appCompatActivity.getDelegate()).mLocalNightMode;
            }
        }
        if (this.mLocalNightMode == -100) {
            String name = this.mHost.getClass().getName();
            SimpleArrayMap simpleArrayMap = sLocalNightModes;
            Integer num = (Integer) simpleArrayMap.get(name);
            if (num != null) {
                this.mLocalNightMode = num.intValue();
                simpleArrayMap.remove(this.mHost.getClass().getName());
            }
        }
        if (window != null) {
            attachToWindow(window);
        }
        AppCompatDrawableManager.preload();
    }

    public static LocaleListCompat calculateApplicationLocales(Context context) {
        LocaleListCompat localeListCompat;
        LocaleListCompat forLanguageTags;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 || (localeListCompat = AppCompatDelegate.sRequestedAppLocales) == null) {
            return null;
        }
        LocaleListInterface localeListInterface = localeListCompat.mImpl;
        LocaleListCompat configurationLocales = getConfigurationLocales(context.getApplicationContext().getResources().getConfiguration());
        int i2 = 0;
        if (i < 24) {
            forLanguageTags = localeListInterface.isEmpty() ? LocaleListCompat.sEmptyLocaleList : LocaleListCompat.forLanguageTags(Api21Impl.toLanguageTag(localeListInterface.get(0)));
        } else if (localeListInterface.isEmpty()) {
            forLanguageTags = LocaleListCompat.sEmptyLocaleList;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (i2 < configurationLocales.mImpl.size() + localeListInterface.size()) {
                Locale locale = i2 < localeListInterface.size() ? localeListInterface.get(i2) : configurationLocales.mImpl.get(i2 - localeListInterface.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i2++;
            }
            forLanguageTags = LocaleListCompat.create((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return forLanguageTags.mImpl.isEmpty() ? configurationLocales : forLanguageTags;
    }

    public static Configuration createOverrideAppConfiguration(Context context, int i, LocaleListCompat localeListCompat, Configuration configuration, boolean z) {
        int i2 = i != 1 ? i != 2 ? z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (localeListCompat != null) {
            LocaleListInterface localeListInterface = localeListCompat.mImpl;
            if (Build.VERSION.SDK_INT >= 24) {
                Api24Impl.setLocales(configuration2, localeListCompat);
                return configuration2;
            }
            configuration2.setLocale(localeListInterface.get(0));
            configuration2.setLayoutDirection(localeListInterface.get(0));
        }
        return configuration2;
    }

    public static LocaleListCompat getConfigurationLocales(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? Api24Impl.getLocales(configuration) : LocaleListCompat.forLanguageTags(Api21Impl.toLanguageTag(configuration.locale));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ea A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean applyApplicationSpecificConfig(boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.applyApplicationSpecificConfig(boolean, boolean):boolean");
    }

    public final void attachToWindow(Window window) {
        Drawable drawable;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.mWindow != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("AppCompat has already installed itself into the Window");
            return;
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof AppCompatWindowCallback) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("AppCompat has already installed itself into the Window");
            return;
        }
        AppCompatWindowCallback appCompatWindowCallback = new AppCompatWindowCallback(callback);
        this.mAppCompatWindowCallback = appCompatWindowCallback;
        window.setCallback(appCompatWindowCallback);
        Context context = this.mContext;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, sWindowBackgroundStyleable);
        if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawable = null;
        } else {
            AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
            synchronized (appCompatDrawableManager) {
                drawable = appCompatDrawableManager.mResourceManager.getDrawable(context, resourceId, true);
            }
        }
        if (drawable != null) {
            window.setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.mWindow = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.mDispatcher) != null) {
            return;
        }
        Object obj = this.mHost;
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.mBackCallback) != null) {
            Api33Impl.unregisterOnBackInvokedCallback(onBackInvokedDispatcher, onBackInvokedCallback);
            this.mBackCallback = null;
        }
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.mDispatcher = Api33Impl.getOnBackInvokedDispatcher(activity);
                updateBackInvokedCallbackState();
            }
        }
        this.mDispatcher = null;
        updateBackInvokedCallbackState();
    }

    public final void callOnPanelClosed(int i, PanelFeatureState panelFeatureState, MenuBuilder menuBuilder) {
        if (menuBuilder == null) {
            if (panelFeatureState == null && i >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.mPanels;
                if (i < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i];
                }
            }
            if (panelFeatureState != null) {
                menuBuilder = panelFeatureState.menu;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.isOpen) && !this.mDestroyed) {
            AppCompatWindowCallback appCompatWindowCallback = this.mAppCompatWindowCallback;
            Window.Callback callback = this.mWindow.getCallback();
            appCompatWindowCallback.getClass();
            try {
                appCompatWindowCallback.mOnPanelClosedBypassEnabled = true;
                callback.onPanelClosed(i, menuBuilder);
            } finally {
                appCompatWindowCallback.mOnPanelClosedBypassEnabled = false;
            }
        }
    }

    public final void checkCloseActionMenu(MenuBuilder menuBuilder) {
        ActionMenuPresenter actionMenuPresenter;
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.mDecorContentParent;
        actionBarOverlayLayout.pullChildren();
        ActionMenuView actionMenuView = ((ToolbarWidgetWrapper) actionBarOverlayLayout.mDecorToolbar).mToolbar.mMenuView;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.mPresenter) != null) {
            actionMenuPresenter.hideOverflowMenu();
            ActionMenuPresenter.OverflowPopup overflowPopup = actionMenuPresenter.mActionButtonPopup;
            if (overflowPopup != null && overflowPopup.isShowing()) {
                overflowPopup.mPopup.dismiss();
            }
        }
        Window.Callback callback = this.mWindow.getCallback();
        if (callback != null && !this.mDestroyed) {
            callback.onPanelClosed(108, menuBuilder);
        }
        this.mClosingActionMenu = false;
    }

    public final void closePanel(PanelFeatureState panelFeatureState, boolean z) {
        ListMenuDecorView listMenuDecorView;
        ActionBarOverlayLayout actionBarOverlayLayout;
        if (z && panelFeatureState.featureId == 0 && (actionBarOverlayLayout = this.mDecorContentParent) != null) {
            actionBarOverlayLayout.pullChildren();
            if (((ToolbarWidgetWrapper) actionBarOverlayLayout.mDecorToolbar).mToolbar.isOverflowMenuShowing()) {
                checkCloseActionMenu(panelFeatureState.menu);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && panelFeatureState.isOpen && (listMenuDecorView = panelFeatureState.decorView) != null) {
            windowManager.removeView(listMenuDecorView);
            if (z) {
                callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, null);
            }
        }
        panelFeatureState.isPrepared = false;
        panelFeatureState.isHandled = false;
        panelFeatureState.isOpen = false;
        panelFeatureState.shownPanelView = null;
        panelFeatureState.refreshDecorView = true;
        if (this.mPreparedPanel == panelFeatureState) {
            this.mPreparedPanel = null;
        }
        if (panelFeatureState.featureId == 0) {
            updateBackInvokedCallbackState();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
    
        if (r4.dispatchKeyEvent(r7) != false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00e8, code lost:
    
        if (r6.hideOverflowMenu() != false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public final void doInvalidatePanelMenu(int i) {
        PanelFeatureState panelState = getPanelState(i);
        if (panelState.menu != null) {
            Bundle bundle = new Bundle();
            panelState.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState.frozenActionViewState = bundle;
            }
            panelState.menu.stopDispatchingItemsChanged();
            panelState.menu.clear();
        }
        panelState.refreshMenuContent = true;
        panelState.refreshDecorView = true;
        if ((i == 108 || i == 0) && this.mDecorContentParent != null) {
            PanelFeatureState panelState2 = getPanelState(0);
            panelState2.isPrepared = false;
            preparePanel(panelState2, null);
        }
    }

    public final void ensureSubDecor() {
        ViewGroup viewGroup;
        if (this.mSubDecorInstalled) {
            return;
        }
        Context context = this.mContext;
        int[] iArr = R$styleable.AppCompatTheme;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(117)) {
            obtainStyledAttributes.recycle();
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
            return;
        }
        int i = 0;
        int i2 = 1;
        if (obtainStyledAttributes.getBoolean(126, false)) {
            requestWindowFeature(1);
        } else if (obtainStyledAttributes.getBoolean(117, false)) {
            requestWindowFeature(108);
        }
        if (obtainStyledAttributes.getBoolean(118, false)) {
            requestWindowFeature(109);
        }
        if (obtainStyledAttributes.getBoolean(119, false)) {
            requestWindowFeature(10);
        }
        this.mIsFloating = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        ensureWindow();
        this.mWindow.getDecorView();
        LayoutInflater from = LayoutInflater.from(context);
        if (this.mWindowNoTitle) {
            viewGroup = this.mOverlayActionMode ? (ViewGroup) from.inflate(com.fsck.k9.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(com.fsck.k9.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.mIsFloating) {
            viewGroup = (ViewGroup) from.inflate(com.fsck.k9.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.mOverlayActionBar = false;
            this.mHasActionBar = false;
        } else if (this.mHasActionBar) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.fsck.k9.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new ContextThemeWrapper(context, typedValue.resourceId) : context).inflate(com.fsck.k9.R.layout.abc_screen_toolbar, (ViewGroup) null);
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) viewGroup.findViewById(com.fsck.k9.R.id.decor_content_parent);
            this.mDecorContentParent = actionBarOverlayLayout;
            actionBarOverlayLayout.setWindowCallback(this.mWindow.getCallback());
            if (this.mOverlayActionBar) {
                this.mDecorContentParent.initFeature(109);
            }
            if (this.mFeatureProgress) {
                this.mDecorContentParent.initFeature(2);
            }
            if (this.mFeatureIndeterminateProgress) {
                this.mDecorContentParent.initFeature(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            StringBuilder sb = new StringBuilder("AppCompat does not support the current theme features: { windowActionBar: ");
            sb.append(this.mHasActionBar);
            sb.append(", windowActionBarOverlay: ");
            sb.append(this.mOverlayActionBar);
            sb.append(", android:windowIsFloating: ");
            sb.append(this.mIsFloating);
            sb.append(", windowActionModeOverlay: ");
            sb.append(this.mOverlayActionMode);
            sb.append(", windowNoTitle: ");
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(" }", sb, this.mWindowNoTitle));
            return;
        }
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(this, i);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(viewGroup, anonymousClass3);
        if (this.mDecorContentParent == null) {
            this.mTitleView = (TextView) viewGroup.findViewById(com.fsck.k9.R.id.title);
        }
        boolean z = ViewUtils.sInitComputeFitSystemWindowsMethod;
        try {
            Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(viewGroup, null);
        } catch (IllegalAccessException e) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e2) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.fsck.k9.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.mWindow.findViewById(R.id.content);
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
        this.mWindow.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new AnonymousClass3(this, i2));
        this.mSubDecor = viewGroup;
        Object obj = this.mHost;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.mTitle;
        if (!TextUtils.isEmpty(title)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.mDecorContentParent;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setWindowTitle(title);
            } else {
                ActionBar actionBar = this.mActionBar;
                if (actionBar != null) {
                    actionBar.setWindowTitle(title);
                } else {
                    TextView textView = this.mTitleView;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.mSubDecor.findViewById(R.id.content);
        View decorView = this.mWindow.getDecorView();
        contentFrameLayout2.mDecorPadding.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        obtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        obtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (obtainStyledAttributes2.hasValue(122)) {
            obtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (obtainStyledAttributes2.hasValue(123)) {
            obtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (obtainStyledAttributes2.hasValue(120)) {
            obtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (obtainStyledAttributes2.hasValue(121)) {
            obtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.mSubDecorInstalled = true;
        PanelFeatureState panelState = getPanelState(0);
        if (this.mDestroyed || panelState.menu != null) {
            return;
        }
        invalidatePanelMenu(108);
    }

    public final void ensureWindow() {
        if (this.mWindow == null) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                attachToWindow(((Activity) obj).getWindow());
            }
        }
        if (this.mWindow != null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("We have not been given a Window");
    }

    public final Context getActionBarThemedContext() {
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        Context themedContext = actionBar != null ? actionBar.getThemedContext() : null;
        return themedContext == null ? this.mContext : themedContext;
    }

    public final JsonUtil$Field getAutoTimeNightModeManager(Context context) {
        if (this.mAutoTimeNightModeManager == null) {
            if (MenuHostHelper.sInstance == null) {
                Context applicationContext = context.getApplicationContext();
                MenuHostHelper.sInstance = new MenuHostHelper(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.mAutoTimeNightModeManager = new AutoTimeNightModeManager(MenuHostHelper.sInstance);
        }
        return this.mAutoTimeNightModeManager;
    }

    public final PanelFeatureState getPanelState(int i) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.mPanels = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState();
        panelFeatureState2.featureId = i;
        panelFeatureState2.refreshDecorView = false;
        panelFeatureStateArr[i] = panelFeatureState2;
        return panelFeatureState2;
    }

    public final void initWindowDecorActionBar() {
        ensureSubDecor();
        if (this.mHasActionBar && this.mActionBar == null) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                this.mActionBar = new WindowDecorActionBar((Activity) obj, this.mOverlayActionBar);
            } else if (obj instanceof Dialog) {
                this.mActionBar = new WindowDecorActionBar((Dialog) obj);
            }
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                actionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void installViewFactory() {
        LayoutInflater from = LayoutInflater.from(this.mContext);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else {
            if (from.getFactory2() instanceof AppCompatDelegateImpl) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void invalidateOptionsMenu() {
        if (this.mActionBar != null) {
            initWindowDecorActionBar();
            if (this.mActionBar.invalidateOptionsMenu()) {
                return;
            }
            invalidatePanelMenu(0);
        }
    }

    public final void invalidatePanelMenu(int i) {
        this.mInvalidatePanelMenuFeatures = (1 << i) | this.mInvalidatePanelMenuFeatures;
        if (this.mInvalidatePanelMenuPosted) {
            return;
        }
        View decorView = this.mWindow.getDecorView();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        decorView.postOnAnimation(this.mInvalidatePanelMenuRunnable);
        this.mInvalidatePanelMenuPosted = true;
    }

    public final int mapNightMode(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i != 0) {
                    if (i != 1 && i != 2) {
                        if (i != 3) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                            return 0;
                        }
                        if (this.mAutoBatteryNightModeManager == null) {
                            this.mAutoBatteryNightModeManager = new AutoTimeNightModeManager(context);
                        }
                        return this.mAutoBatteryNightModeManager.getApplyableNightMode();
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return getAutoTimeNightModeManager(context).getApplyableNightMode();
                }
            }
            return i;
        }
        return -1;
    }

    public final boolean onBackPressed() {
        boolean z = this.mLongPressBackDown;
        this.mLongPressBackDown = false;
        PanelFeatureState panelState = getPanelState(0);
        if (!panelState.isOpen) {
            ActionMode actionMode = this.mActionMode;
            if (actionMode != null) {
                actionMode.finish();
                return true;
            }
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            if (actionBar == null || !actionBar.collapseActionView()) {
                return false;
            }
        } else if (!z) {
            closePanel(panelState, true);
            return true;
        }
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void onCreate() {
        String str;
        this.mBaseContextAttached = true;
        applyApplicationSpecificConfig(false, true);
        ensureWindow();
        Object obj = this.mHost;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = NavUtils.getParentActivityName(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                ActionBar actionBar = this.mActionBar;
                if (actionBar == null) {
                    this.mEnableDefaultActionBarUp = true;
                } else {
                    actionBar.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
            synchronized (AppCompatDelegate.sActivityDelegatesLock) {
                AppCompatDelegate.removeDelegateFromActives(this);
                AppCompatDelegate.sActivityDelegates.add(new WeakReference(this));
            }
        }
        this.mEffectiveConfiguration = new Configuration(this.mContext.getResources().getConfiguration());
        this.mCreated = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x010e, code lost:
    
        if (r10.equals("ImageButton") == false) goto L24;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r9, java.lang.String r10, android.content.Context r11, android.util.AttributeSet r12) {
        /*
            Method dump skipped, instructions count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDestroy() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.mHost
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = androidx.appcompat.app.AppCompatDelegate.sActivityDelegatesLock
            monitor-enter(r0)
            androidx.appcompat.app.AppCompatDelegate.removeDelegateFromActives(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r3
        L11:
            boolean r0 = r3.mInvalidatePanelMenuPosted
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.mWindow
            android.view.View r0 = r0.getDecorView()
            androidx.appcompat.app.AppCompatDelegateImpl$2 r1 = r3.mInvalidatePanelMenuRunnable
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.mDestroyed = r0
            int r0 = r3.mLocalNightMode
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.mHost
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            androidx.collection.SimpleArrayMap r0 = androidx.appcompat.app.AppCompatDelegateImpl.sLocalNightModes
            java.lang.Object r1 = r3.mHost
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.mLocalNightMode
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            androidx.collection.SimpleArrayMap r0 = androidx.appcompat.app.AppCompatDelegateImpl.sLocalNightModes
            java.lang.Object r1 = r3.mHost
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            androidx.appcompat.app.ActionBar r0 = r3.mActionBar
            if (r0 == 0) goto L63
            r0.onDestroy()
        L63:
            androidx.appcompat.app.AppCompatDelegateImpl$AutoTimeNightModeManager r0 = r3.mAutoTimeNightModeManager
            if (r0 == 0) goto L6a
            r0.cleanup()
        L6a:
            androidx.appcompat.app.AppCompatDelegateImpl$AutoTimeNightModeManager r3 = r3.mAutoBatteryNightModeManager
            if (r3 == 0) goto L71
            r3.cleanup()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onDestroy():void");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        PanelFeatureState panelFeatureState;
        Window.Callback callback = this.mWindow.getCallback();
        if (callback != null && !this.mDestroyed) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            PanelFeatureState[] panelFeatureStateArr = this.mPanels;
            int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
            int i = 0;
            while (true) {
                if (i < length) {
                    panelFeatureState = panelFeatureStateArr[i];
                    if (panelFeatureState != null && panelFeatureState.menu == rootMenu) {
                        break;
                    }
                    i++;
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                return callback.onMenuItemSelected(panelFeatureState.featureId, menuItem);
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if (r6.isOverflowMenuShowing() != false) goto L20;
     */
    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder r6) {
        /*
            r5 = this;
            androidx.appcompat.widget.ActionBarOverlayLayout r6 = r5.mDecorContentParent
            r0 = 1
            r1 = 0
            if (r6 == 0) goto Lc9
            r6.pullChildren()
            androidx.appcompat.widget.DecorToolbar r6 = r6.mDecorToolbar
            androidx.appcompat.widget.ToolbarWidgetWrapper r6 = (androidx.appcompat.widget.ToolbarWidgetWrapper) r6
            androidx.appcompat.widget.Toolbar r6 = r6.mToolbar
            int r2 = r6.getVisibility()
            if (r2 != 0) goto Lc9
            androidx.appcompat.widget.ActionMenuView r6 = r6.mMenuView
            if (r6 == 0) goto Lc9
            boolean r6 = r6.mReserveOverflow
            if (r6 == 0) goto Lc9
            android.content.Context r6 = r5.mContext
            android.view.ViewConfiguration r6 = android.view.ViewConfiguration.get(r6)
            boolean r6 = r6.hasPermanentMenuKey()
            if (r6 == 0) goto L46
            androidx.appcompat.widget.ActionBarOverlayLayout r6 = r5.mDecorContentParent
            r6.pullChildren()
            androidx.appcompat.widget.DecorToolbar r6 = r6.mDecorToolbar
            androidx.appcompat.widget.ToolbarWidgetWrapper r6 = (androidx.appcompat.widget.ToolbarWidgetWrapper) r6
            androidx.appcompat.widget.Toolbar r6 = r6.mToolbar
            androidx.appcompat.widget.ActionMenuView r6 = r6.mMenuView
            if (r6 == 0) goto Lc9
            androidx.appcompat.widget.ActionMenuPresenter r6 = r6.mPresenter
            if (r6 == 0) goto Lc9
            androidx.appcompat.widget.ActionMenuPresenter$OpenOverflowRunnable r2 = r6.mPostedOpenRunnable
            if (r2 != 0) goto L46
            boolean r6 = r6.isOverflowMenuShowing()
            if (r6 == 0) goto Lc9
        L46:
            android.view.Window r6 = r5.mWindow
            android.view.Window$Callback r6 = r6.getCallback()
            androidx.appcompat.widget.ActionBarOverlayLayout r2 = r5.mDecorContentParent
            r2.pullChildren()
            androidx.appcompat.widget.DecorToolbar r2 = r2.mDecorToolbar
            androidx.appcompat.widget.ToolbarWidgetWrapper r2 = (androidx.appcompat.widget.ToolbarWidgetWrapper) r2
            androidx.appcompat.widget.Toolbar r2 = r2.mToolbar
            boolean r2 = r2.isOverflowMenuShowing()
            r3 = 108(0x6c, float:1.51E-43)
            if (r2 == 0) goto L84
            androidx.appcompat.widget.ActionBarOverlayLayout r0 = r5.mDecorContentParent
            r0.pullChildren()
            androidx.appcompat.widget.DecorToolbar r0 = r0.mDecorToolbar
            androidx.appcompat.widget.ToolbarWidgetWrapper r0 = (androidx.appcompat.widget.ToolbarWidgetWrapper) r0
            androidx.appcompat.widget.Toolbar r0 = r0.mToolbar
            androidx.appcompat.widget.ActionMenuView r0 = r0.mMenuView
            if (r0 == 0) goto L76
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.mPresenter
            if (r0 == 0) goto L76
            boolean r0 = r0.hideOverflowMenu()
        L76:
            boolean r0 = r5.mDestroyed
            if (r0 != 0) goto Lc8
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r5 = r5.getPanelState(r1)
            androidx.appcompat.view.menu.MenuBuilder r5 = r5.menu
            r6.onPanelClosed(r3, r5)
            return
        L84:
            if (r6 == 0) goto Lc8
            boolean r2 = r5.mDestroyed
            if (r2 != 0) goto Lc8
            boolean r2 = r5.mInvalidatePanelMenuPosted
            if (r2 == 0) goto La1
            int r2 = r5.mInvalidatePanelMenuFeatures
            r0 = r0 & r2
            if (r0 == 0) goto La1
            android.view.Window r0 = r5.mWindow
            android.view.View r0 = r0.getDecorView()
            androidx.appcompat.app.AppCompatDelegateImpl$2 r2 = r5.mInvalidatePanelMenuRunnable
            r0.removeCallbacks(r2)
            r2.run()
        La1:
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r0 = r5.getPanelState(r1)
            androidx.appcompat.view.menu.MenuBuilder r2 = r0.menu
            if (r2 == 0) goto Lc8
            boolean r4 = r0.refreshMenuContent
            if (r4 != 0) goto Lc8
            android.view.View r4 = r0.createdPanelView
            boolean r1 = r6.onPreparePanel(r1, r4, r2)
            if (r1 == 0) goto Lc8
            androidx.appcompat.view.menu.MenuBuilder r0 = r0.menu
            r6.onMenuOpened(r3, r0)
            androidx.appcompat.widget.ActionBarOverlayLayout r5 = r5.mDecorContentParent
            r5.pullChildren()
            androidx.appcompat.widget.DecorToolbar r5 = r5.mDecorToolbar
            androidx.appcompat.widget.ToolbarWidgetWrapper r5 = (androidx.appcompat.widget.ToolbarWidgetWrapper) r5
            androidx.appcompat.widget.Toolbar r5 = r5.mToolbar
            r5.showOverflowMenu()
        Lc8:
            return
        Lc9:
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r6 = r5.getPanelState(r1)
            r6.refreshDecorView = r0
            r5.closePanel(r6, r1)
            r0 = 0
            r5.openPanel(r6, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0166, code lost:
    
        if (r15.mAdapter.getCount() > 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0146, code lost:
    
        if (r15 != null) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void openPanel(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r14, android.view.KeyEvent r15) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.openPanel(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):void");
    }

    public final boolean performPanelShortcut(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.isPrepared || preparePanel(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.menu) != null) {
            return menuBuilder.performShortcut(i, keyEvent, 1);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d3, code lost:
    
        if (r13.menu == null) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean preparePanel(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r13, android.view.KeyEvent r14) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.preparePanel(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):boolean");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final boolean requestWindowFeature(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i = 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i = 109;
        }
        if (this.mWindowNoTitle && i == 108) {
            return false;
        }
        if (this.mHasActionBar && i == 1) {
            this.mHasActionBar = false;
        }
        if (i == 1) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mWindowNoTitle = true;
            return true;
        }
        if (i == 2) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mFeatureProgress = true;
            return true;
        }
        if (i == 5) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mFeatureIndeterminateProgress = true;
            return true;
        }
        if (i == 10) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mOverlayActionMode = true;
            return true;
        }
        if (i == 108) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mHasActionBar = true;
            return true;
        }
        if (i != 109) {
            return this.mWindow.requestFeature(i);
        }
        throwFeatureRequestIfSubDecorInstalled();
        this.mOverlayActionBar = true;
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setContentView(int i) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i, viewGroup);
        this.mAppCompatWindowCallback.bypassOnContentChanged(this.mWindow.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        ActionBarOverlayLayout actionBarOverlayLayout = this.mDecorContentParent;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setWindowTitle(charSequence);
            return;
        }
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.setWindowTitle(charSequence);
            return;
        }
        TextView textView = this.mTitleView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionMode startSupportActionMode(ActionMode.Callback callback) {
        ViewGroup viewGroup;
        if (callback == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("ActionMode callback can not be null.");
            return null;
        }
        ActionMode actionMode = this.mActionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(2, this, callback);
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            this.mActionMode = actionBar.startActionMode(anonymousClass1);
        }
        if (this.mActionMode == null) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mFadeAnim;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.cancel();
            }
            ActionMode actionMode2 = this.mActionMode;
            if (actionMode2 != null) {
                actionMode2.finish();
            }
            int i = 0;
            if (this.mActionModeView == null) {
                if (this.mIsFloating) {
                    TypedValue typedValue = new TypedValue();
                    Context context = this.mContext;
                    Resources.Theme theme = context.getTheme();
                    theme.resolveAttribute(com.fsck.k9.R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme newTheme = context.getResources().newTheme();
                        newTheme.setTo(theme);
                        newTheme.applyStyle(typedValue.resourceId, true);
                        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                        contextThemeWrapper.getTheme().setTo(newTheme);
                        context = contextThemeWrapper;
                    }
                    this.mActionModeView = new ActionBarContextView(context);
                    PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, com.fsck.k9.R.attr.actionModePopupWindowStyle);
                    this.mActionModePopup = popupWindow;
                    popupWindow.setWindowLayoutType(2);
                    this.mActionModePopup.setContentView(this.mActionModeView);
                    this.mActionModePopup.setWidth(-1);
                    context.getTheme().resolveAttribute(com.fsck.k9.R.attr.actionBarSize, typedValue, true);
                    this.mActionModeView.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    this.mActionModePopup.setHeight(-2);
                    this.mShowActionModePopup = new AnonymousClass2(this, r3);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.mSubDecor.findViewById(com.fsck.k9.R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(getActionBarThemedContext()));
                        this.mActionModeView = (ActionBarContextView) viewStubCompat.inflate();
                    }
                }
            }
            if (this.mActionModeView != null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = this.mFadeAnim;
                if (viewPropertyAnimatorCompat2 != null) {
                    viewPropertyAnimatorCompat2.cancel();
                }
                this.mActionModeView.killMode();
                Context context2 = this.mActionModeView.getContext();
                ActionBarContextView actionBarContextView = this.mActionModeView;
                StandaloneActionMode standaloneActionMode = new StandaloneActionMode();
                standaloneActionMode.mContext = context2;
                standaloneActionMode.mContextView = actionBarContextView;
                standaloneActionMode.mCallback = anonymousClass1;
                MenuBuilder menuBuilder = new MenuBuilder(actionBarContextView.getContext());
                menuBuilder.mDefaultShowAsAction = 1;
                standaloneActionMode.mMenu = menuBuilder;
                menuBuilder.mCallback = standaloneActionMode;
                if (((ActionMode.Callback) anonymousClass1.mCardBackground).onCreateActionMode(standaloneActionMode, menuBuilder)) {
                    standaloneActionMode.invalidate();
                    this.mActionModeView.initForMode(standaloneActionMode);
                    this.mActionMode = standaloneActionMode;
                    r3 = (this.mSubDecorInstalled && (viewGroup = this.mSubDecor) != null && viewGroup.isLaidOut()) ? 1 : 0;
                    ActionBarContextView actionBarContextView2 = this.mActionModeView;
                    if (r3 != 0) {
                        actionBarContextView2.setAlpha(0.0f);
                        ViewPropertyAnimatorCompat animate = ViewCompat.animate(this.mActionModeView);
                        animate.alpha(1.0f);
                        this.mFadeAnim = animate;
                        animate.setListener(new AnonymousClass7(i, this));
                    } else {
                        actionBarContextView2.setAlpha(1.0f);
                        this.mActionModeView.setVisibility(0);
                        if (this.mActionModeView.getParent() instanceof View) {
                            View view = (View) this.mActionModeView.getParent();
                            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                            view.requestApplyInsets();
                        }
                    }
                    if (this.mActionModePopup != null) {
                        this.mWindow.getDecorView().post(this.mShowActionModePopup);
                    }
                } else {
                    this.mActionMode = null;
                }
            }
            updateBackInvokedCallbackState();
            this.mActionMode = this.mActionMode;
        }
        updateBackInvokedCallbackState();
        return this.mActionMode;
    }

    public final void throwFeatureRequestIfSubDecorInstalled() {
        if (this.mSubDecorInstalled) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void updateBackInvokedCallbackState() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.mDispatcher != null && (getPanelState(0).isOpen || this.mActionMode != null)) {
                z = true;
            }
            if (z && this.mBackCallback == null) {
                this.mBackCallback = Api33Impl.registerOnBackPressedCallback(this.mDispatcher, this);
            } else {
                if (z || (onBackInvokedCallback = this.mBackCallback) == null) {
                    return;
                }
                Api33Impl.unregisterOnBackInvokedCallback(this.mDispatcher, onBackInvokedCallback);
                this.mBackCallback = null;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AppCompatWindowCallback implements Window.Callback {
        public ToolbarActionBar.AnonymousClass2 mActionBarCallback;
        public boolean mDispatchKeyEventBypassEnabled;
        public boolean mOnContentChangedBypassEnabled;
        public boolean mOnPanelClosedBypassEnabled;
        public final Window.Callback mWrapped;

        public AppCompatWindowCallback(Window.Callback callback) {
            if (callback != null) {
                this.mWrapped = callback;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m("Window callback may not be null");
                throw null;
            }
        }

        public final void bypassOnContentChanged(Window.Callback callback) {
            try {
                this.mOnContentChangedBypassEnabled = true;
                callback.onContentChanged();
            } finally {
                this.mOnContentChangedBypassEnabled = false;
            }
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
            return this.mWrapped.dispatchGenericMotionEvent(motionEvent);
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            boolean z = this.mDispatchKeyEventBypassEnabled;
            Window.Callback callback = this.mWrapped;
            return z ? callback.dispatchKeyEvent(keyEvent) : AppCompatDelegateImpl.this.dispatchKeyEvent(keyEvent) || callback.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            if (!this.mWrapped.dispatchKeyShortcutEvent(keyEvent)) {
                int keyCode = keyEvent.getKeyCode();
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.initWindowDecorActionBar();
                ActionBar actionBar = appCompatDelegateImpl.mActionBar;
                if (actionBar == null || !actionBar.onKeyShortcut(keyCode, keyEvent)) {
                    PanelFeatureState panelFeatureState = appCompatDelegateImpl.mPreparedPanel;
                    if (panelFeatureState == null || !appCompatDelegateImpl.performPanelShortcut(panelFeatureState, keyEvent.getKeyCode(), keyEvent)) {
                        if (appCompatDelegateImpl.mPreparedPanel == null) {
                            PanelFeatureState panelState = appCompatDelegateImpl.getPanelState(0);
                            appCompatDelegateImpl.preparePanel(panelState, keyEvent);
                            boolean performPanelShortcut = appCompatDelegateImpl.performPanelShortcut(panelState, keyEvent.getKeyCode(), keyEvent);
                            panelState.isPrepared = false;
                            if (performPanelShortcut) {
                            }
                        }
                        return false;
                    }
                    PanelFeatureState panelFeatureState2 = appCompatDelegateImpl.mPreparedPanel;
                    if (panelFeatureState2 != null) {
                        panelFeatureState2.isHandled = true;
                        return true;
                    }
                }
            }
            return true;
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            return this.mWrapped.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return this.mWrapped.dispatchTouchEvent(motionEvent);
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
            return this.mWrapped.dispatchTrackballEvent(motionEvent);
        }

        @Override // android.view.Window.Callback
        public final void onActionModeFinished(android.view.ActionMode actionMode) {
            this.mWrapped.onActionModeFinished(actionMode);
        }

        @Override // android.view.Window.Callback
        public final void onActionModeStarted(android.view.ActionMode actionMode) {
            this.mWrapped.onActionModeStarted(actionMode);
        }

        @Override // android.view.Window.Callback
        public final void onAttachedToWindow() {
            this.mWrapped.onAttachedToWindow();
        }

        @Override // android.view.Window.Callback
        public final void onContentChanged() {
            if (this.mOnContentChangedBypassEnabled) {
                this.mWrapped.onContentChanged();
            }
        }

        @Override // android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof MenuBuilder)) {
                return this.mWrapped.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // android.view.Window.Callback
        public final View onCreatePanelView(int i) {
            ToolbarActionBar.AnonymousClass2 anonymousClass2 = this.mActionBarCallback;
            if (anonymousClass2 != null) {
                View view = i == 0 ? new View(ToolbarActionBar.this.mDecorToolbar.mToolbar.getContext()) : null;
                if (view != null) {
                    return view;
                }
            }
            return this.mWrapped.onCreatePanelView(i);
        }

        @Override // android.view.Window.Callback
        public final void onDetachedFromWindow() {
            this.mWrapped.onDetachedFromWindow();
        }

        @Override // android.view.Window.Callback
        public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
            return this.mWrapped.onMenuItemSelected(i, menuItem);
        }

        @Override // android.view.Window.Callback
        public final boolean onMenuOpened(int i, Menu menu) {
            onMenuOpened$androidx$appcompat$view$WindowCallbackWrapper(i, menu);
            if (i == 108) {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.initWindowDecorActionBar();
                ActionBar actionBar = appCompatDelegateImpl.mActionBar;
                if (actionBar != null) {
                    actionBar.dispatchMenuVisibilityChanged(true);
                }
            }
            return true;
        }

        public final boolean onMenuOpened$androidx$appcompat$view$WindowCallbackWrapper(int i, Menu menu) {
            return this.mWrapped.onMenuOpened(i, menu);
        }

        @Override // android.view.Window.Callback
        public final void onPanelClosed(int i, Menu menu) {
            if (this.mOnPanelClosedBypassEnabled) {
                this.mWrapped.onPanelClosed(i, menu);
                return;
            }
            onPanelClosed$androidx$appcompat$view$WindowCallbackWrapper(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i == 108) {
                appCompatDelegateImpl.initWindowDecorActionBar();
                ActionBar actionBar = appCompatDelegateImpl.mActionBar;
                if (actionBar != null) {
                    actionBar.dispatchMenuVisibilityChanged(false);
                    return;
                }
                return;
            }
            if (i == 0) {
                PanelFeatureState panelState = appCompatDelegateImpl.getPanelState(i);
                if (panelState.isOpen) {
                    appCompatDelegateImpl.closePanel(panelState, false);
                }
            }
        }

        public final void onPanelClosed$androidx$appcompat$view$WindowCallbackWrapper(int i, Menu menu) {
            this.mWrapped.onPanelClosed(i, menu);
        }

        @Override // android.view.Window.Callback
        public final void onPointerCaptureChanged(boolean z) {
            WindowCallbackWrapper$Api26Impl.onPointerCaptureChanged(this.mWrapped, z);
        }

        @Override // android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.mOverrideVisibleItems = true;
            }
            ToolbarActionBar.AnonymousClass2 anonymousClass2 = this.mActionBarCallback;
            if (anonymousClass2 != null && i == 0) {
                ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
                if (!toolbarActionBar.mToolbarMenuPrepared) {
                    toolbarActionBar.mDecorToolbar.mMenuPrepared = true;
                    toolbarActionBar.mToolbarMenuPrepared = true;
                }
            }
            boolean onPreparePanel = this.mWrapped.onPreparePanel(i, view, menu);
            if (menuBuilder != null) {
                menuBuilder.mOverrideVisibleItems = false;
            }
            return onPreparePanel;
        }

        @Override // android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
            MenuBuilder menuBuilder = AppCompatDelegateImpl.this.getPanelState(0).menu;
            if (menuBuilder != null) {
                onProvideKeyboardShortcuts$androidx$appcompat$view$WindowCallbackWrapper(list, menuBuilder, i);
            } else {
                onProvideKeyboardShortcuts$androidx$appcompat$view$WindowCallbackWrapper(list, menu, i);
            }
        }

        public final void onProvideKeyboardShortcuts$androidx$appcompat$view$WindowCallbackWrapper(List list, Menu menu, int i) {
            WindowCallbackWrapper$Api24Impl.onProvideKeyboardShortcuts(this.mWrapped, list, menu, i);
        }

        @Override // android.view.Window.Callback
        public final boolean onSearchRequested(SearchEvent searchEvent) {
            return WindowCallbackWrapper$Api23Impl.onSearchRequested(this.mWrapped, searchEvent);
        }

        @Override // android.view.Window.Callback
        public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
            this.mWrapped.onWindowAttributesChanged(layoutParams);
        }

        @Override // android.view.Window.Callback
        public final void onWindowFocusChanged(boolean z) {
            this.mWrapped.onWindowFocusChanged(z);
        }

        @Override // android.view.Window.Callback
        public final android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (i != 0) {
                return WindowCallbackWrapper$Api23Impl.onWindowStartingActionMode(this.mWrapped, callback, i);
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            Dispatcher dispatcher = new Dispatcher(appCompatDelegateImpl.mContext, callback);
            androidx.appcompat.view.ActionMode startSupportActionMode = appCompatDelegateImpl.startSupportActionMode(dispatcher);
            if (startSupportActionMode != null) {
                return dispatcher.getActionModeWrapper(startSupportActionMode);
            }
            return null;
        }

        @Override // android.view.Window.Callback
        public final boolean onSearchRequested() {
            return this.mWrapped.onSearchRequested();
        }

        @Override // android.view.Window.Callback
        public final android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AutoTimeNightModeManager extends JsonUtil$Field {
        public final /* synthetic */ int $r8$classId = 1;
        public final Object mTwilightManager;

        public AutoTimeNightModeManager(Context context) {
            super(AppCompatDelegateImpl.this);
            this.mTwilightManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // net.openid.appauth.JsonUtil$Field
        public final IntentFilter createIntentFilterForBroadcastReceiver() {
            switch (this.$r8$classId) {
                case 0:
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.intent.action.TIME_SET");
                    intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
                    intentFilter.addAction("android.intent.action.TIME_TICK");
                    return intentFilter;
                default:
                    IntentFilter intentFilter2 = new IntentFilter();
                    intentFilter2.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                    return intentFilter2;
            }
        }

        @Override // net.openid.appauth.JsonUtil$Field
        public final int getApplyableNightMode() {
            Location location;
            boolean z;
            long j;
            Location location2;
            int i = this.$r8$classId;
            Object obj = this.mTwilightManager;
            switch (i) {
                case 0:
                    MenuHostHelper menuHostHelper = (MenuHostHelper) obj;
                    TwilightManager$TwilightState twilightManager$TwilightState = (TwilightManager$TwilightState) menuHostHelper.mProviderToLifecycleContainers;
                    LocationManager locationManager = (LocationManager) menuHostHelper.mMenuProviders;
                    if (twilightManager$TwilightState.nextUpdate > System.currentTimeMillis()) {
                        z = twilightManager$TwilightState.isNight;
                    } else {
                        Context context = (Context) menuHostHelper.mOnInvalidateMenuCallback;
                        Location location3 = null;
                        if (Data.Companion.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                            try {
                            } catch (Exception e) {
                                Log.d("TwilightManager", "Failed to get last known location", e);
                            }
                            if (locationManager.isProviderEnabled("network")) {
                                location2 = locationManager.getLastKnownLocation("network");
                                location = location2;
                            }
                            location2 = null;
                            location = location2;
                        } else {
                            location = null;
                        }
                        if (Data.Companion.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                            try {
                                if (locationManager.isProviderEnabled("gps")) {
                                    location3 = locationManager.getLastKnownLocation("gps");
                                }
                            } catch (Exception e2) {
                                Log.d("TwilightManager", "Failed to get last known location", e2);
                            }
                        }
                        if (location3 == null || location == null ? location3 != null : location3.getTime() > location.getTime()) {
                            location = location3;
                        }
                        if (location != null) {
                            long currentTimeMillis = System.currentTimeMillis();
                            if (TwilightCalculator.sInstance == null) {
                                TwilightCalculator.sInstance = new TwilightCalculator();
                            }
                            TwilightCalculator twilightCalculator = TwilightCalculator.sInstance;
                            twilightCalculator.calculateTwilight(location.getLatitude(), location.getLongitude(), currentTimeMillis - 86400000);
                            twilightCalculator.calculateTwilight(location.getLatitude(), location.getLongitude(), currentTimeMillis);
                            z = twilightCalculator.state == 1;
                            long j2 = twilightCalculator.sunrise;
                            long j3 = twilightCalculator.sunset;
                            twilightCalculator.calculateTwilight(location.getLatitude(), location.getLongitude(), currentTimeMillis + 86400000);
                            long j4 = twilightCalculator.sunrise;
                            if (j2 == -1 || j3 == -1) {
                                j = currentTimeMillis + 43200000;
                            } else {
                                if (currentTimeMillis > j3) {
                                    j2 = j4;
                                } else if (currentTimeMillis > j2) {
                                    j2 = j3;
                                }
                                j = j2 + 60000;
                            }
                            twilightManager$TwilightState.isNight = z;
                            twilightManager$TwilightState.nextUpdate = j;
                        } else {
                            Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                            int i2 = Calendar.getInstance().get(11);
                            if (i2 < 6 || i2 >= 22) {
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        break;
                    }
                    break;
                default:
                    if (Api21Impl.isPowerSaveMode((PowerManager) obj)) {
                        break;
                    }
                    break;
            }
            return 2;
        }

        @Override // net.openid.appauth.JsonUtil$Field
        public final void onChange() {
            int i = this.$r8$classId;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            switch (i) {
                case 0:
                    appCompatDelegateImpl.applyApplicationSpecificConfig(true, true);
                    break;
                default:
                    appCompatDelegateImpl.applyApplicationSpecificConfig(true, true);
                    break;
            }
        }

        public AutoTimeNightModeManager(MenuHostHelper menuHostHelper) {
            super(AppCompatDelegateImpl.this);
            this.mTwilightManager = menuHostHelper;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setContentView(View view) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mAppCompatWindowCallback.bypassOnContentChanged(this.mWindow.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.mAppCompatWindowCallback.bypassOnContentChanged(this.mWindow.getCallback());
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}

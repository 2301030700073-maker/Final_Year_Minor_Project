package leakcanary;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.UserManager;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.view.textservice.SpellCheckerSession;
import android.view.textservice.TextServicesManager;
import androidx.lifecycle.LiveData$1;
import curtains.Curtains;
import curtains.OnRootViewRemovedListener;
import curtains.internal.RootViewsSpy;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.Lazy;
import kotlin.SynchronizedLazyImpl;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import leakcanary.internal.ObjectsKt$NO_OP_HANDLER$1;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AndroidLeakFixes {
    private static final /* synthetic */ AndroidLeakFixes[] $VALUES;
    public static final AndroidLeakFixes ACCESSIBILITY_NODE_INFO;
    public static final AndroidLeakFixes ACTIVITY_MANAGER;
    public static final AndroidLeakFixes BUBBLE_POPUP;
    public static final AndroidLeakFixes CONNECTIVITY_MANAGER;
    public static final Companion Companion;
    public static final AndroidLeakFixes FLUSH_HANDLER_THREADS;
    public static final AndroidLeakFixes IMM_CUR_ROOT_VIEW;
    public static final AndroidLeakFixes IMM_FOCUSED_VIEW;
    public static final AndroidLeakFixes LAST_HOVERED_VIEW;
    private static final String LG = "LGE";
    public static final AndroidLeakFixes MEDIA_SESSION_LEGACY_HELPER;
    public static final AndroidLeakFixes PERMISSION_CONTROLLER_MANAGER;
    private static final String SAMSUNG = "samsung";
    public static final AndroidLeakFixes SAMSUNG_CLIPBOARD_MANAGER;
    public static final AndroidLeakFixes SPELL_CHECKER;
    public static final AndroidLeakFixes TEXT_LINE_POOL;
    public static final AndroidLeakFixes USER_MANAGER;
    public static final AndroidLeakFixes VIEW_LOCATION_HOLDER;
    private static final Lazy backgroundHandler$delegate;
    private boolean applied;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class WindowDelegateCallback extends FixedWindowCallback {
            public final Window.Callback delegate;
            public final ArrayList onContentChangedCallbacks;

            public WindowDelegateCallback(Window.Callback callback) {
                super(callback);
                this.delegate = callback;
                this.onContentChangedCallbacks = new ArrayList();
            }

            @Override // android.view.Window.Callback
            public final void onContentChanged() {
                CollectionsKt.removeAll(this.onContentChangedCallbacks, AndroidLeakFixes$Companion$WindowDelegateCallback$onContentChanged$1.INSTANCE);
                this.delegate.onContentChanged();
            }
        }

        public static Handler getBackgroundHandler$plumber_android_core_release() {
            return (Handler) AndroidLeakFixes.backgroundHandler$delegate.getValue();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class IMM_CUR_ROOT_VIEW extends AndroidLeakFixes {
        public IMM_CUR_ROOT_VIEW() {
            super("IMM_CUR_ROOT_VIEW", 12);
        }

        @Override // leakcanary.AndroidLeakFixes
        public final void apply(Application application) {
            if (Build.VERSION.SDK_INT >= 29) {
                return;
            }
            try {
                Object systemService = application.getSystemService("input_method");
                if (systemService == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                }
                final InputMethodManager inputMethodManager = (InputMethodManager) systemService;
                final Field declaredField = InputMethodManager.class.getDeclaredField("mCurRootView");
                declaredField.setAccessible(true);
                application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks(this) { // from class: leakcanary.AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1
                    public final /* synthetic */ Application.ActivityLifecycleCallbacks $$delegate_0;

                    {
                        Object newProxyInstance = Proxy.newProxyInstance(Application.ActivityLifecycleCallbacks.class.getClassLoader(), new Class[]{Application.ActivityLifecycleCallbacks.class}, ObjectsKt$NO_OP_HANDLER$1.INSTANCE);
                        if (newProxyInstance == null) {
                            throw new TypeCastException("null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks");
                        }
                        this.$$delegate_0 = (Application.ActivityLifecycleCallbacks) newProxyInstance;
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityCreated(Activity activity, Bundle bundle) {
                        activity.getClass();
                        this.$$delegate_0.onActivityCreated(activity, bundle);
                    }

                    /* JADX WARN: Removed duplicated region for block: B:17:0x0036 A[Catch: all -> 0x0059, TryCatch #0 {all -> 0x0059, blocks: (B:3:0x0007, B:5:0x0011, B:7:0x0017, B:12:0x002a, B:15:0x0031, B:17:0x0036, B:28:0x003a, B:35:0x0056, B:19:0x003d, B:21:0x0041, B:23:0x004a), top: B:2:0x0007 }] */
                    /* JADX WARN: Removed duplicated region for block: B:30:0x0051  */
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void onActivityDestroyed(android.app.Activity r9) {
                        /*
                            r8 = this;
                            android.view.inputmethod.InputMethodManager r0 = r4
                            java.lang.reflect.Field r8 = r3
                            r9.getClass()
                            java.lang.Object r1 = r8.get(r0)     // Catch: java.lang.Throwable -> L59
                            android.view.View r1 = (android.view.View) r1     // Catch: java.lang.Throwable -> L59
                            r2 = 0
                            r3 = 1
                            if (r1 == 0) goto L26
                            android.view.Window r4 = r9.getWindow()     // Catch: java.lang.Throwable -> L59
                            if (r4 == 0) goto L26
                            android.view.Window r4 = r9.getWindow()     // Catch: java.lang.Throwable -> L59
                            r4.getClass()     // Catch: java.lang.Throwable -> L59
                            android.view.View r4 = r4.getDecorView()     // Catch: java.lang.Throwable -> L59
                            if (r4 != r1) goto L26
                            r4 = r3
                            goto L27
                        L26:
                            r4 = r2
                        L27:
                            r5 = 0
                            if (r1 == 0) goto L4e
                            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> L59
                            if (r1 == 0) goto L4e
                            r6 = r1
                        L31:
                            boolean r7 = r6 instanceof android.app.Application     // Catch: java.lang.Throwable -> L59
                            if (r7 == 0) goto L36
                            goto L4e
                        L36:
                            boolean r7 = r6 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L59
                            if (r7 == 0) goto L3d
                            android.app.Activity r6 = (android.app.Activity) r6     // Catch: java.lang.Throwable -> L59
                            goto L4f
                        L3d:
                            boolean r7 = r6 instanceof android.content.ContextWrapper     // Catch: java.lang.Throwable -> L59
                            if (r7 == 0) goto L4e
                            android.content.ContextWrapper r6 = (android.content.ContextWrapper) r6     // Catch: java.lang.Throwable -> L59
                            android.content.Context r6 = r6.getBaseContext()     // Catch: java.lang.Throwable -> L59
                            if (r6 != r1) goto L4a
                            goto L4e
                        L4a:
                            r6.getClass()     // Catch: java.lang.Throwable -> L59
                            goto L31
                        L4e:
                            r6 = r5
                        L4f:
                            if (r6 != r9) goto L52
                            r2 = r3
                        L52:
                            if (r4 != 0) goto L56
                            if (r2 == 0) goto L59
                        L56:
                            r8.set(r0, r5)     // Catch: java.lang.Throwable -> L59
                        L59:
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: leakcanary.AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$1.onActivityDestroyed(android.app.Activity):void");
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPaused(Activity activity) {
                        activity.getClass();
                        this.$$delegate_0.onActivityPaused(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityResumed(Activity activity) {
                        activity.getClass();
                        this.$$delegate_0.onActivityResumed(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                        activity.getClass();
                        bundle.getClass();
                        this.$$delegate_0.onActivitySaveInstanceState(activity, bundle);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStarted(Activity activity) {
                        activity.getClass();
                        this.$$delegate_0.onActivityStarted(activity);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStopped(Activity activity) {
                        activity.getClass();
                        this.$$delegate_0.onActivityStopped(activity);
                    }
                });
                ((RootViewsSpy) Curtains.rootViewsSpy$delegate.getValue()).listeners.add(new OnRootViewRemovedListener() { // from class: leakcanary.AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2
                    @Override // curtains.OnRootViewRemovedListener
                    public final void onRootViewsChanged(View view, boolean z) {
                        if (z) {
                            return;
                        }
                        Field field = declaredField;
                        InputMethodManager inputMethodManager2 = inputMethodManager;
                        if (((View) field.get(inputMethodManager2)) == view) {
                            field.set(inputMethodManager2, null);
                        }
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TEXT_LINE_POOL extends AndroidLeakFixes {
        public TEXT_LINE_POOL() {
            super("TEXT_LINE_POOL", 1);
        }

        @Override // leakcanary.AndroidLeakFixes
        public final void apply(Application application) {
            if (Build.VERSION.SDK_INT >= 28) {
                return;
            }
            AndroidLeakFixes.Companion.getClass();
            Companion.getBackgroundHandler$plumber_android_core_release().post(new LiveData$1(this, application));
        }
    }

    static {
        AndroidLeakFixes androidLeakFixes = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.MEDIA_SESSION_LEGACY_HELPER
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
            }
        };
        MEDIA_SESSION_LEGACY_HELPER = androidLeakFixes;
        TEXT_LINE_POOL text_line_pool = new TEXT_LINE_POOL();
        TEXT_LINE_POOL = text_line_pool;
        AndroidLeakFixes androidLeakFixes2 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.USER_MANAGER
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                if (25 < Build.VERSION.SDK_INT) {
                    return;
                }
                try {
                    UserManager.class.getDeclaredMethod("get", Context.class).invoke(null, application);
                } catch (Exception unused) {
                }
            }
        };
        USER_MANAGER = androidLeakFixes2;
        AndroidLeakFixes androidLeakFixes3 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.FLUSH_HANDLER_THREADS
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                if (Build.VERSION.SDK_INT >= 31) {
                    return;
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                AndroidLeakFixes.Companion.getClass();
                Looper looper = Companion.getBackgroundHandler$plumber_android_core_release().getLooper();
                looper.getClass();
                Thread thread = looper.getThread();
                if (thread == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.os.HandlerThread");
                }
                linkedHashSet.add(Integer.valueOf(((HandlerThread) thread).getThreadId()));
                Companion.getBackgroundHandler$plumber_android_core_release().postDelayed(new LiveData$1(22, linkedHashSet), 2000L);
            }
        };
        FLUSH_HANDLER_THREADS = androidLeakFixes3;
        AndroidLeakFixes androidLeakFixes4 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.ACCESSIBILITY_NODE_INFO
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                if (Build.VERSION.SDK_INT >= 28) {
                    return;
                }
                AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$starvePool$1 androidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$starvePool$1 = new AndroidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$starvePool$1();
                AndroidLeakFixes.Companion.getClass();
                Companion.getBackgroundHandler$plumber_android_core_release().postDelayed(androidLeakFixes$ACCESSIBILITY_NODE_INFO$apply$starvePool$1, 5000L);
            }
        };
        ACCESSIBILITY_NODE_INFO = androidLeakFixes4;
        AndroidLeakFixes androidLeakFixes5 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.CONNECTIVITY_MANAGER
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                if (Build.VERSION.SDK_INT > 23) {
                    return;
                }
                try {
                    application.getSystemService("connectivity");
                } catch (Exception unused) {
                }
            }
        };
        CONNECTIVITY_MANAGER = androidLeakFixes5;
        AndroidLeakFixes androidLeakFixes6 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.SAMSUNG_CLIPBOARD_MANAGER
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                Intrinsics.areEqual(Build.MANUFACTURER, AndroidLeakFixes.SAMSUNG);
            }
        };
        SAMSUNG_CLIPBOARD_MANAGER = androidLeakFixes6;
        AndroidLeakFixes androidLeakFixes7 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.BUBBLE_POPUP
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                Intrinsics.areEqual(Build.MANUFACTURER, AndroidLeakFixes.LG);
            }
        };
        BUBBLE_POPUP = androidLeakFixes7;
        AndroidLeakFixes androidLeakFixes8 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.LAST_HOVERED_VIEW
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                Intrinsics.areEqual(Build.MANUFACTURER, AndroidLeakFixes.SAMSUNG);
            }
        };
        LAST_HOVERED_VIEW = androidLeakFixes8;
        AndroidLeakFixes androidLeakFixes9 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.ACTIVITY_MANAGER
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                Intrinsics.areEqual(Build.MANUFACTURER, AndroidLeakFixes.SAMSUNG);
            }
        };
        ACTIVITY_MANAGER = androidLeakFixes9;
        AndroidLeakFixes androidLeakFixes10 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.VIEW_LOCATION_HOLDER
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                if (Build.VERSION.SDK_INT != 28) {
                    return;
                }
                ((RootViewsSpy) Curtains.rootViewsSpy$delegate.getValue()).listeners.add(new ViewLocationHolderLeakFix$applyFix$1(application));
                application.registerActivityLifecycleCallbacks(new ViewLocationHolderLeakFix$applyFix$2(application));
            }
        };
        VIEW_LOCATION_HOLDER = androidLeakFixes10;
        AndroidLeakFixes androidLeakFixes11 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.IMM_FOCUSED_VIEW
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                if (Build.VERSION.SDK_INT > 23) {
                    return;
                }
                Object systemService = application.getSystemService("input_method");
                if (systemService == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                }
                InputMethodManager inputMethodManager = (InputMethodManager) systemService;
                try {
                    Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                    declaredField.getClass();
                    declaredField.setAccessible(true);
                    Field declaredField2 = InputMethodManager.class.getDeclaredField("mH");
                    declaredField2.getClass();
                    declaredField2.setAccessible(true);
                    Method declaredMethod = InputMethodManager.class.getDeclaredMethod("finishInputLocked", null);
                    declaredMethod.getClass();
                    declaredMethod.setAccessible(true);
                    Method declaredMethod2 = InputMethodManager.class.getDeclaredMethod("focusIn", View.class);
                    declaredMethod2.getClass();
                    declaredMethod2.setAccessible(true);
                    application.registerActivityLifecycleCallbacks(new AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2(inputMethodManager, declaredField2, declaredField, declaredMethod));
                } catch (Exception unused) {
                }
            }
        };
        IMM_FOCUSED_VIEW = androidLeakFixes11;
        IMM_CUR_ROOT_VIEW imm_cur_root_view = new IMM_CUR_ROOT_VIEW();
        IMM_CUR_ROOT_VIEW = imm_cur_root_view;
        AndroidLeakFixes androidLeakFixes12 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.SPELL_CHECKER
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                if (Build.VERSION.SDK_INT != 23) {
                    return;
                }
                try {
                    Method declaredMethod = TextServicesManager.class.getDeclaredMethod("getInstance", null);
                    Field declaredField = TextServicesManager.class.getDeclaredField("sService");
                    declaredField.getClass();
                    declaredField.setAccessible(true);
                    Class<?> cls = Class.forName("com.android.internal.textservice.ITextServicesManager");
                    final Field declaredField2 = Class.forName("android.view.textservice.SpellCheckerSession").getDeclaredField("mSpellCheckerSessionListener");
                    declaredField2.getClass();
                    declaredField2.setAccessible(true);
                    final Field declaredField3 = Class.forName("android.view.textservice.SpellCheckerSession$SpellCheckerSessionListenerImpl").getDeclaredField("mHandler");
                    declaredField3.getClass();
                    declaredField3.setAccessible(true);
                    final Field declaredField4 = Class.forName("android.view.textservice.SpellCheckerSession$1").getDeclaredField("this$0");
                    declaredField4.getClass();
                    declaredField4.setAccessible(true);
                    final Object newProxyInstance = Proxy.newProxyInstance(SpellCheckerSession.SpellCheckerSessionListener.class.getClassLoader(), new Class[]{SpellCheckerSession.SpellCheckerSessionListener.class}, AndroidLeakFixes$SPELL_CHECKER$apply$noOpListener$1.INSTANCE);
                    declaredMethod.invoke(null, null);
                    final Object obj = declaredField.get(null);
                    if (obj == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    final LinkedHashMap linkedHashMap = new LinkedHashMap();
                    declaredField.set(null, Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: leakcanary.AndroidLeakFixes$SPELL_CHECKER$apply$proxyService$1
                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj2, Method method, Object[] objArr) {
                            obj2.getClass();
                            method.getClass();
                            try {
                                boolean areEqual = Intrinsics.areEqual(method.getName(), "getSpellCheckerService");
                                LinkedHashMap linkedHashMap2 = linkedHashMap;
                                if (areEqual) {
                                    if (objArr == null) {
                                        Intrinsics.throwNpe();
                                        throw null;
                                    }
                                    Object obj3 = objArr[3];
                                    Object obj4 = declaredField3.get(obj3);
                                    if (obj4 == null) {
                                        Intrinsics.throwNpe();
                                        throw null;
                                    }
                                    Object obj5 = declaredField4.get(obj4);
                                    if (obj5 == null) {
                                        Intrinsics.throwNpe();
                                        throw null;
                                    }
                                    linkedHashMap2.put(obj3, obj5);
                                } else if (Intrinsics.areEqual(method.getName(), "finishSpellCheckerService")) {
                                    if (objArr == null) {
                                        Intrinsics.throwNpe();
                                        throw null;
                                    }
                                    Object remove = linkedHashMap2.remove(objArr[0]);
                                    if (remove == null) {
                                        Intrinsics.throwNpe();
                                        throw null;
                                    }
                                    declaredField2.set(remove, newProxyInstance);
                                }
                            } catch (Exception unused) {
                            }
                            Object obj6 = obj;
                            try {
                                return objArr != null ? method.invoke(obj6, Arrays.copyOf(objArr, objArr.length)) : method.invoke(obj6, null);
                            } catch (InvocationTargetException e) {
                                Throwable targetException = e.getTargetException();
                                targetException.getClass();
                                throw targetException;
                            }
                        }
                    }));
                } catch (Exception unused) {
                }
            }
        };
        SPELL_CHECKER = androidLeakFixes12;
        AndroidLeakFixes androidLeakFixes13 = new AndroidLeakFixes() { // from class: leakcanary.AndroidLeakFixes.PERMISSION_CONTROLLER_MANAGER
            @Override // leakcanary.AndroidLeakFixes
            public final void apply(Application application) {
                if (Build.VERSION.SDK_INT < 29) {
                    return;
                }
                try {
                    application.getSystemService("permission_controller");
                } catch (Exception unused) {
                }
            }
        };
        PERMISSION_CONTROLLER_MANAGER = androidLeakFixes13;
        $VALUES = new AndroidLeakFixes[]{androidLeakFixes, text_line_pool, androidLeakFixes2, androidLeakFixes3, androidLeakFixes4, androidLeakFixes5, androidLeakFixes6, androidLeakFixes7, androidLeakFixes8, androidLeakFixes9, androidLeakFixes10, androidLeakFixes11, imm_cur_root_view, androidLeakFixes12, androidLeakFixes13};
        Companion = new Companion();
        backgroundHandler$delegate = new SynchronizedLazyImpl(AndroidLeakFixes$Companion$backgroundHandler$2.INSTANCE);
    }

    public static AndroidLeakFixes valueOf(String str) {
        return (AndroidLeakFixes) Enum.valueOf(AndroidLeakFixes.class, str);
    }

    public static AndroidLeakFixes[] values() {
        return (AndroidLeakFixes[]) $VALUES.clone();
    }

    public abstract void apply(Application application);
}

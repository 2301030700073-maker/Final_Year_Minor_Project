package defpackage;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.KeyEvent;
import android.view.OnReceiveContentListener;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import com.joeykrim.rootcheck.R;
import defpackage.C0378Na;
import defpackage.C3150jM;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.QK;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public final class QK {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static ThreadLocal<Rect> f2907do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Field f2908do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static WeakHashMap<View, C3385nL> f2909do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f2910do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f2911do = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};

    /* renamed from: do, reason: not valid java name */
    public static final LK f2905do = new InterfaceC0575Vv() { // from class: LK
        @Override // defpackage.InterfaceC0575Vv
        /* renamed from: do, reason: not valid java name */
        public final C0378Na mo1323do(C0378Na c0378Na) {
            return c0378Na;
        }
    };

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cdo f2906do = new Cdo();

    /* renamed from: QK$break, reason: invalid class name */
    public static class Cbreak {
        /* renamed from: case, reason: not valid java name */
        public static void m1868case(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }

        /* renamed from: do, reason: not valid java name */
        public static int m1869do(View view) {
            int importantForContentCapture;
            importantForContentCapture = view.getImportantForContentCapture();
            return importantForContentCapture;
        }

        /* renamed from: for, reason: not valid java name */
        public static C3209kM m1870for(View view) {
            WindowInsetsController windowInsetsController;
            windowInsetsController = view.getWindowInsetsController();
            if (windowInsetsController != null) {
                return new C3209kM(windowInsetsController);
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        public static CharSequence m1871if(View view) {
            CharSequence stateDescription;
            stateDescription = view.getStateDescription();
            return stateDescription;
        }

        /* renamed from: new, reason: not valid java name */
        public static boolean m1872new(View view) {
            boolean isImportantForContentCapture;
            isImportantForContentCapture = view.isImportantForContentCapture();
            return isImportantForContentCapture;
        }

        /* renamed from: try, reason: not valid java name */
        public static void m1873try(View view, int i) {
            view.setImportantForContentCapture(i);
        }
    }

    /* renamed from: QK$case, reason: invalid class name */
    public static class Ccase {
        /* renamed from: case, reason: not valid java name */
        public static void m1874case(View view, View.DragShadowBuilder dragShadowBuilder) {
            view.updateDragShadow(dragShadowBuilder);
        }

        /* renamed from: do, reason: not valid java name */
        public static void m1875do(View view) {
            view.cancelDragAndDrop();
        }

        /* renamed from: for, reason: not valid java name */
        public static void m1876for(View view) {
            view.dispatchStartTemporaryDetach();
        }

        /* renamed from: if, reason: not valid java name */
        public static void m1877if(View view) {
            view.dispatchFinishTemporaryDetach();
        }

        /* renamed from: new, reason: not valid java name */
        public static void m1878new(View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }

        /* renamed from: try, reason: not valid java name */
        public static boolean m1879try(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object obj, int i) {
            boolean startDragAndDrop;
            startDragAndDrop = view.startDragAndDrop(clipData, dragShadowBuilder, obj, i);
            return startDragAndDrop;
        }
    }

    /* renamed from: QK$catch, reason: invalid class name */
    public static final class Ccatch {
        /* renamed from: do, reason: not valid java name */
        public static String[] m1880do(View view) {
            String[] receiveContentMimeTypes;
            receiveContentMimeTypes = view.getReceiveContentMimeTypes();
            return receiveContentMimeTypes;
        }

        /* renamed from: for, reason: not valid java name */
        public static void m1881for(View view, String[] strArr, InterfaceC0553Uv interfaceC0553Uv) {
            if (interfaceC0553Uv == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new Cclass(interfaceC0553Uv));
            }
        }

        /* renamed from: if, reason: not valid java name */
        public static C0378Na m1882if(View view, C0378Na c0378Na) {
            ContentInfo performReceiveContent;
            ContentInfo mo1537if = c0378Na.f2398do.mo1537if();
            Objects.requireNonNull(mo1537if);
            performReceiveContent = view.performReceiveContent(mo1537if);
            if (performReceiveContent == null) {
                return null;
            }
            return performReceiveContent == mo1537if ? c0378Na : new C0378Na(new C0378Na.Cnew(performReceiveContent));
        }
    }

    /* renamed from: QK$class, reason: invalid class name */
    public static final class Cclass implements OnReceiveContentListener {

        /* renamed from: do, reason: not valid java name */
        public final InterfaceC0553Uv f2912do;

        public Cclass(InterfaceC0553Uv interfaceC0553Uv) {
            this.f2912do = interfaceC0553Uv;
        }

        @Override // android.view.OnReceiveContentListener
        public final ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
            C0378Na c0378Na = new C0378Na(new C0378Na.Cnew(contentInfo));
            C0378Na mo2481do = this.f2912do.mo2481do(view, c0378Na);
            if (mo2481do == null) {
                return null;
            }
            if (mo2481do == c0378Na) {
                return contentInfo;
            }
            ContentInfo mo1537if = mo2481do.f2398do.mo1537if();
            Objects.requireNonNull(mo1537if);
            return mo1537if;
        }
    }

    /* renamed from: QK$const, reason: invalid class name */
    public interface Cconst {
        /* renamed from: do, reason: not valid java name */
        boolean m1883do();
    }

    /* renamed from: QK$do, reason: invalid class name */
    public static class Cdo implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: do, reason: not valid java name */
        public final WeakHashMap<View, Boolean> f2913do = new WeakHashMap<>();

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f2913do.entrySet()) {
                    View key = entry.getKey();
                    boolean booleanValue = entry.getValue().booleanValue();
                    boolean z = key.isShown() && key.getWindowVisibility() == 0;
                    if (booleanValue != z) {
                        QK.m1848catch(key, z ? 16 : 32);
                        entry.setValue(Boolean.valueOf(z));
                    }
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: QK$else, reason: invalid class name */
    public static class Celse {
        /* renamed from: break, reason: not valid java name */
        public static boolean m1884break(View view) {
            boolean restoreDefaultFocus;
            restoreDefaultFocus = view.restoreDefaultFocus();
            return restoreDefaultFocus;
        }

        /* renamed from: case, reason: not valid java name */
        public static boolean m1885case(View view) {
            boolean isFocusedByDefault;
            isFocusedByDefault = view.isFocusedByDefault();
            return isFocusedByDefault;
        }

        /* renamed from: catch, reason: not valid java name */
        public static void m1886catch(View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        /* renamed from: class, reason: not valid java name */
        public static void m1887class(View view, boolean z) {
            view.setFocusedByDefault(z);
        }

        /* renamed from: const, reason: not valid java name */
        public static void m1888const(View view, int i) {
            view.setImportantForAutofill(i);
        }

        /* renamed from: do, reason: not valid java name */
        public static void m1889do(View view, Collection<View> collection, int i) {
            view.addKeyboardNavigationClusters(collection, i);
        }

        /* renamed from: else, reason: not valid java name */
        public static boolean m1890else(View view) {
            boolean isImportantForAutofill;
            isImportantForAutofill = view.isImportantForAutofill();
            return isImportantForAutofill;
        }

        /* renamed from: final, reason: not valid java name */
        public static void m1891final(View view, boolean z) {
            view.setKeyboardNavigationCluster(z);
        }

        /* renamed from: for, reason: not valid java name */
        public static int m1892for(View view) {
            int importantForAutofill;
            importantForAutofill = view.getImportantForAutofill();
            return importantForAutofill;
        }

        /* renamed from: goto, reason: not valid java name */
        public static boolean m1893goto(View view) {
            boolean isKeyboardNavigationCluster;
            isKeyboardNavigationCluster = view.isKeyboardNavigationCluster();
            return isKeyboardNavigationCluster;
        }

        /* renamed from: if, reason: not valid java name */
        public static AutofillId m1894if(View view) {
            AutofillId autofillId;
            autofillId = view.getAutofillId();
            return autofillId;
        }

        /* renamed from: new, reason: not valid java name */
        public static int m1895new(View view) {
            int nextClusterForwardId;
            nextClusterForwardId = view.getNextClusterForwardId();
            return nextClusterForwardId;
        }

        /* renamed from: super, reason: not valid java name */
        public static void m1896super(View view, int i) {
            view.setNextClusterForwardId(i);
        }

        /* renamed from: this, reason: not valid java name */
        public static View m1897this(View view, View view2, int i) {
            View keyboardNavigationClusterSearch;
            keyboardNavigationClusterSearch = view.keyboardNavigationClusterSearch(view2, i);
            return keyboardNavigationClusterSearch;
        }

        /* renamed from: throw, reason: not valid java name */
        public static void m1898throw(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }

        /* renamed from: try, reason: not valid java name */
        public static boolean m1899try(View view) {
            boolean hasExplicitFocusable;
            hasExplicitFocusable = view.hasExplicitFocusable();
            return hasExplicitFocusable;
        }
    }

    /* renamed from: QK$final, reason: invalid class name */
    public static class Cfinal {

        /* renamed from: do, reason: not valid java name */
        public static final ArrayList<WeakReference<View>> f2914do = new ArrayList<>();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public WeakHashMap<View, Boolean> f2917do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public SparseArray<WeakReference<View>> f2915do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public WeakReference<KeyEvent> f2916do = null;

        /* renamed from: if, reason: not valid java name */
        public static boolean m1900if(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((Cconst) arrayList.get(size)).m1883do()) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public final View m1901do(View view, KeyEvent keyEvent) {
            View m1901do;
            WeakHashMap<View, Boolean> weakHashMap = this.f2917do;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                do {
                    childCount--;
                    if (childCount >= 0) {
                        m1901do = m1901do(viewGroup.getChildAt(childCount), keyEvent);
                    }
                } while (m1901do == null);
                return m1901do;
            }
            if (m1900if(view, keyEvent)) {
                return view;
            }
            return null;
        }
    }

    /* renamed from: QK$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static WindowInsets m1902do(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        /* renamed from: for, reason: not valid java name */
        public static void m1903for(View view) {
            view.requestApplyInsets();
        }

        /* renamed from: if, reason: not valid java name */
        public static WindowInsets m1904if(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }
    }

    /* renamed from: QK$goto, reason: invalid class name */
    public static class Cgoto {
        /* renamed from: break, reason: not valid java name */
        public static void m1905break(View view, boolean z) {
            view.setScreenReaderFocusable(z);
        }

        /* renamed from: case, reason: not valid java name */
        public static <T> T m1906case(View view, int i) {
            Object requireViewById;
            requireViewById = view.requireViewById(i);
            return (T) requireViewById;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [RK, java.lang.Object] */
        /* renamed from: do, reason: not valid java name */
        public static void m1907do(View view, final Cconst cconst) {
            C2680eE c2680eE = (C2680eE) view.getTag(R.id.tag_unhandled_key_listeners);
            if (c2680eE == null) {
                c2680eE = new C2680eE();
                view.setTag(R.id.tag_unhandled_key_listeners, c2680eE);
            }
            Objects.requireNonNull(cconst);
            ?? r0 = new View.OnUnhandledKeyEventListener() { // from class: RK
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return QK.Cconst.this.m1883do();
                }
            };
            c2680eE.put(cconst, r0);
            view.addOnUnhandledKeyEventListener(r0);
        }

        /* renamed from: else, reason: not valid java name */
        public static void m1908else(View view, boolean z) {
            view.setAccessibilityHeading(z);
        }

        /* renamed from: for, reason: not valid java name */
        public static boolean m1909for(View view) {
            boolean isAccessibilityHeading;
            isAccessibilityHeading = view.isAccessibilityHeading();
            return isAccessibilityHeading;
        }

        /* renamed from: goto, reason: not valid java name */
        public static void m1910goto(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        /* renamed from: if, reason: not valid java name */
        public static CharSequence m1911if(View view) {
            CharSequence accessibilityPaneTitle;
            accessibilityPaneTitle = view.getAccessibilityPaneTitle();
            return accessibilityPaneTitle;
        }

        /* renamed from: new, reason: not valid java name */
        public static boolean m1912new(View view) {
            boolean isScreenReaderFocusable;
            isScreenReaderFocusable = view.isScreenReaderFocusable();
            return isScreenReaderFocusable;
        }

        /* renamed from: this, reason: not valid java name */
        public static void m1913this(View view, A4 a4) {
            view.setAutofillId(null);
        }

        /* renamed from: try, reason: not valid java name */
        public static void m1914try(View view, Cconst cconst) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            C2680eE c2680eE = (C2680eE) view.getTag(R.id.tag_unhandled_key_listeners);
            if (c2680eE == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) c2680eE.getOrDefault(cconst, null)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }
    }

    /* renamed from: QK$if, reason: invalid class name */
    public static abstract class Cif<T> {

        /* renamed from: do, reason: not valid java name */
        public final int f2918do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Class<T> f2919do;

        /* renamed from: for, reason: not valid java name */
        public final int f2920for;

        /* renamed from: if, reason: not valid java name */
        public final int f2921if;

        public Cif(int i, Class<T> cls, int i2, int i3) {
            this.f2918do = i;
            this.f2919do = cls;
            this.f2920for = i2;
            this.f2921if = i3;
        }

        /* renamed from: do, reason: not valid java name */
        public static boolean m1915do(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        /* renamed from: case */
        public abstract boolean mo1421case(T t, T t2);

        /* renamed from: for */
        public abstract void mo1422for(View view, T t);

        /* renamed from: if */
        public abstract T mo1423if(View view);

        /* renamed from: new, reason: not valid java name */
        public final T m1916new(View view) {
            if (Build.VERSION.SDK_INT >= this.f2921if) {
                return mo1423if(view);
            }
            T t = (T) view.getTag(this.f2918do);
            if (this.f2919do.isInstance(t)) {
                return t;
            }
            return null;
        }

        /* renamed from: try, reason: not valid java name */
        public final void m1917try(View view, T t) {
            if (Build.VERSION.SDK_INT >= this.f2921if) {
                mo1422for(view, t);
                return;
            }
            if (mo1421case(m1916new(view), t)) {
                View.AccessibilityDelegate m1859new = QK.m1859new(view);
                Cimplements cimplements = m1859new == null ? null : m1859new instanceof Cimplements.Cdo ? ((Cimplements.Cdo) m1859new).f13564do : new Cimplements(m1859new);
                if (cimplements == null) {
                    cimplements = new Cimplements();
                }
                QK.m1858native(view, cimplements);
                view.setTag(this.f2918do, t);
                QK.m1848catch(view, this.f2920for);
            }
        }
    }

    /* renamed from: QK$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: QK$new$do, reason: invalid class name */
        public class Cdo implements View.OnApplyWindowInsetsListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ InterfaceC0136Bv f2922do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ View f2923do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public C3150jM f2924do = null;

            public Cdo(View view, InterfaceC0136Bv interfaceC0136Bv) {
                this.f2923do = view;
                this.f2922do = interfaceC0136Bv;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                C3150jM m7056this = C3150jM.m7056this(view, windowInsets);
                int i = Build.VERSION.SDK_INT;
                InterfaceC0136Bv interfaceC0136Bv = this.f2922do;
                if (i < 30) {
                    Cnew.m1924do(windowInsets, this.f2923do);
                    if (m7056this.equals(this.f2924do)) {
                        return interfaceC0136Bv.mo137for(view, m7056this).m7060goto();
                    }
                }
                this.f2924do = m7056this;
                C3150jM mo137for = interfaceC0136Bv.mo137for(view, m7056this);
                if (i >= 30) {
                    return mo137for.m7060goto();
                }
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                Cfor.m1903for(view);
                return mo137for.m7060goto();
            }
        }

        /* renamed from: break, reason: not valid java name */
        public static C3150jM m1918break(View view) {
            if (C3150jM.Cdo.f13691do && view.isAttachedToWindow()) {
                try {
                    Object obj = C3150jM.Cdo.f13690do.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) C3150jM.Cdo.f13693if.get(obj);
                        Rect rect2 = (Rect) C3150jM.Cdo.f13692for.get(obj);
                        if (rect != null && rect2 != null) {
                            int i = Build.VERSION.SDK_INT;
                            C3150jM.Ctry cnew = i >= 30 ? new C3150jM.Cnew() : i >= 29 ? new C3150jM.Cfor() : new C3150jM.Cif();
                            cnew.mo7094try(C0633Yn.m2951if(rect.left, rect.top, rect.right, rect.bottom));
                            cnew.mo7090else(C0633Yn.m2951if(rect2.left, rect2.top, rect2.right, rect2.bottom));
                            C3150jM mo7092if = cnew.mo7092if();
                            mo7092if.f13676do.mo7076throw(mo7092if);
                            mo7092if.f13676do.mo7065new(view.getRootView());
                            return mo7092if;
                        }
                    }
                } catch (IllegalAccessException e) {
                    e.getMessage();
                }
            }
            return null;
        }

        /* renamed from: case, reason: not valid java name */
        public static boolean m1919case(View view, int i, int i2, int i3, int i4, int[] iArr) {
            return view.dispatchNestedScroll(i, i2, i3, i4, iArr);
        }

        /* renamed from: catch, reason: not valid java name */
        public static String m1920catch(View view) {
            return view.getTransitionName();
        }

        /* renamed from: class, reason: not valid java name */
        public static float m1921class(View view) {
            return view.getTranslationZ();
        }

        /* renamed from: const, reason: not valid java name */
        public static float m1922const(View view) {
            return view.getZ();
        }

        /* renamed from: default, reason: not valid java name */
        public static boolean m1923default(View view, int i) {
            return view.startNestedScroll(i);
        }

        /* renamed from: do, reason: not valid java name */
        public static void m1924do(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        /* renamed from: else, reason: not valid java name */
        public static ColorStateList m1925else(View view) {
            return view.getBackgroundTintList();
        }

        /* renamed from: extends, reason: not valid java name */
        public static void m1926extends(View view) {
            view.stopNestedScroll();
        }

        /* renamed from: final, reason: not valid java name */
        public static boolean m1927final(View view) {
            return view.hasNestedScrollingParent();
        }

        /* renamed from: for, reason: not valid java name */
        public static boolean m1928for(View view, float f, float f2, boolean z) {
            return view.dispatchNestedFling(f, f2, z);
        }

        /* renamed from: goto, reason: not valid java name */
        public static PorterDuff.Mode m1929goto(View view) {
            return view.getBackgroundTintMode();
        }

        /* renamed from: if, reason: not valid java name */
        public static C3150jM m1930if(View view, C3150jM c3150jM, Rect rect) {
            WindowInsets m7060goto = c3150jM.m7060goto();
            if (m7060goto != null) {
                return C3150jM.m7056this(view, view.computeSystemWindowInsets(m7060goto, rect));
            }
            rect.setEmpty();
            return c3150jM;
        }

        /* renamed from: import, reason: not valid java name */
        public static void m1931import(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        /* renamed from: native, reason: not valid java name */
        public static void m1932native(View view, float f) {
            view.setElevation(f);
        }

        /* renamed from: new, reason: not valid java name */
        public static boolean m1933new(View view, float f, float f2) {
            return view.dispatchNestedPreFling(f, f2);
        }

        /* renamed from: public, reason: not valid java name */
        public static void m1934public(View view, boolean z) {
            view.setNestedScrollingEnabled(z);
        }

        /* renamed from: return, reason: not valid java name */
        public static void m1935return(View view, InterfaceC0136Bv interfaceC0136Bv) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(R.id.tag_on_apply_window_listener, interfaceC0136Bv);
            }
            if (interfaceC0136Bv == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new Cdo(view, interfaceC0136Bv));
            }
        }

        /* renamed from: static, reason: not valid java name */
        public static void m1936static(View view, String str) {
            view.setTransitionName(str);
        }

        /* renamed from: super, reason: not valid java name */
        public static boolean m1937super(View view) {
            return view.isImportantForAccessibility();
        }

        /* renamed from: switch, reason: not valid java name */
        public static void m1938switch(View view, float f) {
            view.setTranslationZ(f);
        }

        /* renamed from: this, reason: not valid java name */
        public static float m1939this(View view) {
            return view.getElevation();
        }

        /* renamed from: throw, reason: not valid java name */
        public static boolean m1940throw(View view) {
            return view.isNestedScrollingEnabled();
        }

        /* renamed from: throws, reason: not valid java name */
        public static void m1941throws(View view, float f) {
            view.setZ(f);
        }

        /* renamed from: try, reason: not valid java name */
        public static boolean m1942try(View view, int i, int i2, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i, i2, iArr, iArr2);
        }

        /* renamed from: while, reason: not valid java name */
        public static void m1943while(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }
    }

    /* renamed from: QK$this, reason: invalid class name */
    public static class Cthis {
        /* renamed from: case, reason: not valid java name */
        public static void m1944case(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }

        /* renamed from: do, reason: not valid java name */
        public static View.AccessibilityDelegate m1945do(View view) {
            View.AccessibilityDelegate accessibilityDelegate;
            accessibilityDelegate = view.getAccessibilityDelegate();
            return accessibilityDelegate;
        }

        /* renamed from: for, reason: not valid java name */
        public static List<Rect> m1946for(View view) {
            List<Rect> systemGestureExclusionRects;
            systemGestureExclusionRects = view.getSystemGestureExclusionRects();
            return systemGestureExclusionRects;
        }

        /* renamed from: if, reason: not valid java name */
        public static ContentCaptureSession m1947if(View view) {
            ContentCaptureSession contentCaptureSession;
            contentCaptureSession = view.getContentCaptureSession();
            return contentCaptureSession;
        }

        /* renamed from: new, reason: not valid java name */
        public static void m1948new(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }

        /* renamed from: try, reason: not valid java name */
        public static void m1949try(View view, C0313Ka c0313Ka) {
            view.setContentCaptureSession(null);
        }
    }

    /* renamed from: QK$try, reason: invalid class name */
    public static class Ctry {
        /* renamed from: do, reason: not valid java name */
        public static C3150jM m1950do(View view) {
            WindowInsets rootWindowInsets;
            rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            C3150jM m7056this = C3150jM.m7056this(null, rootWindowInsets);
            C3150jM.Ccatch ccatch = m7056this.f13676do;
            ccatch.mo7076throw(m7056this);
            ccatch.mo7065new(view.getRootView());
            return m7056this;
        }

        /* renamed from: for, reason: not valid java name */
        public static void m1951for(View view, int i) {
            view.setScrollIndicators(i);
        }

        /* renamed from: if, reason: not valid java name */
        public static int m1952if(View view) {
            int scrollIndicators;
            scrollIndicators = view.getScrollIndicators();
            return scrollIndicators;
        }

        /* renamed from: new, reason: not valid java name */
        public static void m1953new(View view, int i, int i2) {
            view.setScrollIndicators(i, i2);
        }
    }

    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public static C3209kM m1846break(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Cbreak.m1870for(view);
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    return new C3209kM(window, view);
                }
                return null;
            }
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public static ArrayList m1847case(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m1848catch(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = m1866try(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i);
                if (z) {
                    obtain.getText().add(m1866try(view));
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                        return;
                    } catch (AbstractMethodError unused) {
                        view.getParent().getClass();
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain2);
            obtain2.setEventType(32);
            obtain2.setContentChangeTypes(i);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(m1866try(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m1849class(View view, int i) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
            return;
        }
        Rect m1852else = m1852else();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            m1852else.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !m1852else.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m1862static(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                m1862static((View) parent2);
            }
        }
        if (z && m1852else.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(m1852else);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m1850const(View view, int i) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
            return;
        }
        Rect m1852else = m1852else();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            m1852else.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !m1852else.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m1862static(view);
            Object parent2 = view.getParent();
            if (parent2 instanceof View) {
                m1862static((View) parent2);
            }
        }
        if (z && m1852else.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(m1852else);
        }
    }

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public static C3385nL m1851do(View view) {
        if (f2909do == null) {
            f2909do = new WeakHashMap<>();
        }
        C3385nL c3385nL = f2909do.get(view);
        if (c3385nL != null) {
            return c3385nL;
        }
        C3385nL c3385nL2 = new C3385nL(view);
        f2909do.put(view, c3385nL2);
        return c3385nL2;
    }

    /* renamed from: else, reason: not valid java name */
    public static Rect m1852else() {
        if (f2907do == null) {
            f2907do = new ThreadLocal<>();
        }
        Rect rect = f2907do.get();
        if (rect == null) {
            rect = new Rect();
            f2907do.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    /* renamed from: final, reason: not valid java name */
    public static C3150jM m1853final(View view, C3150jM c3150jM) {
        WindowInsets m7060goto = c3150jM.m7060goto();
        if (m7060goto != null) {
            WindowInsets m1904if = Cfor.m1904if(view, m7060goto);
            if (!m1904if.equals(m7060goto)) {
                return C3150jM.m7056this(view, m1904if);
            }
        }
        return c3150jM;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m1854for(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList<WeakReference<View>> arrayList = Cfinal.f2914do;
        Cfinal cfinal = (Cfinal) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (cfinal == null) {
            cfinal = new Cfinal();
            view.setTag(R.id.tag_unhandled_key_event_manager, cfinal);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap<View, Boolean> weakHashMap = cfinal.f2917do;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList2 = Cfinal.f2914do;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    if (cfinal.f2917do == null) {
                        cfinal.f2917do = new WeakHashMap<>();
                    }
                    int size = arrayList2.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        ArrayList<WeakReference<View>> arrayList3 = Cfinal.f2914do;
                        View view2 = arrayList3.get(size).get();
                        if (view2 == null) {
                            arrayList3.remove(size);
                        } else {
                            cfinal.f2917do.put(view2, Boolean.TRUE);
                            for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                cfinal.f2917do.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }
        View m1901do = cfinal.m1901do(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (m1901do != null && !KeyEvent.isModifierKey(keyCode)) {
                if (cfinal.f2915do == null) {
                    cfinal.f2915do = new SparseArray<>();
                }
                cfinal.f2915do.put(keyCode, new WeakReference<>(m1901do));
            }
        }
        return m1901do != null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String[] m1855goto(View view) {
        return Build.VERSION.SDK_INT >= 31 ? Ccatch.m1880do(view) : (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    /* renamed from: if, reason: not valid java name */
    public static C3150jM m1856if(View view, C3150jM c3150jM) {
        WindowInsets m7060goto = c3150jM.m7060goto();
        if (m7060goto != null) {
            WindowInsets m1902do = Cfor.m1902do(view, m7060goto);
            if (!m1902do.equals(m7060goto)) {
                return C3150jM.m7056this(view, m1902do);
            }
        }
        return c3150jM;
    }

    /* renamed from: import, reason: not valid java name */
    public static void m1857import(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            Cthis.m1948new(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static void m1858native(View view, Cimplements cimplements) {
        if (cimplements == null && (m1859new(view) instanceof Cimplements.Cdo)) {
            cimplements = new Cimplements();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        view.setAccessibilityDelegate(cimplements == null ? null : cimplements.f13563do);
    }

    /* renamed from: new, reason: not valid java name */
    public static View.AccessibilityDelegate m1859new(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return Cthis.m1945do(view);
        }
        if (f2910do) {
            return null;
        }
        if (f2908do == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f2908do = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f2910do = true;
                return null;
            }
        }
        try {
            Object obj = f2908do.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f2910do = true;
            return null;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m1860public(View view, CharSequence charSequence) {
        new NK().m1917try(view, charSequence);
        Cdo cdo = f2906do;
        if (charSequence == null) {
            cdo.f2913do.remove(view);
            view.removeOnAttachStateChangeListener(cdo);
            view.getViewTreeObserver().removeOnGlobalLayoutListener(cdo);
        } else {
            cdo.f2913do.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(cdo);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(cdo);
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m1861return(View view, ColorStateList colorStateList) {
        int i = Build.VERSION.SDK_INT;
        Cnew.m1943while(view, colorStateList);
        if (i == 21) {
            Drawable background = view.getBackground();
            boolean z = (Cnew.m1925else(view) == null && Cnew.m1929goto(view) == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            view.setBackground(background);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m1862static(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: super, reason: not valid java name */
    public static C0378Na m1863super(View view, C0378Na c0378Na) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Objects.toString(c0378Na);
            view.getClass();
            view.getId();
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return Ccatch.m1882if(view, c0378Na);
        }
        InterfaceC0553Uv interfaceC0553Uv = (InterfaceC0553Uv) view.getTag(R.id.tag_on_receive_content_listener);
        InterfaceC0575Vv interfaceC0575Vv = f2905do;
        if (interfaceC0553Uv == null) {
            if (view instanceof InterfaceC0575Vv) {
                interfaceC0575Vv = (InterfaceC0575Vv) view;
            }
            return interfaceC0575Vv.mo1323do(c0378Na);
        }
        C0378Na mo2481do = interfaceC0553Uv.mo2481do(view, c0378Na);
        if (mo2481do == null) {
            return null;
        }
        if (view instanceof InterfaceC0575Vv) {
            interfaceC0575Vv = (InterfaceC0575Vv) view;
        }
        return interfaceC0575Vv.mo1323do(mo2481do);
    }

    /* renamed from: this, reason: not valid java name */
    public static C3150jM m1864this(View view) {
        return Build.VERSION.SDK_INT >= 23 ? Ctry.m1950do(view) : Cnew.m1918break(view);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m1865throw(View view, int i) {
        ArrayList m1847case = m1847case(view);
        for (int i2 = 0; i2 < m1847case.size(); i2++) {
            if (((C3893w.Cdo) m1847case.get(i2)).m8510do() == i) {
                m1847case.remove(i2);
                return;
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static CharSequence m1866try(View view) {
        Object tag;
        if (Build.VERSION.SDK_INT >= 28) {
            tag = Cgoto.m1911if(view);
        } else {
            tag = view.getTag(R.id.tag_accessibility_pane_title);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        return (CharSequence) tag;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m1867while(View view, C3893w.Cdo cdo, String str, B b) {
        if (b == null && str == null) {
            m1865throw(view, cdo.m8510do());
            m1848catch(view, 0);
            return;
        }
        C3893w.Cdo cdo2 = new C3893w.Cdo(null, cdo.f16175do, str, b, cdo.f16177do);
        View.AccessibilityDelegate m1859new = m1859new(view);
        Cimplements cimplements = m1859new == null ? null : m1859new instanceof Cimplements.Cdo ? ((Cimplements.Cdo) m1859new).f13564do : new Cimplements(m1859new);
        if (cimplements == null) {
            cimplements = new Cimplements();
        }
        m1858native(view, cimplements);
        m1865throw(view, cdo2.m8510do());
        m1847case(view).add(cdo2);
        m1848catch(view, 0);
    }
}

package androidx.core.view.insets;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentLayoutInflaterFactory;
import androidx.fragment.app.FragmentStateManager;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.window.layout.adapter.sidecar.SidecarCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SystemBarStateMonitor {
    public final ArrayList mCallbacks = new ArrayList();
    public int mColorHint;
    public final AnonymousClass1 mDetector;
    public Insets mInsets;
    public Insets mInsetsIgnoringVisibility;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.view.View, androidx.core.view.insets.SystemBarStateMonitor$1, java.lang.Object] */
    public SystemBarStateMonitor(final ViewGroup viewGroup) {
        View view;
        Insets insets = Insets.NONE;
        this.mInsets = insets;
        this.mInsetsIgnoringVisibility = insets;
        Drawable background = viewGroup.getBackground();
        int i = 0;
        this.mColorHint = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
        ?? r0 = new View(viewGroup.getContext()) { // from class: androidx.core.view.insets.SystemBarStateMonitor.1
            @Override // android.view.View
            public final void onConfigurationChanged(Configuration configuration) {
                SystemBarStateMonitor systemBarStateMonitor = SystemBarStateMonitor.this;
                ArrayList arrayList = systemBarStateMonitor.mCallbacks;
                Drawable background2 = viewGroup.getBackground();
                int color = background2 instanceof ColorDrawable ? ((ColorDrawable) background2).getColor() : 0;
                if (systemBarStateMonitor.mColorHint != color) {
                    systemBarStateMonitor.mColorHint = color;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ((ProtectionGroup) arrayList.get(size)).onColorHintChanged(color);
                    }
                }
            }
        };
        this.mDetector = r0;
        r0.setVisibility(8);
        r0.setWillNotDraw(true);
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(12, this);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(r0, onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0);
        ViewCompat.setWindowInsetsAnimationCallback(r0, new WindowInsetsAnimationCompat.Callback() { // from class: androidx.core.view.insets.SystemBarStateMonitor.2
            public final HashMap mAnimationSidesMap = new HashMap();

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                ArrayList arrayList = SystemBarStateMonitor.this.mCallbacks;
                if ((windowInsetsAnimationCompat.mImpl.getTypeMask() & 519) != 0) {
                    this.mAnimationSidesMap.remove(windowInsetsAnimationCompat);
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ProtectionGroup protectionGroup = (ProtectionGroup) arrayList.get(size);
                        int i2 = protectionGroup.mAnimationCount;
                        boolean z = i2 > 0;
                        int i3 = i2 - 1;
                        protectionGroup.mAnimationCount = i3;
                        if (z && i3 == 0) {
                            protectionGroup.updateInsets();
                        }
                    }
                }
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                ArrayList arrayList = SystemBarStateMonitor.this.mCallbacks;
                if ((windowInsetsAnimationCompat.mImpl.getTypeMask() & 519) != 0) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ((ProtectionGroup) arrayList.get(size)).mAnimationCount++;
                    }
                }
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
                ArrayList arrayList = SystemBarStateMonitor.this.mCallbacks;
                RectF rectF = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
                int i2 = 0;
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) list.get(size);
                    Integer num = (Integer) this.mAnimationSidesMap.get(windowInsetsAnimationCompat);
                    if (num != null) {
                        int intValue = num.intValue();
                        float alpha = windowInsetsAnimationCompat.mImpl.getAlpha();
                        if ((intValue & 1) != 0) {
                            rectF.left = alpha;
                        }
                        if ((intValue & 2) != 0) {
                            rectF.top = alpha;
                        }
                        if ((intValue & 4) != 0) {
                            rectF.right = alpha;
                        }
                        if ((intValue & 8) != 0) {
                            rectF.bottom = alpha;
                        }
                        i2 |= intValue;
                    }
                }
                Insets.min(windowInsetsCompat.mImpl.getInsets(519), windowInsetsCompat.mImpl.getInsets(64));
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    ProtectionGroup protectionGroup = (ProtectionGroup) arrayList.get(size2);
                    Insets insets2 = protectionGroup.mInsetsIgnoringVisibility;
                    ArrayList arrayList2 = protectionGroup.mProtections;
                    for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
                        ((ColorProtection) arrayList2.get(size3)).getClass();
                        if ((0 & i2) != 0) {
                            throw null;
                        }
                    }
                }
                return windowInsetsCompat;
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WeakCache onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WeakCache weakCache) {
                if ((windowInsetsAnimationCompat.mImpl.getTypeMask() & 519) != 0) {
                    Insets insets2 = (Insets) weakCache.referenceQueue;
                    Insets insets3 = (Insets) weakCache.values;
                    int i2 = insets2.left != insets3.left ? 1 : 0;
                    if (insets2.top != insets3.top) {
                        i2 |= 2;
                    }
                    if (insets2.right != insets3.right) {
                        i2 |= 4;
                    }
                    if (insets2.bottom != insets3.bottom) {
                        i2 |= 8;
                    }
                    this.mAnimationSidesMap.put(windowInsetsAnimationCompat, Integer.valueOf(i2));
                }
                return weakCache;
            }
        });
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                view = null;
                break;
            }
            view = viewGroup.getChildAt(childCount);
            if (view.isAttachedToWindow() != viewGroup.isAttachedToWindow()) {
                break;
            } else {
                childCount--;
            }
        }
        if (view == null) {
            viewGroup.addView((View) r0, 0);
        } else {
            view.addOnAttachStateChangeListener(new AnonymousClass3(viewGroup, r0, i));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.core.view.insets.SystemBarStateMonitor$3, reason: invalid class name */
    public final class AnonymousClass3 implements View.OnAttachStateChangeListener {
        public final /* synthetic */ int $r8$classId;
        public final Object val$child;
        public final Object val$group;

        public AnonymousClass3(SidecarCompat sidecarCompat, Activity activity) {
            this.$r8$classId = 4;
            sidecarCompat.getClass();
            this.val$group = sidecarCompat;
            this.val$child = new WeakReference(activity);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            Window window;
            WindowManager.LayoutParams attributes;
            int i = this.$r8$classId;
            Object obj = this.val$group;
            Object obj2 = this.val$child;
            switch (i) {
                case 0:
                    ((ViewGroup) obj).addView((AnonymousClass1) obj2, 0);
                    view.removeOnAttachStateChangeListener(this);
                    break;
                case 1:
                    AbstractComposeView abstractComposeView = (AbstractComposeView) obj;
                    LifecycleOwner lifecycleOwner = ViewModelKt.get((View) abstractComposeView);
                    if (lifecycleOwner == null) {
                        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("View tree for " + abstractComposeView + " has no ViewTreeLifecycleOwner");
                        _UtilJvmKt$$ExternalSyntheticLambda0.m();
                        break;
                    } else {
                        ((Ref$ObjectRef) obj2).element = TestTagKt.access$installForLifecycle(abstractComposeView, lifecycleOwner.getLifecycle());
                        abstractComposeView.removeOnAttachStateChangeListener(this);
                        break;
                    }
                case 2:
                    break;
                case 3:
                    FragmentStateManager fragmentStateManager = (FragmentStateManager) obj;
                    Fragment fragment = fragmentStateManager.mFragment;
                    fragmentStateManager.moveToExpectedState();
                    DefaultSpecialEffectsController.getOrCreateController((ViewGroup) fragment.mView.getParent(), ((FragmentLayoutInflaterFactory) obj2).mFragmentManager).forceCompleteAllOperations();
                    break;
                default:
                    view.getClass();
                    view.removeOnAttachStateChangeListener(this);
                    Activity activity = (Activity) ((WeakReference) obj2).get();
                    IBinder iBinder = (activity == null || (window = activity.getWindow()) == null || (attributes = window.getAttributes()) == null) ? null : attributes.token;
                    if (activity != null && iBinder != null) {
                        ((SidecarCompat) obj).register(iBinder, activity);
                        break;
                    }
                    break;
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            int i = this.$r8$classId;
            Object obj = this.val$child;
            Object obj2 = this.val$group;
            switch (i) {
                case 0:
                    ((ViewGroup) obj2).addView((AnonymousClass1) obj, 0);
                    view.removeOnAttachStateChangeListener(this);
                    break;
                case 1:
                    break;
                case 2:
                    ((View) obj2).removeOnAttachStateChangeListener(this);
                    ((Recomposer) obj).cancel();
                    break;
                case 3:
                    break;
                default:
                    view.getClass();
                    break;
            }
        }

        public AnonymousClass3(FragmentLayoutInflaterFactory fragmentLayoutInflaterFactory, FragmentStateManager fragmentStateManager) {
            this.$r8$classId = 3;
            this.val$child = fragmentLayoutInflaterFactory;
            this.val$group = fragmentStateManager;
        }

        public /* synthetic */ AnonymousClass3(View view, Object obj, int i) {
            this.$r8$classId = i;
            this.val$group = view;
            this.val$child = obj;
        }

        private final void onViewAttachedToWindow$androidx$compose$ui$platform$WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$1(View view) {
        }

        private final void onViewDetachedFromWindow$androidx$compose$ui$platform$ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1(View view) {
        }

        private final void onViewDetachedFromWindow$androidx$fragment$app$FragmentLayoutInflaterFactory$1(View view) {
        }
    }
}

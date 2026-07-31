package androidx.core.view;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.appcompat.view.menu.CascadingMenuPopup$3$1;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.datastore.preferences.protobuf.ByteString$LiteralByteString;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.transition.Transition;
import com.fsck.k9.R;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowInsetsAnimationCompat {
    public Impl mImpl;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Impl {
        public final long mDurationMillis;
        public float mFraction;
        public final Interpolator mInterpolator;
        public final int mTypeMask;

        public Impl(int i, Interpolator interpolator, long j) {
            this.mTypeMask = i;
            this.mInterpolator = interpolator;
            this.mDurationMillis = j;
        }

        public float getAlpha() {
            return 1.0f;
        }

        public long getDurationMillis() {
            return this.mDurationMillis;
        }

        public float getInterpolatedFraction() {
            float f = this.mFraction;
            Interpolator interpolator = this.mInterpolator;
            return interpolator != null ? interpolator.getInterpolation(f) : f;
        }

        public int getTypeMask() {
            return this.mTypeMask;
        }

        public void setFraction(float f) {
            this.mFraction = f;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Impl21 extends Impl {
        public static final PathInterpolator SHOW_IME_INTERPOLATOR = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);
        public static final FastOutSlowInInterpolator HIDE_IME_INTERPOLATOR = new FastOutSlowInInterpolator(1);
        public static final DecelerateInterpolator SHOW_SYSTEM_BAR_INTERPOLATOR = new DecelerateInterpolator(1.5f);
        public static final AccelerateInterpolator HIDE_SYSTEM_BAR_INTERPOLATOR = new AccelerateInterpolator(1.5f);

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Impl21OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {
            public final Callback mCallback;
            public WindowInsetsCompat mLastInsets;

            public Impl21OnApplyWindowInsetsListener(View view, Callback callback) {
                WindowInsetsCompat windowInsetsCompat;
                this.mCallback = callback;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                WindowInsetsCompat rootWindowInsets = ViewCompat.Api23Impl.getRootWindowInsets(view);
                if (rootWindowInsets != null) {
                    int i = Build.VERSION.SDK_INT;
                    windowInsetsCompat = (i >= 36 ? new WindowInsetsCompat.BuilderImpl36(rootWindowInsets) : i >= 35 ? new WindowInsetsCompat.BuilderImpl35(rootWindowInsets) : i >= 34 ? new WindowInsetsCompat.BuilderImpl34(rootWindowInsets) : i >= 31 ? new WindowInsetsCompat.BuilderImpl31(rootWindowInsets) : i >= 30 ? new WindowInsetsCompat.BuilderImpl30(rootWindowInsets) : i >= 29 ? new WindowInsetsCompat.BuilderImpl29(rootWindowInsets) : new WindowInsetsCompat.BuilderImpl20(rootWindowInsets)).build();
                } else {
                    windowInsetsCompat = null;
                }
                this.mLastInsets = windowInsetsCompat;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(final View view, WindowInsets windowInsets) {
                int[] iArr;
                boolean z;
                if (!view.isLaidOut()) {
                    this.mLastInsets = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                    return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
                }
                final WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
                if (this.mLastInsets == null) {
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    this.mLastInsets = ViewCompat.Api23Impl.getRootWindowInsets(view);
                }
                if (this.mLastInsets == null) {
                    this.mLastInsets = windowInsetsCompat;
                    if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                        return view.onApplyWindowInsets(windowInsets);
                    }
                } else {
                    Callback callback = Impl21.getCallback(view);
                    if (callback == null || !Objects.equals((WindowInsetsCompat) callback.mDispachedInsets, windowInsetsCompat)) {
                        int[] iArr2 = new int[1];
                        int[] iArr3 = new int[1];
                        WindowInsetsCompat windowInsetsCompat2 = this.mLastInsets;
                        int i = 1;
                        while (i <= 512) {
                            Insets insets = impl.getInsets(i);
                            Insets insets2 = windowInsetsCompat2.mImpl.getInsets(i);
                            int i2 = insets.left;
                            int i3 = insets.bottom;
                            int i4 = insets.right;
                            int i5 = insets.top;
                            int i6 = insets2.left;
                            int i7 = insets2.bottom;
                            int[] iArr4 = iArr2;
                            int i8 = insets2.right;
                            int i9 = insets2.top;
                            if (i2 > i6 || i5 > i9 || i4 > i8 || i3 > i7) {
                                iArr = iArr3;
                                z = true;
                            } else {
                                iArr = iArr3;
                                z = false;
                            }
                            if (z != (i2 < i6 || i5 < i9 || i4 < i8 || i3 < i7)) {
                                if (z) {
                                    iArr4[0] = iArr4[0] | i;
                                } else {
                                    iArr[0] = iArr[0] | i;
                                }
                            }
                            i <<= 1;
                            iArr2 = iArr4;
                            iArr3 = iArr;
                        }
                        int i10 = iArr2[0];
                        int i11 = iArr3[0];
                        final int i12 = i10 | i11;
                        if (i12 == 0) {
                            this.mLastInsets = windowInsetsCompat;
                            if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                                return view.onApplyWindowInsets(windowInsets);
                            }
                        } else {
                            final WindowInsetsCompat windowInsetsCompat3 = this.mLastInsets;
                            final WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(i12, (i10 & 8) != 0 ? Impl21.SHOW_IME_INTERPOLATOR : (i11 & 8) != 0 ? Impl21.HIDE_IME_INTERPOLATOR : (i10 & 519) != 0 ? Impl21.SHOW_SYSTEM_BAR_INTERPOLATOR : (i11 & 519) != 0 ? Impl21.HIDE_SYSTEM_BAR_INTERPOLATOR : null, (i12 & 8) != 0 ? 160L : 250L);
                            windowInsetsAnimationCompat.mImpl.setFraction(0.0f);
                            ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.mImpl.getDurationMillis());
                            Insets insets3 = impl.getInsets(i12);
                            Insets insets4 = windowInsetsCompat3.mImpl.getInsets(i12);
                            int min = Math.min(insets3.left, insets4.left);
                            int i13 = insets3.top;
                            int i14 = insets4.top;
                            int min2 = Math.min(i13, i14);
                            int i15 = insets3.right;
                            int i16 = insets4.right;
                            int min3 = Math.min(i15, i16);
                            int i17 = insets3.bottom;
                            int i18 = insets4.bottom;
                            WeakCache weakCache = new WeakCache(15, Insets.of(min, min2, min3, Math.min(i17, i18)), Insets.of(Math.max(insets3.left, insets4.left), Math.max(i13, i14), Math.max(i15, i16), Math.max(i17, i18)));
                            Impl21.dispatchOnPrepare(view, windowInsetsAnimationCompat, windowInsetsCompat, false);
                            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener.1
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    float animatedFraction = valueAnimator.getAnimatedFraction();
                                    WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = WindowInsetsAnimationCompat.this;
                                    Impl impl2 = windowInsetsAnimationCompat2.mImpl;
                                    impl2.setFraction(animatedFraction);
                                    float interpolatedFraction = impl2.getInterpolatedFraction();
                                    PathInterpolator pathInterpolator = Impl21.SHOW_IME_INTERPOLATOR;
                                    int i19 = Build.VERSION.SDK_INT;
                                    WindowInsetsCompat windowInsetsCompat4 = windowInsetsCompat;
                                    WindowInsetsCompat.BuilderImpl builderImpl36 = i19 >= 36 ? new WindowInsetsCompat.BuilderImpl36(windowInsetsCompat4) : i19 >= 35 ? new WindowInsetsCompat.BuilderImpl35(windowInsetsCompat4) : i19 >= 34 ? new WindowInsetsCompat.BuilderImpl34(windowInsetsCompat4) : i19 >= 31 ? new WindowInsetsCompat.BuilderImpl31(windowInsetsCompat4) : i19 >= 30 ? new WindowInsetsCompat.BuilderImpl30(windowInsetsCompat4) : i19 >= 29 ? new WindowInsetsCompat.BuilderImpl29(windowInsetsCompat4) : new WindowInsetsCompat.BuilderImpl20(windowInsetsCompat4);
                                    for (int i20 = 1; i20 <= 512; i20 <<= 1) {
                                        int i21 = i12 & i20;
                                        WindowInsetsCompat.Impl impl3 = windowInsetsCompat4.mImpl;
                                        if (i21 == 0) {
                                            builderImpl36.setInsets(i20, impl3.getInsets(i20));
                                        } else {
                                            Insets insets5 = impl3.getInsets(i20);
                                            Insets insets6 = windowInsetsCompat3.mImpl.getInsets(i20);
                                            float f = 1.0f - interpolatedFraction;
                                            builderImpl36.setInsets(i20, WindowInsetsCompat.insetInsets(insets5, (int) (((insets5.left - insets6.left) * f) + 0.5d), (int) (((insets5.top - insets6.top) * f) + 0.5d), (int) (((insets5.right - insets6.right) * f) + 0.5d), (int) (((insets5.bottom - insets6.bottom) * f) + 0.5d)));
                                        }
                                    }
                                    Impl21.dispatchOnProgress(view, builderImpl36.build(), Collections.singletonList(windowInsetsAnimationCompat2));
                                }
                            });
                            duration.addListener(new Transition.AnonymousClass2(view, windowInsetsAnimationCompat));
                            OneShotPreDrawListener.add(view, new CascadingMenuPopup$3$1(view, windowInsetsAnimationCompat, weakCache, duration));
                            this.mLastInsets = windowInsetsCompat;
                            if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                                return view.onApplyWindowInsets(windowInsets);
                            }
                        }
                    } else if (view.getTag(R.id.tag_on_apply_window_listener) == null) {
                        return view.onApplyWindowInsets(windowInsets);
                    }
                }
                return windowInsets;
            }
        }

        public static void dispatchOnEnd(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback callback = getCallback(view);
            if (callback != null) {
                callback.onEnd(windowInsetsAnimationCompat);
                if (callback.mDispatchMode == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    dispatchOnEnd(viewGroup.getChildAt(i), windowInsetsAnimationCompat);
                }
            }
        }

        public static void dispatchOnPrepare(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, boolean z) {
            Callback callback = getCallback(view);
            if (callback != null) {
                callback.mDispachedInsets = windowInsetsCompat;
                if (!z) {
                    callback.onPrepare(windowInsetsAnimationCompat);
                    z = callback.mDispatchMode == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    dispatchOnPrepare(viewGroup.getChildAt(i), windowInsetsAnimationCompat, windowInsetsCompat, z);
                }
            }
        }

        public static void dispatchOnProgress(View view, WindowInsetsCompat windowInsetsCompat, List list) {
            Callback callback = getCallback(view);
            if (callback != null) {
                windowInsetsCompat = callback.onProgress(windowInsetsCompat, list);
                if (callback.mDispatchMode == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    dispatchOnProgress(viewGroup.getChildAt(i), windowInsetsCompat, list);
                }
            }
        }

        public static void dispatchOnStart(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WeakCache weakCache) {
            Callback callback = getCallback(view);
            if (callback != null) {
                callback.onStart(windowInsetsAnimationCompat, weakCache);
                if (callback.mDispatchMode == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    dispatchOnStart(viewGroup.getChildAt(i), windowInsetsAnimationCompat, weakCache);
                }
            }
        }

        public static Callback getCallback(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof Impl21OnApplyWindowInsetsListener) {
                return ((Impl21OnApplyWindowInsetsListener) tag).mCallback;
            }
            return null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Impl30 extends Impl {
        public final WindowInsetsAnimation mWrapped;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class ProxyCallback extends WindowInsetsAnimation$Callback {
            public final HashMap mAnimations;
            public final Callback mCompat;
            public List mRORunningAnimations;
            public ArrayList mTmpRunningAnimations;

            public ProxyCallback(Callback callback) {
                super(callback.mDispatchMode);
                this.mAnimations = new HashMap();
                this.mCompat = callback;
            }

            public final WindowInsetsAnimationCompat getWindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
                HashMap hashMap = this.mAnimations;
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) hashMap.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat != null) {
                    return windowInsetsAnimationCompat;
                }
                WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = new WindowInsetsAnimationCompat(0, null, 0L);
                windowInsetsAnimationCompat2.mImpl = new Impl30(windowInsetsAnimation);
                hashMap.put(windowInsetsAnimation, windowInsetsAnimationCompat2);
                return windowInsetsAnimationCompat2;
            }

            public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.mCompat.onEnd(getWindowInsetsAnimationCompat(windowInsetsAnimation));
                this.mAnimations.remove(windowInsetsAnimation);
            }

            public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.mCompat.onPrepare(getWindowInsetsAnimationCompat(windowInsetsAnimation));
            }

            public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
                ArrayList arrayList = this.mTmpRunningAnimations;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList(list.size());
                    this.mTmpRunningAnimations = arrayList2;
                    this.mRORunningAnimations = DesugarCollections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimation = (WindowInsetsAnimation) list.get(size);
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = getWindowInsetsAnimationCompat(windowInsetsAnimation);
                    windowInsetsAnimationCompat.mImpl.setFraction(windowInsetsAnimation.getFraction());
                    this.mTmpRunningAnimations.add(windowInsetsAnimationCompat);
                }
                return this.mCompat.onProgress(WindowInsetsCompat.toWindowInsetsCompat(windowInsets, null), this.mRORunningAnimations).toWindowInsets();
            }

            public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                WeakCache onStart = this.mCompat.onStart(getWindowInsetsAnimationCompat(windowInsetsAnimation), new WeakCache(bounds));
                onStart.getClass();
                WindowInsetsAnimationCompat$Impl30$$ExternalSyntheticApiModelOutline0.m();
                return WindowInsetsAnimationCompat$Impl30$$ExternalSyntheticApiModelOutline0.m(((Insets) onStart.values).toPlatformInsets(), ((Insets) onStart.referenceQueue).toPlatformInsets());
            }
        }

        public Impl30(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.mWrapped = windowInsetsAnimation;
        }

        public static Insets getHigherBounds(WindowInsetsAnimation.Bounds bounds) {
            return Insets.toCompatInsets(bounds.getUpperBound());
        }

        public static Insets getLowerBounds(WindowInsetsAnimation.Bounds bounds) {
            return Insets.toCompatInsets(bounds.getLowerBound());
        }

        public static void setCallback(View view, Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new ProxyCallback(callback) : null);
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final float getAlpha() {
            return this.mWrapped.getAlpha();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final long getDurationMillis() {
            return this.mWrapped.getDurationMillis();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final float getInterpolatedFraction() {
            return this.mWrapped.getInterpolatedFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final int getTypeMask() {
            return this.mWrapped.getTypeMask();
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Impl
        public final void setFraction(float f) {
            this.mWrapped.setFraction(f);
        }
    }

    public WindowInsetsAnimationCompat(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new Impl30(WindowInsetsAnimationCompat$Impl30$$ExternalSyntheticApiModelOutline0.m(i, interpolator, j));
        } else {
            this.mImpl = new Impl21(i, interpolator, j);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Callback {
        public Object mDispachedInsets;
        public int mDispatchMode;

        public Callback(int i) {
            this.mDispatchMode = i;
        }

        public abstract void checkLastTagWas(int i);

        public abstract int getTotalBytesRead();

        public abstract boolean isAtEnd();

        public abstract WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list);

        public abstract WeakCache onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WeakCache weakCache);

        public abstract void popLimit(int i);

        public abstract int pushLimit(int i);

        public abstract boolean readBool();

        public abstract ByteString$LiteralByteString readBytes();

        public abstract double readDouble();

        public abstract int readEnum();

        public abstract int readFixed32();

        public abstract long readFixed64();

        public abstract float readFloat();

        public abstract int readInt32();

        public abstract long readInt64();

        public abstract int readSFixed32();

        public abstract long readSFixed64();

        public abstract int readSInt32();

        public abstract long readSInt64();

        public abstract String readString();

        public abstract String readStringRequireUtf8();

        public abstract int readTag();

        public abstract int readUInt32();

        public abstract long readUInt64();

        public abstract boolean skipField(int i);

        public void skipMessage() {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
                int i = this.mDispatchMode;
                if (i >= 100) {
                    throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                }
                this.mDispatchMode = i + 1;
                this.mDispatchMode--;
            } while (skipField(readTag));
        }

        public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }
    }
}

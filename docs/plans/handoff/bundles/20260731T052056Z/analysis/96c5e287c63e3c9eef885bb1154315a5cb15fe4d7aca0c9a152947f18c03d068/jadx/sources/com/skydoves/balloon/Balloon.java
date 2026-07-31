package com.skydoves.balloon;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.app.ActivityRecreator;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.timepicker.TimePickerView;
import com.google.gson.GsonBuilder;
import com.skydoves.balloon.overlay.BalloonAnchorOverlayView;
import com.skydoves.balloon.overlay.BalloonOverlayAnimation;
import com.skydoves.balloon.radius.RadiusLayout;
import com.skydoves.balloon.vectortext.VectorTextView;
import com.skydoves.balloon.vectortext.VectorTextViewParams;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.SynchronizedLazyImpl;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Balloon implements DefaultLifecycleObserver {
    public final Lazy autoDismissRunnable$delegate;
    public final GsonBuilder binding;
    public final PopupWindow bodyWindow;
    public final Builder builder;
    public final Context context;
    public boolean destroyed;
    public final Lazy handler$delegate;
    public boolean isShowing;
    public BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0 onBalloonInitializedListener;
    public final PopupWindow overlayWindow;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public int arrowAlignAnchorPadding;
        public Drawable arrowDrawable;
        public int arrowHeight;
        public ArrowOrientation arrowOrientation;
        public ArrowOrientationRules arrowOrientationRules;
        public ArrowPositionRules arrowPositionRules;
        public int arrowSize;
        public int arrowWidth;
        public int backgroundColor;
        public BalloonAnimation balloonAnimation;
        public BalloonHighlightAnimation balloonHighlightAnimation;
        public BalloonOverlayAnimation balloonOverlayAnimation;
        public float cornerRadius;
        public boolean dismissWhenTouchOutside;
        public float elevation;
        public int height;
        public IconGravity iconGravity;
        public boolean isFocusable;
        public boolean isRtlLayout;
        public LinearLayout layout;
        public LifecycleOwner lifecycleOwner;
        public int marginBottom;
        public int marginLeft;
        public int marginRight;
        public int marginTop;
        public int maxWidth;
        public int supportRtlLayoutFactor;
        public int width;

        public final /* synthetic */ int getEffectiveArrowHeight() {
            int i = this.arrowHeight;
            return i != Integer.MIN_VALUE ? i : this.arrowSize;
        }

        public final /* synthetic */ int getEffectiveArrowWidth() {
            int i = this.arrowWidth;
            return i != Integer.MIN_VALUE ? i : this.arrowSize;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;
        public static final /* synthetic */ int[] $EnumSwitchMapping$5;
        public static final /* synthetic */ int[] $EnumSwitchMapping$6;

        static {
            int[] iArr = new int[ArrowOrientation.values().length];
            try {
                iArr[ArrowOrientation.BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ArrowOrientation.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ArrowOrientation.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ArrowOrientation.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ArrowPositionRules.values().length];
            try {
                iArr2[ArrowPositionRules.ALIGN_ANCHOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[ArrowPositionRules.ALIGN_BALLOON.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[BalloonAnimation.values().length];
            try {
                iArr3[BalloonAnimation.ELASTIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[BalloonAnimation.CIRCULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[BalloonAnimation.FADE.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[BalloonAnimation.OVERSHOOT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[BalloonAnimation.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[BalloonOverlayAnimation.values().length];
            try {
                iArr4[BalloonOverlayAnimation.FADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$3 = iArr4;
            int[] iArr5 = new int[BalloonHighlightAnimation.values().length];
            try {
                iArr5[BalloonHighlightAnimation.HEARTBEAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr5[BalloonHighlightAnimation.SHAKE.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr5[BalloonHighlightAnimation.BREATH.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr5[BalloonHighlightAnimation.ROTATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$4 = iArr5;
            int[] iArr6 = new int[PlacementType.values().length];
            try {
                iArr6[PlacementType.DROPDOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr6[PlacementType.ALIGNMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr6[PlacementType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            $EnumSwitchMapping$5 = iArr6;
            int[] iArr7 = new int[BalloonAlign.values().length];
            try {
                iArr7[BalloonAlign.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr7[BalloonAlign.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr7[BalloonAlign.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr7[BalloonAlign.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused23) {
            }
            $EnumSwitchMapping$6 = iArr7;
            int[] iArr8 = new int[BalloonCenterAlign.values().length];
            try {
                iArr8[BalloonCenterAlign.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr8[BalloonCenterAlign.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr8[BalloonCenterAlign.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr8[BalloonCenterAlign.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    static {
        new SynchronizedLazyImpl(new UtilsKt$$ExternalSyntheticLambda0(8));
        new SynchronizedLazyImpl(new UtilsKt$$ExternalSyntheticLambda0(9));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Balloon(Context context, Builder builder) {
        LifecycleRegistry lifecycle;
        this.context = context;
        this.builder = builder;
        int i = 0;
        View inflate = LayoutInflater.from(context).inflate(R.layout.balloon_layout_body, (ViewGroup) null, false);
        FrameLayout frameLayout = (FrameLayout) inflate;
        int i2 = R.id.balloon_arrow;
        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.balloon_arrow);
        if (imageView != null) {
            i2 = R.id.balloon_card;
            RadiusLayout radiusLayout = (RadiusLayout) Room.findChildViewById(inflate, R.id.balloon_card);
            if (radiusLayout != null) {
                i2 = R.id.balloon_content;
                FrameLayout frameLayout2 = (FrameLayout) Room.findChildViewById(inflate, R.id.balloon_content);
                if (frameLayout2 != null) {
                    i2 = R.id.balloon_text;
                    VectorTextView vectorTextView = (VectorTextView) Room.findChildViewById(inflate, R.id.balloon_text);
                    if (vectorTextView != null) {
                        i2 = R.id.balloon_wrapper;
                        FrameLayout frameLayout3 = (FrameLayout) Room.findChildViewById(inflate, R.id.balloon_wrapper);
                        if (frameLayout3 != null) {
                            this.binding = new GsonBuilder(frameLayout, frameLayout, imageView, radiusLayout, frameLayout2, vectorTextView, frameLayout3, 3);
                            View inflate2 = LayoutInflater.from(context).inflate(R.layout.balloon_layout_overlay, (ViewGroup) null, false);
                            if (inflate2 == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
                                throw null;
                            }
                            BalloonAnchorOverlayView balloonAnchorOverlayView = (BalloonAnchorOverlayView) inflate2;
                            PopupWindow popupWindow = new PopupWindow(frameLayout, -2, -2);
                            this.bodyWindow = popupWindow;
                            this.overlayWindow = new PopupWindow(balloonAnchorOverlayView, -1, -1);
                            this.onBalloonInitializedListener = null;
                            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
                            this.handler$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(10));
                            this.autoDismissRunnable$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Balloon$$ExternalSyntheticLambda3(this, i));
                            ContextsKt.lazy(lazyThreadSafetyMode, new Balloon$$ExternalSyntheticLambda3(this, 1));
                            float f = builder.elevation;
                            radiusLayout.setAlpha(1.0f);
                            float f2 = builder.cornerRadius;
                            radiusLayout.setRadius(f2);
                            radiusLayout.setRadius(f2);
                            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                            radiusLayout.setElevation(f);
                            radiusLayout.setDrawCustomShape(false);
                            GradientDrawable gradientDrawable = new GradientDrawable();
                            gradientDrawable.setColor(builder.backgroundColor);
                            gradientDrawable.setCornerRadius(f2);
                            radiusLayout.setBackground(gradientDrawable);
                            radiusLayout.setBackgroundTintList(null);
                            radiusLayout.setPadding(0, 0, 0, 0);
                            ViewGroup.LayoutParams layoutParams = frameLayout3.getLayoutParams();
                            layoutParams.getClass();
                            ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(builder.marginLeft, builder.marginTop, builder.marginRight, builder.marginBottom);
                            frameLayout3.setFocusable(false);
                            frameLayout3.setFocusableInTouchMode(false);
                            int i3 = Build.VERSION.SDK_INT;
                            if (i3 >= 26) {
                                frameLayout3.setDefaultFocusHighlightEnabled(false);
                            }
                            frameLayout.setFocusable(false);
                            frameLayout.setFocusableInTouchMode(false);
                            if (i3 >= 26) {
                                frameLayout.setDefaultFocusHighlightEnabled(false);
                            }
                            radiusLayout.setFocusable(false);
                            radiusLayout.setFocusableInTouchMode(false);
                            if (i3 >= 26) {
                                radiusLayout.setDefaultFocusHighlightEnabled(false);
                            }
                            popupWindow.setOutsideTouchable(true);
                            popupWindow.setFocusable(builder.isFocusable);
                            popupWindow.setClippingEnabled(true);
                            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                            popupWindow.setElevation(f);
                            popupWindow.setAttachedInDecor(true);
                            LinearLayout linearLayout = builder.layout;
                            if (linearLayout == null) {
                                vectorTextView.getContext().getClass();
                                UnsignedKt.roundToInt(TypedValue.applyDimension(1, 28.0f, Resources.getSystem().getDisplayMetrics()));
                                UnsignedKt.roundToInt(TypedValue.applyDimension(1, 28.0f, Resources.getSystem().getDisplayMetrics()));
                                UnsignedKt.roundToInt(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
                                builder.iconGravity.getClass();
                                boolean z = builder.isRtlLayout;
                                VectorTextViewParams vectorTextViewParams = vectorTextView.drawableTextViewParams;
                                if (vectorTextViewParams != null) {
                                    vectorTextViewParams.isRtlLayout = z;
                                    UStringsKt.applyDrawable(vectorTextView, vectorTextViewParams);
                                }
                                vectorTextView.getContext().getClass();
                                vectorTextView.setMovementMethod(null);
                                vectorTextView.setText("");
                                vectorTextView.setTextSize(12.0f);
                                vectorTextView.setGravity(17);
                                vectorTextView.setTextColor(-1);
                                vectorTextView.setIncludeFontPadding(true);
                                vectorTextView.setTypeface(vectorTextView.getTypeface(), 0);
                                measureTextWidth(vectorTextView, radiusLayout);
                            } else {
                                if (linearLayout == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("The custom layout is null.");
                                    throw null;
                                }
                                ViewParent parent = linearLayout.getParent();
                                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                                if (viewGroup != null) {
                                    viewGroup.removeView(linearLayout);
                                }
                                radiusLayout.removeAllViews();
                                radiusLayout.addView(linearLayout);
                                traverseAndMeasureTextWidth(radiusLayout);
                            }
                            initializeBalloonContent();
                            popupWindow.setOnDismissListener(new Balloon$$ExternalSyntheticLambda7(i, this, null));
                            popupWindow.setTouchInterceptor(new TimePickerView.AnonymousClass3(2, this));
                            balloonAnchorOverlayView.setOnClickListener(new Balloon$$ExternalSyntheticLambda8(this, 0));
                            adjustFitsSystemWindows(frameLayout);
                            LifecycleOwner lifecycleOwner = builder.lifecycleOwner;
                            if (lifecycleOwner == null && (context instanceof LifecycleOwner)) {
                                LifecycleOwner lifecycleOwner2 = (LifecycleOwner) context;
                                builder.lifecycleOwner = lifecycleOwner2;
                                lifecycleOwner2.getLifecycle().addObserver(this);
                                return;
                            } else {
                                if (lifecycleOwner == null || (lifecycle = lifecycleOwner.getLifecycle()) == null) {
                                    return;
                                }
                                lifecycle.addObserver(this);
                                return;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        throw null;
    }

    public static void adjustFitsSystemWindows(ViewGroup viewGroup) {
        viewGroup.setFitsSystemWindows(false);
        IntRange until = RegexKt.until(0, viewGroup.getChildCount());
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(until, 10));
        Iterator it = until.iterator();
        while (((IntProgressionIterator) it).hasNext) {
            arrayList.add(viewGroup.getChildAt(((IntIterator) it).nextInt()));
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            View view = (View) it2.next();
            view.setFitsSystemWindows(false);
            if (view instanceof ViewGroup) {
                adjustFitsSystemWindows((ViewGroup) view);
            }
        }
    }

    public final boolean canShowBalloonWindow(View view) {
        if (this.isShowing || this.destroyed) {
            return false;
        }
        Activity findActivity = RegexKt.findActivity(this.context);
        if ((findActivity == null || !findActivity.isFinishing()) && this.bodyWindow.getContentView().getParent() == null && view.isAttachedToWindow()) {
            return view.getWindowToken().isBinderAlive();
        }
        return false;
    }

    public final void dismiss() {
        if (this.isShowing) {
            Balloon$$ExternalSyntheticLambda3 balloon$$ExternalSyntheticLambda3 = new Balloon$$ExternalSyntheticLambda3(this, 2);
            if (this.builder.balloonAnimation != BalloonAnimation.CIRCULAR) {
                balloon$$ExternalSyntheticLambda3.invoke();
                return;
            }
            View contentView = this.bodyWindow.getContentView();
            contentView.getClass();
            contentView.post(new ActivityRecreator.AnonymousClass1(10, contentView, balloon$$ExternalSyntheticLambda3));
        }
    }

    public final float getArrowConstraintPositionX(View view) {
        int i = UuidKt.getViewPointOnScreen((FrameLayout) this.binding.factories).x;
        int i2 = UuidKt.getViewPointOnScreen(view).x;
        Builder builder = this.builder;
        float effectiveArrowWidth = (builder.getEffectiveArrowWidth() * 2.5f) + builder.arrowAlignAnchorPadding;
        float measuredWidth = ((getMeasuredWidth() - effectiveArrowWidth) - builder.marginRight) - builder.marginLeft;
        float effectiveArrowWidth2 = builder.getEffectiveArrowWidth() * 0.5f;
        int i3 = WhenMappings.$EnumSwitchMapping$1[builder.arrowPositionRules.ordinal()];
        if (i3 != 1) {
            if (i3 == 2) {
                return (((FrameLayout) r0.reflectionFilters).getWidth() * 0.5f) - effectiveArrowWidth2;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return RecyclerView.DECELERATION_RATE;
        }
        if (view.getWidth() + i2 >= i) {
            if (getMeasuredWidth() + i >= i2) {
                float f = i2;
                float f2 = i;
                float width = (((view.getWidth() * 0.5f) + f) - f2) - effectiveArrowWidth2;
                float width2 = ((view.getWidth() * 0.5f) + f) - effectiveArrowWidth2;
                if (width2 <= f2) {
                    return RecyclerView.DECELERATION_RATE;
                }
                if (width2 > f2 && view.getWidth() <= (getMeasuredWidth() - builder.marginRight) - builder.marginLeft) {
                    return width2 - f2;
                }
                if (width > builder.getEffectiveArrowWidth() * 2) {
                    if (width <= getMeasuredWidth() - (builder.getEffectiveArrowWidth() * 2)) {
                        return width;
                    }
                }
            }
            return measuredWidth;
        }
        return effectiveArrowWidth;
    }

    public final float getArrowConstraintPositionY(View view) {
        int i;
        view.getClass();
        Rect rect = new Rect();
        Context context = view.getContext();
        context.getClass();
        Activity findActivity = RegexKt.findActivity(context);
        if (findActivity != null) {
            findActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            i = rect.top;
        } else {
            i = 0;
        }
        int i2 = UuidKt.getViewPointOnScreen((FrameLayout) this.binding.factories).y - i;
        int i3 = UuidKt.getViewPointOnScreen(view).y - i;
        float effectiveArrowHeight = (r0.getEffectiveArrowHeight() * 2.5f) + r0.arrowAlignAnchorPadding;
        float measuredHeight = ((getMeasuredHeight() - effectiveArrowHeight) - r0.marginTop) - r0.marginBottom;
        float effectiveArrowHeight2 = r0.getEffectiveArrowHeight() * 0.5f;
        int i4 = WhenMappings.$EnumSwitchMapping$1[this.builder.arrowPositionRules.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                return (((FrameLayout) r1.reflectionFilters).getHeight() * 0.5f) - effectiveArrowHeight2;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return RecyclerView.DECELERATION_RATE;
        }
        if (view.getHeight() + i3 >= i2) {
            if (getMeasuredHeight() + i2 >= i3) {
                float height = (((view.getHeight() * 0.5f) + i3) - i2) - effectiveArrowHeight2;
                if (height > r0.getEffectiveArrowHeight() * 2) {
                    if (height <= getMeasuredHeight() - (r0.getEffectiveArrowHeight() * 2)) {
                        return height;
                    }
                }
            }
            return measuredHeight;
        }
        return effectiveArrowHeight;
    }

    public final int getMeasuredHeight() {
        int i = this.builder.height;
        return i != Integer.MIN_VALUE ? i : ((FrameLayout) this.binding.excluder).getMeasuredHeight();
    }

    public final int getMeasuredWidth() {
        int i = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).x;
        Builder builder = this.builder;
        int i2 = builder.width;
        if (i2 == Integer.MIN_VALUE) {
            int coerceIn = RegexKt.coerceIn(((FrameLayout) this.binding.excluder).getMeasuredWidth(), 0, builder.maxWidth);
            if (coerceIn <= i) {
                return coerceIn;
            }
        } else if (i2 <= i) {
            return i2;
        }
        return i;
    }

    public final void initializeBalloonContent() {
        Builder builder = this.builder;
        int i = (int) builder.elevation;
        FrameLayout frameLayout = (FrameLayout) this.binding.factories;
        int i2 = WhenMappings.$EnumSwitchMapping$0[builder.arrowOrientation.ordinal()];
        if (i2 == 1 || i2 == 2) {
            int effectiveArrowHeight = builder.getEffectiveArrowHeight() - 1;
            frameLayout.setPadding(i, effectiveArrowHeight, i, effectiveArrowHeight < i ? i : effectiveArrowHeight);
        } else if (i2 != 3 && i2 != 4) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
        } else {
            int effectiveArrowWidth = builder.getEffectiveArrowWidth() - 1;
            frameLayout.setPadding(effectiveArrowWidth, i, effectiveArrowWidth, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void measureTextWidth(android.widget.TextView r6, android.view.View r7) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.balloon.Balloon.measureTextWidth(android.widget.TextView, android.view.View):void");
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        LifecycleRegistry lifecycle;
        this.destroyed = true;
        this.overlayWindow.dismiss();
        this.bodyWindow.dismiss();
        LifecycleOwner lifecycleOwner2 = this.builder.lifecycleOwner;
        if (lifecycleOwner2 == null || (lifecycle = lifecycleOwner2.getLifecycle()) == null) {
            return;
        }
        lifecycle.removeObserver(this);
    }

    public final void setOnBalloonDismissListener(Function0 function0) {
        this.bodyWindow.setOnDismissListener(new Balloon$$ExternalSyntheticLambda7(0, this, new BalloonKt$sam$com_skydoves_balloon_OnBalloonDismissListener$0(function0)));
    }

    public final void showAlignBottom(View view, int i) {
        view.getClass();
        BalloonPlacement balloonPlacement = new BalloonPlacement(view, BalloonAlign.BOTTOM, i);
        View view2 = balloonPlacement.anchor;
        if (canShowBalloonWindow(view2)) {
            view2.post(new Processor$$ExternalSyntheticLambda1(this, view2, balloonPlacement, 7));
        }
    }

    public final void traverseAndMeasureTextWidth(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.getClass();
            if (childAt instanceof TextView) {
                measureTextWidth((TextView) childAt, viewGroup);
            } else if (childAt instanceof ViewGroup) {
                traverseAndMeasureTextWidth((ViewGroup) childAt);
            }
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
    }
}

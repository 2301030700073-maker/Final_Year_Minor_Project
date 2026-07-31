package androidx.compose.ui.window;

import android.graphics.Outline;
import android.graphics.Rect;
import android.os.Build;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.graphics.layer.ViewLayer;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.glance.layout.SpacerKt$Spacer$3;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.hcaptcha.sdk.HCaptchaCompat;
import java.util.UUID;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import org.wikipedia.R;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PopupLayout extends AbstractComposeView {
    public Api33Impl$$ExternalSyntheticLambda0 backCallback;
    public final DerivedSnapshotState canCalculatePosition$delegate;
    public final View composeView;
    public final ParcelableSnapshotMutableState content$delegate;
    public final boolean isNested;
    public final int[] locationOnScreen;
    public Function0 onDismissRequest;
    public final WindowManager.LayoutParams params;
    public IntRect parentBounds;
    public final ParcelableSnapshotMutableState parentLayoutCoordinates$delegate;
    public LayoutDirection parentLayoutDirection;
    public final ParcelableSnapshotMutableState popupContentSize$delegate;
    public final PopupLayoutHelperImpl popupLayoutHelper;
    public PopupPositionProvider positionProvider;
    public final Rect previousWindowVisibleFrame;
    public PopupProperties properties;
    public boolean shouldCreateCompositionOnAttachedToWindow;
    public final PreferenceManager snapshotStateObserver;
    public String testTag;
    public final WindowManager windowManager;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.compose.ui.window.PopupLayout$2, reason: invalid class name */
    public final class AnonymousClass2 extends ViewOutlineProvider {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass2(int i) {
            this.$r8$classId = i;
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            Outline outline2;
            switch (this.$r8$classId) {
                case 0:
                    outline.setRect(0, 0, view.getWidth(), view.getHeight());
                    outline.setAlpha(RecyclerView.DECELERATION_RATE);
                    return;
                case 1:
                    if (!(view instanceof ViewLayer) || (outline2 = ((ViewLayer) view).layerOutline) == null) {
                        return;
                    }
                    outline.set(outline2);
                    return;
                case 2:
                    view.getClass();
                    throw new ClassCastException();
                case 3:
                    outline.setRect(0, 0, view.getWidth(), view.getHeight());
                    outline.setAlpha(RecyclerView.DECELERATION_RATE);
                    return;
                default:
                    outline.setOval(0, 0, view.getWidth(), view.getHeight());
                    return;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PopupLayout(Function0 function0, PopupProperties popupProperties, String str, View view, Density density, PopupPositionProvider popupPositionProvider, UUID uuid, boolean z) {
        super(view.getContext(), null);
        int i = Build.VERSION.SDK_INT;
        PopupLayoutHelperImpl popupLayoutHelperImpl30 = i >= 30 ? new PopupLayoutHelperImpl30() : i >= 29 ? new PopupLayoutHelperImpl29() : new PopupLayoutHelperImpl();
        this.onDismissRequest = function0;
        this.properties = popupProperties;
        this.testTag = str;
        this.composeView = view;
        this.isNested = z;
        this.popupLayoutHelper = popupLayoutHelperImpl30;
        Object systemService = view.getContext().getSystemService("window");
        systemService.getClass();
        this.windowManager = (WindowManager) systemService;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        PopupProperties popupProperties2 = this.properties;
        boolean isFlagSecureEnabled = AndroidPopup_androidKt.isFlagSecureEnabled(view);
        boolean z2 = popupProperties2.inheritSecurePolicy;
        int i2 = popupProperties2.flags;
        if (z2 && isFlagSecureEnabled) {
            i2 |= 8192;
        } else if (z2 && !isFlagSecureEnabled) {
            i2 &= -8193;
        }
        layoutParams.flags = i2;
        layoutParams.type = this.properties.windowType;
        layoutParams.token = view.getApplicationWindowToken();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.setTitle(view.getContext().getResources().getString(R.string.default_popup_window_title));
        this.params = layoutParams;
        this.positionProvider = popupPositionProvider;
        this.parentLayoutDirection = LayoutDirection.Ltr;
        this.popupContentSize$delegate = Updater.mutableStateOf$default(null);
        this.parentLayoutCoordinates$delegate = Updater.mutableStateOf$default(null);
        this.canCalculatePosition$delegate = SnapshotStateKt__DerivedStateKt.derivedStateOf(new LayoutNode$_foldedChildren$1(16, this));
        this.previousWindowVisibleFrame = new Rect();
        this.snapshotStateObserver = new PreferenceManager(new AndroidPopup_androidKt$Popup$7$1(this, 2));
        setId(android.R.id.content);
        setTag(R.id.view_tree_lifecycle_owner, ViewModelKt.get(view));
        setTag(R.id.view_tree_view_model_store_owner, ViewModelKt.m752get(view));
        setTag(R.id.view_tree_saved_state_registry_owner, ExceptionsKt.get(view));
        setTag(R.id.compose_view_saveable_id_tag, "Popup:" + uuid);
        setClipChildren(false);
        setElevation(density.mo87toPx0680j_4(8.0f));
        setOutlineProvider(new AnonymousClass2(0));
        this.content$delegate = Updater.mutableStateOf$default(ComposableSingletons$AndroidPopup_androidKt.f13lambda$1131826196);
        this.locationOnScreen = new int[2];
    }

    private final Function2 getContent() {
        return (Function2) this.content$delegate.getValue();
    }

    private final IntRect getDisplayBounds() {
        int i = this.properties.flags & 512;
        View view = this.composeView;
        Rect rect = this.previousWindowVisibleFrame;
        PopupLayoutHelperImpl popupLayoutHelperImpl = this.popupLayoutHelper;
        if (i == 0) {
            popupLayoutHelperImpl.getClass();
            view.getWindowVisibleDisplayFrame(rect);
        } else {
            popupLayoutHelperImpl.getWindowBounds(view, rect);
        }
        return new IntRect(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCoordinates getParentLayoutCoordinates() {
        return (LayoutCoordinates) this.parentLayoutCoordinates$delegate.getValue();
    }

    private final void setParentLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        this.parentLayoutCoordinates$delegate.setValue(layoutCoordinates);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void Content(int i, GapComposer gapComposer) {
        gapComposer.startRestartGroup(-857613600);
        int i2 = (gapComposer.changedInstance(this) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            getContent().invoke(gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SpacerKt$Spacer$3(i, 8, this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.properties.dismissOnBackPress) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getKeyCode() == 4 || keyEvent.getKeyCode() == 111) {
            KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
            if (keyDispatcherState == null) {
                return super.dispatchKeyEvent(keyEvent);
            }
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                keyDispatcherState.startTracking(keyEvent, this);
                return true;
            }
            if (keyEvent.getAction() == 1 && keyDispatcherState.isTracking(keyEvent) && !keyEvent.isCanceled()) {
                Function0 function0 = this.onDismissRequest;
                if (function0 != null) {
                    function0.invoke();
                }
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public final boolean getCanCalculatePosition() {
        return ((Boolean) this.canCalculatePosition$delegate.getValue()).booleanValue();
    }

    public final WindowManager.LayoutParams getParams$ui() {
        return this.params;
    }

    public final LayoutDirection getParentLayoutDirection() {
        return this.parentLayoutDirection;
    }

    /* renamed from: getPopupContentSize-bOM6tXw, reason: not valid java name */
    public final IntSize m736getPopupContentSizebOM6tXw() {
        return (IntSize) this.popupContentSize$delegate.getValue();
    }

    public final PopupPositionProvider getPositionProvider() {
        return this.positionProvider;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    public final String getTestTag() {
        return this.testTag;
    }

    public View getViewRoot() {
        return null;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void internalOnLayout$ui(boolean z, int i, int i2, int i3, int i4) {
        super.internalOnLayout$ui(z, i, i2, i3, i4);
        this.properties.getClass();
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        WindowManager.LayoutParams layoutParams = this.params;
        layoutParams.width = measuredWidth;
        layoutParams.height = childAt.getMeasuredHeight();
        this.popupLayoutHelper.getClass();
        this.windowManager.updateViewLayout(this, layoutParams);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void internalOnMeasure$ui(int i, int i2) {
        this.properties.getClass();
        IntRect displayBounds = getDisplayBounds();
        super.internalOnMeasure$ui(View.MeasureSpec.makeMeasureSpec(displayBounds.getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(displayBounds.getHeight(), Integer.MIN_VALUE));
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.snapshotStateObserver.start();
        if (!this.properties.dismissOnBackPress || Build.VERSION.SDK_INT < 33) {
            return;
        }
        Api33Impl$$ExternalSyntheticLambda0 api33Impl$$ExternalSyntheticLambda0 = this.backCallback;
        if (api33Impl$$ExternalSyntheticLambda0 == null) {
            Api33Impl$$ExternalSyntheticLambda0 api33Impl$$ExternalSyntheticLambda02 = new Api33Impl$$ExternalSyntheticLambda0(0, this.onDismissRequest);
            this.backCallback = api33Impl$$ExternalSyntheticLambda02;
            api33Impl$$ExternalSyntheticLambda0 = api33Impl$$ExternalSyntheticLambda02;
        }
        HCaptchaCompat.maybeRegisterBackCallback(this, api33Impl$$ExternalSyntheticLambda0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        PreferenceManager preferenceManager = this.snapshotStateObserver;
        YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 = (YearInReviewGeoSlideKt$$ExternalSyntheticLambda5) preferenceManager.mOnDisplayPreferenceDialogListener;
        if (yearInReviewGeoSlideKt$$ExternalSyntheticLambda5 != null) {
            yearInReviewGeoSlideKt$$ExternalSyntheticLambda5.dispose();
        }
        preferenceManager.clear();
        if (Build.VERSION.SDK_INT >= 33) {
            HCaptchaCompat.maybeUnregisterBackCallback(this, this.backCallback);
        }
        this.backCallback = null;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.properties.dismissOnClickOutside) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && (motionEvent.getX() < RecyclerView.DECELERATION_RATE || motionEvent.getX() >= getWidth() || motionEvent.getY() < RecyclerView.DECELERATION_RATE || motionEvent.getY() >= getHeight())) {
            Function0 function0 = this.onDismissRequest;
            if (function0 != null) {
                function0.invoke();
                return true;
            }
        } else {
            if (motionEvent == null || motionEvent.getAction() != 4) {
                return super.onTouchEvent(motionEvent);
            }
            Function0 function02 = this.onDismissRequest;
            if (function02 != null) {
                function02.invoke();
            }
        }
        return true;
    }

    public final void setContent(CompositionContext compositionContext, Function2 function2) {
        setParentCompositionContext(compositionContext);
        setContent(function2);
        this.shouldCreateCompositionOnAttachedToWindow = true;
    }

    public final void setParentLayoutDirection(LayoutDirection layoutDirection) {
        this.parentLayoutDirection = layoutDirection;
    }

    /* renamed from: setPopupContentSize-fhxjrPA, reason: not valid java name */
    public final void m737setPopupContentSizefhxjrPA(IntSize intSize) {
        this.popupContentSize$delegate.setValue(intSize);
    }

    public final void setPositionProvider(PopupPositionProvider popupPositionProvider) {
        this.positionProvider = popupPositionProvider;
    }

    public final void setTestTag(String str) {
        this.testTag = str;
    }

    public final void updateParameters(Function0 function0, PopupProperties popupProperties, String str, LayoutDirection layoutDirection) {
        this.onDismissRequest = function0;
        this.testTag = str;
        if (!Intrinsics.areEqual(this.properties, popupProperties)) {
            popupProperties.getClass();
            this.properties = popupProperties;
            boolean isFlagSecureEnabled = AndroidPopup_androidKt.isFlagSecureEnabled(this.composeView);
            boolean z = popupProperties.inheritSecurePolicy;
            int i = popupProperties.flags;
            if (z && isFlagSecureEnabled) {
                i |= 8192;
            } else if (z && !isFlagSecureEnabled) {
                i &= -8193;
            }
            WindowManager.LayoutParams layoutParams = this.params;
            layoutParams.flags = i;
            this.popupLayoutHelper.getClass();
            this.windowManager.updateViewLayout(this, layoutParams);
        }
        int i2 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i3 = 1;
        if (i2 == 1) {
            i3 = 0;
        } else if (i2 != 2) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return;
        }
        super.setLayoutDirection(i3);
    }

    public final void updateParentBounds$ui() {
        LayoutCoordinates parentLayoutCoordinates = getParentLayoutCoordinates();
        if (parentLayoutCoordinates != null) {
            if (!parentLayoutCoordinates.isAttached()) {
                parentLayoutCoordinates = null;
            }
            if (parentLayoutCoordinates == null) {
                return;
            }
            long mo517getSizeYbymL2g = parentLayoutCoordinates.mo517getSizeYbymL2g();
            long mo521localToScreenMKHz9U = this.isNested ? parentLayoutCoordinates.mo521localToScreenMKHz9U(0L) : parentLayoutCoordinates.mo522localToWindowMKHz9U(0L);
            IntRect m768IntRectVbeCjmY = OperationKt.m768IntRectVbeCjmY((Math.round(Float.intBitsToFloat((int) (mo521localToScreenMKHz9U >> 32))) << 32) | (4294967295L & Math.round(Float.intBitsToFloat((int) (mo521localToScreenMKHz9U & 4294967295L)))), mo517getSizeYbymL2g);
            if (m768IntRectVbeCjmY.equals(this.parentBounds)) {
                return;
            }
            this.parentBounds = m768IntRectVbeCjmY;
            updatePosition();
        }
    }

    public final void updateParentLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        setParentLayoutCoordinates(layoutCoordinates);
        updateParentBounds$ui();
    }

    public final void updatePosition() {
        IntSize m736getPopupContentSizebOM6tXw;
        final IntRect intRect = this.parentBounds;
        if (intRect == null || (m736getPopupContentSizebOM6tXw = m736getPopupContentSizebOM6tXw()) == null) {
            return;
        }
        final long j = m736getPopupContentSizebOM6tXw.packedValue;
        IntRect displayBounds = getDisplayBounds();
        final long height = (displayBounds.getHeight() & 4294967295L) | (displayBounds.getWidth() << 32);
        final Ref$LongRef ref$LongRef = new Ref$LongRef();
        ref$LongRef.element = 0L;
        this.snapshotStateObserver.observeReads(this, AndroidPopup_androidKt$Popup$5$1$1.INSTANCE$5, new Function0() { // from class: androidx.compose.ui.window.PopupLayout$updatePosition$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                PopupLayout popupLayout = this;
                Ref$LongRef.this.element = popupLayout.getPositionProvider().mo0calculatePositionllwVHH4(intRect, height, popupLayout.getParentLayoutDirection(), j);
                return Unit.INSTANCE;
            }
        });
        long j2 = ref$LongRef.element;
        WindowManager.LayoutParams layoutParams = this.params;
        layoutParams.x = (int) (j2 >> 32);
        layoutParams.y = (int) (j2 & 4294967295L);
        boolean z = this.properties.excludeFromSystemGesture;
        PopupLayoutHelperImpl popupLayoutHelperImpl = this.popupLayoutHelper;
        if (z) {
            popupLayoutHelperImpl.setGestureExclusionRects(this, (int) (height >> 32), (int) (height & 4294967295L));
        }
        popupLayoutHelperImpl.getClass();
        this.windowManager.updateViewLayout(this, layoutParams);
    }

    private final void setContent(Function2 function2) {
        this.content$delegate.setValue(function2);
    }

    public static /* synthetic */ void getParams$ui$annotations() {
    }

    public AbstractComposeView getSubCompositionView() {
        return this;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
    }
}

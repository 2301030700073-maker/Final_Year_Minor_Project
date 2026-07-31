package androidx.paging;

import android.R;
import android.content.ClipDescription;
import android.graphics.Region;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.collection.LongSparseArray;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputChangeEventProducer$PointerInputData;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.SortedSet;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.font.PlatformTypefacesApi28;
import androidx.compose.ui.text.platform.ImmutableBool;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.Velocity;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.DifferentialMotionFlingTarget;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.SoftwareKeyboardControllerCompat$Impl30;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;
import androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatApi25Impl;
import androidx.core.widget.NestedScrollView;
import androidx.emoji2.text.EmojiCompat;
import androidx.fragment.app.FragmentActivity$HostCallbacks;
import androidx.paging.ViewportHint;
import androidx.profileinstaller.ProfileInstallReceiver;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.AutoMigration_14_15;
import coil3.ImageLoader$Builder;
import coil3.memory.RealStrongMemoryCache;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.SVG;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import com.google.android.material.internal.ViewUtils$$ExternalSyntheticLambda0;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class HintHandler implements RetainedValuesStore, OnApplyWindowInsetsListener, DifferentialMotionFlingTarget, ProfileInstaller$DiagnosticsCallback {
    public final /* synthetic */ int $r8$classId;
    public Object state;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HintFlow {
        public final SharedFlowImpl _flow = StateFlowKt.MutableSharedFlow$default(0, 2, BufferOverflow.DROP_OLDEST);
        public ViewportHint value;

        public final void setValue(ViewportHint viewportHint) {
            this.value = viewportHint;
            if (viewportHint != null) {
                this._flow.tryEmit(viewportHint);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.PREPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public HintHandler(int i) {
        this.$r8$classId = i;
        Object obj = null;
        switch (i) {
            case 2:
                this.state = new LongSparseArray(obj);
                break;
            case 3:
                this.state = new RealStrongMemoryCache();
                break;
            case 4:
                this.state = new SortedSet(HitTestResultKt.DepthComparator);
                break;
            case 5:
                ManagedRetainedValuesStore managedRetainedValuesStore = new ManagedRetainedValuesStore();
                this.state = managedRetainedValuesStore;
                if (!managedRetainedValuesStore.isDisposed) {
                    if (managedRetainedValuesStore.isContentComposed) {
                        PreconditionsKt.throwIllegalStateException("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                    }
                    managedRetainedValuesStore.purgeUnusedExitedValues();
                    managedRetainedValuesStore.isContentComposed = true;
                    break;
                }
                break;
            case 7:
                this.state = new Region();
                break;
            case 8:
                this.state = Build.VERSION.SDK_INT >= 28 ? new PlatformTypefacesApi28() : new AutoMigration_14_15(5);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                if (Build.VERSION.SDK_INT < 26) {
                    this.state = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19(this);
                    break;
                } else {
                    this.state = new AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26(this);
                    break;
                }
            case 25:
                this.state = new AtomicReference(null);
                break;
            case 28:
                this.state = new SVG(this);
                break;
            default:
                this.state = new ImageLoader$Builder(this);
                break;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public static java.util.ArrayList pathStringToNodes$default(androidx.paging.HintHandler r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 924
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.HintHandler.pathStringToNodes$default(androidx.paging.HintHandler, java.lang.String):java.util.ArrayList");
    }

    public void add(LayoutNode layoutNode) {
        if (!layoutNode.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("DepthSortedSet.add called on an unattached node");
        }
        ((SortedSet) this.state).add(layoutNode);
    }

    /* renamed from: calculateVelocity-AH228Gc, reason: not valid java name */
    public long m756calculateVelocityAH228Gc(long j) {
        RealStrongMemoryCache realStrongMemoryCache = (RealStrongMemoryCache) this.state;
        if (Velocity.m731getXimpl(j) <= RecyclerView.DECELERATION_RATE || Velocity.m732getYimpl(j) <= RecyclerView.DECELERATION_RATE) {
            InlineClassHelperKt.throwIllegalStateException("maximumVelocity should be a positive value. You specified=" + ((Object) Velocity.m735toStringimpl(j)));
        }
        return ResultKt.Velocity(((JsonWriteContext) realStrongMemoryCache.weakMemoryCache).calculateVelocity(Velocity.m731getXimpl(j)), ((JsonWriteContext) realStrongMemoryCache.cache).calculateVelocity(Velocity.m732getYimpl(j)));
    }

    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
        return null;
    }

    public AccessibilityNodeInfoCompat findFocus(int i) {
        return null;
    }

    public void forceSetHint(LoadType loadType, ViewportHint viewportHint) {
        loadType.getClass();
        viewportHint.getClass();
        if (loadType != LoadType.PREPEND && loadType != LoadType.APPEND) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("invalid load type for reset: ", loadType);
            return;
        }
        ImageLoader$Builder imageLoader$Builder = (ImageLoader$Builder) this.state;
        synchronized (((AutoMigration_14_15) imageLoader$Builder.extras)) {
            try {
                HintFlow hintFlow = (HintFlow) imageLoader$Builder.application;
                HintFlow hintFlow2 = (HintFlow) imageLoader$Builder.defaults;
                if (loadType == LoadType.PREPEND) {
                    hintFlow.setValue(viewportHint);
                } else {
                    hintFlow2.setValue(viewportHint);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public State getFontLoadState() {
        EmojiCompat emojiCompat = EmojiCompat.get();
        if (emojiCompat.getLoadState() == 1) {
            return new ImmutableBool(true);
        }
        final ParcelableSnapshotMutableState mutableStateOf$default = Updater.mutableStateOf$default(Boolean.FALSE);
        emojiCompat.registerInitCallback(new EmojiCompat.InitCallback() { // from class: androidx.compose.ui.text.platform.DefaultImpl$getFontLoadState$initCallback$1
            @Override // androidx.emoji2.text.EmojiCompat.InitCallback
            public final void onFailed() {
                this.state = AndroidTextPaint_androidKt.Falsey;
            }

            @Override // androidx.emoji2.text.EmojiCompat.InitCallback
            public final void onInitialized() {
                ParcelableSnapshotMutableState.this.setValue(Boolean.TRUE);
                this.state = new ImmutableBool(true);
            }
        });
        return mutableStateOf$default;
    }

    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public float getScaledScrollFactor() {
        return -((NestedScrollView) this.state).getVerticalScrollFactorCompat();
    }

    public void hide() {
        View view = (View) this.state;
        if (view != null) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public void noteStateNotSaved() {
        ((FragmentActivity$HostCallbacks) this.state).fragmentManager.noteStateNotSaved();
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.state;
        if (!Objects.equals(coordinatorLayout.mLastInsets, windowInsetsCompat)) {
            coordinatorLayout.mLastInsets = windowInsetsCompat;
            boolean z = windowInsetsCompat.getSystemWindowInsetTop() > 0;
            coordinatorLayout.mDrawStatusBarBackground = z;
            coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
            if (!impl.isConsumed()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    if (childAt.getFitsSystemWindows() && ((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).mBehavior != null && impl.isConsumed()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return windowInsetsCompat;
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onDiagnosticReceived() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onResultReceived(int i, Object obj) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.state).setResultCode(i);
    }

    public boolean performAction(int i, int i2, Bundle bundle) {
        return false;
    }

    public void processHint(ViewportHint viewportHint) {
        HintHandler hintHandler = ((PageFetcherSnapshot) this.state).hintHandler;
        hintHandler.getClass();
        ImageLoader$Builder imageLoader$Builder = (ImageLoader$Builder) hintHandler.state;
        ViewportHint.Access access = viewportHint instanceof ViewportHint.Access ? (ViewportHint.Access) viewportHint : null;
        HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0 = new HintHandler$$ExternalSyntheticLambda0(0, viewportHint);
        synchronized (((AutoMigration_14_15) imageLoader$Builder.extras)) {
            if (access != null) {
                try {
                    imageLoader$Builder.componentRegistry = access;
                } catch (Throwable th) {
                    throw th;
                }
            }
            hintHandler$$ExternalSyntheticLambda0.invoke((HintFlow) imageLoader$Builder.application, (HintFlow) imageLoader$Builder.defaults);
        }
    }

    public CSSParser produce(CardView.AnonymousClass1 anonymousClass1, AndroidComposeView androidComposeView) {
        long j;
        boolean z;
        long m592screenToLocalMKHz9U;
        LongSparseArray longSparseArray = (LongSparseArray) this.state;
        ArrayList arrayList = (ArrayList) anonymousClass1.mCardBackground;
        LongSparseArray longSparseArray2 = new LongSparseArray(arrayList.size());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            PointerInputEventData pointerInputEventData = (PointerInputEventData) arrayList.get(i);
            long j2 = pointerInputEventData.id;
            PointerInputChangeEventProducer$PointerInputData pointerInputChangeEventProducer$PointerInputData = (PointerInputChangeEventProducer$PointerInputData) longSparseArray.get(j2);
            if (pointerInputChangeEventProducer$PointerInputData == null) {
                j = pointerInputEventData.uptime;
                m592screenToLocalMKHz9U = pointerInputEventData.position;
                z = false;
            } else {
                long j3 = pointerInputChangeEventProducer$PointerInputData.uptime;
                j = j3;
                z = pointerInputChangeEventProducer$PointerInputData.down;
                m592screenToLocalMKHz9U = androidComposeView.m592screenToLocalMKHz9U(pointerInputChangeEventProducer$PointerInputData.positionOnScreen);
            }
            long j4 = pointerInputEventData.id;
            int i2 = i;
            ArrayList arrayList2 = arrayList;
            int i3 = size;
            longSparseArray2.put(j4, new PointerInputChange(j4, pointerInputEventData.uptime, pointerInputEventData.position, pointerInputEventData.down, pointerInputEventData.pressure, j, m592screenToLocalMKHz9U, z, pointerInputEventData.type, pointerInputEventData.historical, pointerInputEventData.scrollDelta, pointerInputEventData.scaleGestureFactor, pointerInputEventData.panGestureOffset, pointerInputEventData.originalEventPosition));
            boolean z2 = pointerInputEventData.down;
            if (z2) {
                longSparseArray.put(j2, new PointerInputChangeEventProducer$PointerInputData(pointerInputEventData.uptime, pointerInputEventData.positionOnScreen, z2));
            } else {
                longSparseArray.remove(j2);
            }
            i = i2 + 1;
            arrayList = arrayList2;
            size = i3;
        }
        return new CSSParser(longSparseArray2, anonymousClass1);
    }

    public boolean remove(LayoutNode layoutNode) {
        if (!layoutNode.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("DepthSortedSet.remove called on an unattached node");
        }
        return ((SortedSet) this.state).remove(layoutNode);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|26|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0028, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        if (r6.runner != r5) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0049, code lost:
    
        throw r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.paging.HintHandler, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object runInIsolation(androidx.paging.PagingDataPresenter$collectFrom$2 r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.paging.SingleRunner$runInIsolation$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.paging.SingleRunner$runInIsolation$1 r0 = (androidx.paging.SingleRunner$runInIsolation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.SingleRunner$runInIsolation$1 r0 = new androidx.paging.SingleRunner$runInIsolation$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L30
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: androidx.paging.SingleRunner$CancelIsolatedRunnerException -> L28
            goto L46
        L28:
            r6 = move-exception
            goto L42
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.paging.SingleRunner$runInIsolation$2 r7 = new androidx.paging.SingleRunner$runInIsolation$2     // Catch: androidx.paging.SingleRunner$CancelIsolatedRunnerException -> L28
            r2 = 0
            r7.<init>(r5, r6, r3, r2)     // Catch: androidx.paging.SingleRunner$CancelIsolatedRunnerException -> L28
            r0.label = r4     // Catch: androidx.paging.SingleRunner$CancelIsolatedRunnerException -> L28
            java.lang.Object r5 = kotlinx.coroutines.AwaitKt.coroutineScope(r7, r0)     // Catch: androidx.paging.SingleRunner$CancelIsolatedRunnerException -> L28
            if (r5 != r1) goto L46
            return r1
        L42:
            androidx.paging.HintHandler r7 = r6.runner
            if (r7 != r5) goto L49
        L46:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L49:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.HintHandler.runInIsolation(androidx.paging.PagingDataPresenter$collectFrom$2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public void set(IntRect intRect) {
        ((Region) this.state).set(intRect.left, intRect.top, intRect.right, intRect.bottom);
    }

    public void show() {
        View view;
        View view2 = (View) this.state;
        if (view2 == null) {
            return;
        }
        if (view2.isInEditMode() || view2.onCheckIsTextEditor()) {
            view2.requestFocus();
            view = view2;
        } else {
            view = view2.getRootView().findFocus();
        }
        if (view == null) {
            view = view2.getRootView().findViewById(R.id.content);
        }
        if (view == null || !view.hasWindowFocus()) {
            return;
        }
        view.post(new ViewUtils$$ExternalSyntheticLambda0(view, 1));
    }

    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public boolean startDifferentialMotionFling(float f) {
        if (f == RecyclerView.DECELERATION_RATE) {
            return false;
        }
        stopDifferentialMotionFling();
        ((NestedScrollView) this.state).fling((int) f);
        return true;
    }

    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public void stopDifferentialMotionFling() {
        ((NestedScrollView) this.state).mScroller.abortAnimation();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 4:
                return ((SortedSet) this.state).toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ HintHandler(int i, boolean z) {
        this.$r8$classId = i;
    }

    public /* synthetic */ HintHandler(int i, Object obj) {
        this.$r8$classId = i;
        this.state = obj;
    }

    public HintHandler(View view) {
        this.$r8$classId = 16;
        if (Build.VERSION.SDK_INT >= 30) {
            SoftwareKeyboardControllerCompat$Impl30 softwareKeyboardControllerCompat$Impl30 = new SoftwareKeyboardControllerCompat$Impl30(15, view);
            softwareKeyboardControllerCompat$Impl30.mView = view;
            this.state = softwareKeyboardControllerCompat$Impl30;
            return;
        }
        this.state = new HintHandler(15, view);
    }

    public void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
    }

    public HintHandler(final TextView textView) {
        this.$r8$classId = 22;
        this.state = new UStringsKt(textView) { // from class: androidx.emoji2.viewsintegration.EmojiTextViewHelper$SkippingHelper19
            public final EmojiTextViewHelper$HelperInternal19 mHelperDelegate;

            {
                this.mHelperDelegate = new EmojiTextViewHelper$HelperInternal19(textView);
            }

            @Override // kotlin.text.UStringsKt
            public final InputFilter[] getFilters(InputFilter[] inputFilterArr) {
                return !EmojiCompat.isConfigured() ? inputFilterArr : this.mHelperDelegate.getFilters(inputFilterArr);
            }

            @Override // kotlin.text.UStringsKt
            public final boolean isEnabled() {
                return this.mHelperDelegate.mEnabled;
            }

            @Override // kotlin.text.UStringsKt
            public final void setAllCaps(boolean z) {
                if (EmojiCompat.isConfigured()) {
                    this.mHelperDelegate.setAllCaps(z);
                }
            }

            @Override // kotlin.text.UStringsKt
            public final void setEnabled(boolean z) {
                boolean isConfigured = EmojiCompat.isConfigured();
                EmojiTextViewHelper$HelperInternal19 emojiTextViewHelper$HelperInternal19 = this.mHelperDelegate;
                if (isConfigured) {
                    emojiTextViewHelper$HelperInternal19.setEnabled(z);
                } else {
                    emojiTextViewHelper$HelperInternal19.mEnabled = z;
                }
            }

            @Override // kotlin.text.UStringsKt
            public final TransformationMethod wrapTransformationMethod(TransformationMethod transformationMethod) {
                return !EmojiCompat.isConfigured() ? transformationMethod : this.mHelperDelegate.wrapTransformationMethod(transformationMethod);
            }
        };
    }

    public HintHandler(EditText editText) {
        this.$r8$classId = 21;
        this.state = new CardView.AnonymousClass1(editText);
    }

    public HintHandler(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.$r8$classId = 18;
        if (Build.VERSION.SDK_INT >= 25) {
            this.state = new InputContentInfoCompat$InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
        } else {
            this.state = new SVG(uri, clipDescription, uri2, 17);
        }
    }
}

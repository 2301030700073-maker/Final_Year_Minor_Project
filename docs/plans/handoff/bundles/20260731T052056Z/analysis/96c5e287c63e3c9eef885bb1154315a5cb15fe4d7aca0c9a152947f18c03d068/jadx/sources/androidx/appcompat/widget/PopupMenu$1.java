package androidx.appcompat.widget;

import android.os.Handler;
import android.os.SystemClock;
import android.view.MenuItem;
import androidx.appcompat.app.ToolbarActionBar;
import androidx.appcompat.view.menu.CascadingMenuPopup;
import androidx.appcompat.view.menu.CascadingMenuPopup$3$1;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.collection.MutableLongList;
import androidx.collection.MutableScatterSet;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.FloatAnimationSpec;
import androidx.compose.animation.core.FloatSpringSpec;
import androidx.compose.animation.core.VectorizedAnimationSpecKt;
import androidx.compose.animation.core.VectorizedFiniteAnimationSpec;
import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProviderKt;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridInterval;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridItemSpan;
import androidx.compose.material3.PinnedScrollBehavior;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MultiSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.SingleSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.core.view.MenuProvider;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import com.caverock.androidsvg.SVG;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;
import okhttp3.Request;
import okhttp3.internal.http.StatusLine;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class PopupMenu$1 implements MenuItemHoverListener, MenuPresenter.Callback, MenuBuilder.Callback, AppCompatTextView.SuperCaller, VectorizedFiniteAnimationSpec, PopupPositionProvider, NestedScrollConnection {
    public final /* synthetic */ int $r8$classId;
    public Object this$0;

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
    
        if (r7 == r3) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0049 A[LOOP:1: B:14:0x0047->B:15:0x0049, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PopupMenu$1(int[] r22, float[] r23, float[][] r24) {
        /*
            r21 = this;
            r0 = r21
            r1 = r23
            r2 = 8
            r0.$r8$classId = r2
            r0.<init>()
            int r2 = r1.length
            r3 = 1
            int r2 = r2 - r3
            androidx.compose.animation.core.ArcSpline$Arc[][] r4 = new androidx.compose.animation.core.ArcSpline$Arc[r2][]
            r5 = 0
            r7 = r3
            r8 = r7
            r6 = r5
        L14:
            if (r6 >= r2) goto L6b
            r9 = r22[r6]
            r10 = 3
            r11 = 2
            if (r9 == 0) goto L2a
            if (r9 == r3) goto L33
            if (r9 == r11) goto L31
            if (r9 == r10) goto L2c
            r10 = 4
            if (r9 == r10) goto L2a
            r10 = 5
            if (r9 == r10) goto L2a
            r13 = r8
            goto L35
        L2a:
            r13 = r10
            goto L35
        L2c:
            if (r7 != r3) goto L33
            goto L31
        L2f:
            r13 = r7
            goto L35
        L31:
            r7 = r11
            goto L2f
        L33:
            r7 = r3
            goto L2f
        L35:
            r8 = r24[r6]
            int r9 = r6 + 1
            r10 = r24[r9]
            r14 = r1[r6]
            r15 = r1[r9]
            int r12 = r8.length
            int r12 = r12 / r11
            int r3 = r8.length
            int r3 = r3 % r11
            int r3 = r3 + r12
            androidx.compose.animation.core.ArcSpline$Arc[] r11 = new androidx.compose.animation.core.ArcSpline$Arc[r3]
            r12 = r5
        L47:
            if (r12 >= r3) goto L65
            int r16 = r12 * 2
            r17 = r12
            androidx.compose.animation.core.ArcSpline$Arc r12 = new androidx.compose.animation.core.ArcSpline$Arc
            r18 = r16
            r16 = r8[r18]
            int r19 = r18 + 1
            r20 = r17
            r17 = r8[r19]
            r18 = r10[r18]
            r19 = r10[r19]
            r12.<init>(r13, r14, r15, r16, r17, r18, r19)
            r11[r20] = r12
            int r12 = r20 + 1
            goto L47
        L65:
            r4[r6] = r11
            r6 = r9
            r8 = r13
            r3 = 1
            goto L14
        L6b:
            r0.this$0 = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.PopupMenu$1.<init>(int[], float[], float[][]):void");
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4, reason: not valid java name */
    public long mo0calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        return (ContextMenuPopupPositionProviderKt.alignPopupAxis(intRect.top + ((int) (r0 & 4294967295L)), (int) (j2 & 4294967295L), (int) (j & 4294967295L), true) & 4294967295L) | (ContextMenuPopupPositionProviderKt.alignPopupAxis(intRect.left + ((int) (((IntOffset) ((Function0) this.this$0).invoke()).packedValue >> 32)), (int) (j2 >> 32), (int) (j >> 32), layoutDirection == LayoutDirection.Ltr) << 32);
    }

    /* renamed from: clipRect-N_I0leg, reason: not valid java name */
    public void m1clipRectN_I0leg(float f, float f2, float f3, float f4, int i) {
        ((SVG) this.this$0).getCanvas().mo401clipRectN_I0leg(f, f2, f3, f4, i);
    }

    public void current() {
        ((CompositionContext) this.this$0).getClass();
    }

    public FloatAnimationSpec get(int i) {
        switch (this.$r8$classId) {
            case 9:
                return ((FloatSpringSpec[]) this.this$0)[i];
            case 10:
                return (FloatSpringSpec) this.this$0;
            default:
                return (FloatAnimationSpec) this.this$0;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((ImageLoader$Builder) this.this$0).getDurationNanos(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((ImageLoader$Builder) this.this$0).getEndVelocity(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((ImageLoader$Builder) this.this$0).getValueFromNanos(j, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return ((ImageLoader$Builder) this.this$0).getVelocityFromNanos(j, animationVector, animationVector2, animationVector3);
    }

    public void inset(float f, float f2, float f3, float f4) {
        SVG svg = (SVG) this.this$0;
        Canvas canvas = svg.getCanvas();
        float intBitsToFloat = Float.intBitsToFloat((int) (svg.m796getSizeNHjbRc() >> 32)) - (f3 + f);
        float intBitsToFloat2 = Float.intBitsToFloat((int) (svg.m796getSizeNHjbRc() & 4294967295L)) - (f4 + f2);
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
        if (Float.intBitsToFloat((int) (floatToRawIntBits >> 32)) < RecyclerView.DECELERATION_RATE || Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L)) < RecyclerView.DECELERATION_RATE) {
            InlineClassHelperKt.throwIllegalArgumentException("Width and height must be greater than or equal to zero");
        }
        svg.m797setSizeuvyYCjk(floatToRawIntBits);
        canvas.translate(f, f2);
    }

    public boolean isFullSpan(int i) {
        if (i < 0) {
            return false;
        }
        StatusLine statusLine = (StatusLine) this.this$0;
        if (i >= statusLine.code) {
            return false;
        }
        IntervalList$Interval intervalList$Interval = statusLine.get(i);
        Function1 function1 = ((LazyStaggeredGridInterval) intervalList$Interval.value).span;
        return function1 != null && function1.invoke(Integer.valueOf(i - intervalList$Interval.startIndex)) == StaggeredGridItemSpan.FullLine;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public boolean isInfinite() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder instanceof SubMenuBuilder) {
            ((SubMenuBuilder) menuBuilder).mParentMenu.getRootMenu().close(false);
        }
        MenuPresenter.Callback callback = ((ActionMenuPresenter) this.this$0).mCallback;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverEnter(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        CascadingMenuPopup cascadingMenuPopup = (CascadingMenuPopup) this.this$0;
        Handler handler = cascadingMenuPopup.mSubMenuHoverHandler;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = cascadingMenuPopup.mShowingMenus;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (menuBuilder == ((CascadingMenuPopup.CascadingMenuInfo) arrayList.get(i)).menu) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        handler.postAtTime(new CascadingMenuPopup$3$1(this, i2 < arrayList.size() ? (CascadingMenuPopup.CascadingMenuInfo) arrayList.get(i2) : null, menuItemImpl, menuBuilder), menuBuilder, SystemClock.uptimeMillis() + 200);
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    public void onItemHoverExit(MenuBuilder menuBuilder, MenuItem menuItem) {
        ((CascadingMenuPopup) this.this$0).mSubMenuHoverHandler.removeCallbacksAndMessages(menuBuilder);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        boolean onMenuItemSelected;
        switch (this.$r8$classId) {
            case 0:
                PopupMenu$OnMenuItemClickListener popupMenu$OnMenuItemClickListener = (PopupMenu$OnMenuItemClickListener) ((Request.Builder) this.this$0).body;
                if (popupMenu$OnMenuItemClickListener != null) {
                    return popupMenu$OnMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            default:
                ActionMenuView.OnMenuItemClickListener onMenuItemClickListener = ((ActionMenuView) this.this$0).mOnMenuItemClickListener;
                if (onMenuItemClickListener == null) {
                    return false;
                }
                Toolbar toolbar = Toolbar.this;
                Iterator it = ((CopyOnWriteArrayList) toolbar.mMenuHostHelper.cssRules).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        Toolbar.OnMenuItemClickListener onMenuItemClickListener2 = toolbar.mOnMenuItemClickListener;
                        onMenuItemSelected = onMenuItemClickListener2 != null ? ToolbarActionBar.this.mWindowCallback.onMenuItemSelected(0, menuItem) : false;
                    } else if (((MenuProvider) it.next()).onMenuItemSelected(menuItem)) {
                        onMenuItemSelected = true;
                    }
                }
                return onMenuItemSelected;
        }
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        switch (this.$r8$classId) {
            case 0:
                break;
            default:
                MenuBuilder.Callback callback = ((ActionMenuView) this.this$0).mMenuBuilderCallback;
                if (callback != null) {
                    callback.onMenuModeChange(menuBuilder);
                    break;
                }
                break;
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        ActionMenuPresenter actionMenuPresenter = (ActionMenuPresenter) this.this$0;
        if (menuBuilder == actionMenuPresenter.mMenu) {
            return false;
        }
        actionMenuPresenter.mOpenSubMenuId = ((SubMenuBuilder) menuBuilder).mItem.mId;
        MenuPresenter.Callback callback = actionMenuPresenter.mCallback;
        if (callback != null) {
            return callback.onOpenSubMenu(menuBuilder);
        }
        return false;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY, reason: not valid java name */
    public Object mo2onPostFlingRZ2iAVY(long j, long j2, Continuation continuation) {
        if (Velocity.m732getYimpl(j2) > RecyclerView.DECELERATION_RATE) {
            ((PinnedScrollBehavior) this.this$0).state.contentOffset$delegate.setFloatValue(RecyclerView.DECELERATION_RATE);
        }
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M, reason: not valid java name */
    public long mo3onPostScrollDzOQY0M(int i, long j, long j2) {
        PinnedScrollBehavior pinnedScrollBehavior = (PinnedScrollBehavior) this.this$0;
        if (!((Boolean) pinnedScrollBehavior.canScroll.invoke()).booleanValue()) {
            return 0L;
        }
        TopAppBarState topAppBarState = pinnedScrollBehavior.state;
        topAppBarState.contentOffset$delegate.setFloatValue(Float.intBitsToFloat((int) (j & 4294967295L)) + topAppBarState.contentOffset$delegate.getFloatValue());
        return 0L;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo, reason: not valid java name */
    public Object mo4onPreFlingQWom1Mo(long j, Continuation continuation) {
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk, reason: not valid java name */
    public /* synthetic */ long mo5onPreScrollOzD1aCk(long j, int i) {
        return 0L;
    }

    /* renamed from: rotate-Uv8p0NA, reason: not valid java name */
    public void m6rotateUv8p0NA(float f, long j) {
        Canvas canvas = ((SVG) this.this$0).getCanvas();
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        canvas.translate(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        canvas.rotate(f);
        canvas.translate(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
    }

    public Object runAndWatch$runtime(Channel channel, Function0 function0) {
        SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager;
        SendChannel sendChannel;
        int i;
        if (((BasePreferenceLoader) this.this$0) == null) {
            PreconditionsKt.throwIllegalStateException("Called runAndWatch on a manager that has been disposed of");
        }
        BasePreferenceLoader basePreferenceLoader = (BasePreferenceLoader) this.this$0;
        if ((basePreferenceLoader instanceof SingleSubscriptionSnapshotFlowManager) && (sendChannel = (singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) basePreferenceLoader).subscribedChannel) != null && !sendChannel.equals(channel)) {
            MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = new MultiSubscriptionSnapshotFlowManager();
            SendChannel sendChannel2 = singleSubscriptionSnapshotFlowManager.subscribedChannel;
            if (sendChannel2 == null) {
                PreconditionsKt.throwIllegalStateException("promote must only be called when a manager is managing subscriptions for one channel and needs to start managing them for a second");
            }
            MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.watchSet;
            ArrayList arrayList = multiSubscriptionSnapshotFlowManager.pendingChanges;
            if (mutableScatterSet == null) {
                Object obj = singleSubscriptionSnapshotFlowManager.soleWatchedObject;
                obj.getClass();
                arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(obj, sendChannel2));
            } else {
                Object[] objArr = mutableScatterSet.elements;
                long[] jArr = mutableScatterSet.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j = jArr[i2];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i3 = 8;
                            int i4 = 8 - ((~(i2 - length)) >>> 31);
                            int i5 = 0;
                            while (i5 < i4) {
                                if ((j & 255) < 128) {
                                    i = i3;
                                    arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(objArr[(i2 << 3) + i5], sendChannel2));
                                } else {
                                    i = i3;
                                }
                                j >>= i;
                                i5++;
                                i3 = i;
                            }
                            if (i4 != i3) {
                                break;
                            }
                        }
                        if (i2 == length) {
                            break;
                        }
                        i2++;
                    }
                }
            }
            multiSubscriptionSnapshotFlowManager.commitSubscriptionChanges$runtime();
            singleSubscriptionSnapshotFlowManager.dispose$runtime();
            this.this$0 = multiSubscriptionSnapshotFlowManager;
        }
        BasePreferenceLoader basePreferenceLoader2 = (BasePreferenceLoader) this.this$0;
        basePreferenceLoader2.getClass();
        Snapshot takeNestedSnapshot = SnapshotKt.currentSnapshot().takeNestedSnapshot(basePreferenceLoader2.readObserverFor$runtime(channel));
        basePreferenceLoader2.clearWatchSet$runtime(channel);
        try {
            Snapshot makeCurrent = takeNestedSnapshot.makeCurrent();
            try {
                Object invoke = function0.invoke();
                takeNestedSnapshot.dispose();
                basePreferenceLoader2.commitSubscriptionChanges$runtime();
                return invoke;
            } finally {
                Snapshot.restoreCurrent(makeCurrent);
            }
        } catch (Throwable th) {
            takeNestedSnapshot.dispose();
            throw th;
        }
    }

    /* renamed from: scale-0AR0LA0, reason: not valid java name */
    public void m7scale0AR0LA0(float f, float f2, long j) {
        Canvas canvas = ((SVG) this.this$0).getCanvas();
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        canvas.translate(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        canvas.scale(f, f2);
        canvas.translate(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
    }

    public ArrayList scheduleLinePrefetch(int i) {
        ArrayList arrayList = new ArrayList();
        LazyGridState lazyGridState = (LazyGridState) this.this$0;
        Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            LazyGridMeasureResult lazyGridMeasureResult = lazyGridState.hasLookaheadOccurred ? lazyGridState.approachLayoutInfo : (LazyGridMeasureResult) lazyGridState.layoutInfoState.getValue();
            if (lazyGridMeasureResult != null) {
                Ref$IntRef ref$IntRef = new Ref$IntRef();
                ref$IntRef.element = 1;
                List list = (List) lazyGridMeasureResult.prefetchInfoRetriever.invoke(Integer.valueOf(i));
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Pair pair = (Pair) list.get(i2);
                    ref$IntRef = ref$IntRef;
                    arrayList.add(lazyGridState.prefetchState.m168schedulePrecompositionAndPremeasure_EkL_Y$foundation(((Number) pair.first).intValue(), ((Constraints) pair.second).value, false, new AboutActivityKt$$ExternalSyntheticLambda7((ArrayList) null, ref$IntRef, list, i, lazyGridMeasureResult)));
                }
            }
            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            return arrayList;
        } catch (Throwable th) {
            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    public void translate(float f, float f2) {
        ((SVG) this.this$0).getCanvas().translate(f, f2);
    }

    private final void onMenuModeChange$androidx$appcompat$widget$PopupMenu$1(MenuBuilder menuBuilder) {
    }

    public void setFirstBaselineToTopHeight(int i) {
    }

    public void setLastBaselineToBottomHeight(int i) {
    }

    public void setLineHeight(int i, float f) {
    }

    public /* synthetic */ PopupMenu$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    public PopupMenu$1(float f, float f2, AnimationVector animationVector) {
        PopupMenu$1 popupMenu$1;
        this.$r8$classId = 12;
        int[] iArr = VectorizedAnimationSpecKt.EmptyIntArray;
        if (animationVector != null) {
            popupMenu$1 = new PopupMenu$1(animationVector, f, f2);
        } else {
            popupMenu$1 = new PopupMenu$1(f, f2);
        }
        this.this$0 = new ImageLoader$Builder(2, popupMenu$1);
    }

    public PopupMenu$1(Density density) {
        this.$r8$classId = 7;
        float f = SplineBasedFloatDecayAnimationSpec_androidKt.platformFlingScrollFriction;
        FlingCalculator flingCalculator = new FlingCalculator();
        flingCalculator.friction = f;
        float density2 = density.getDensity();
        float f2 = FlingCalculatorKt.DecelerationRate;
        flingCalculator.magicPhysicalCoefficient = density2 * 386.0878f * 160.0f * 0.84f;
        this.this$0 = flingCalculator;
    }

    public /* synthetic */ PopupMenu$1(int i) {
        this.$r8$classId = i;
    }

    public PopupMenu$1(long[] jArr) {
        MutableLongList mutableLongList;
        this.$r8$classId = 26;
        if (jArr != null) {
            long[] copyOf = Arrays.copyOf(jArr, jArr.length);
            mutableLongList = new MutableLongList(copyOf.length);
            int i = mutableLongList._size;
            if (i >= 0) {
                if (copyOf.length != 0) {
                    int length = copyOf.length + i;
                    long[] jArr2 = mutableLongList.content;
                    if (jArr2.length < length) {
                        jArr2 = Arrays.copyOf(jArr2, Math.max(length, (jArr2.length * 3) / 2));
                        mutableLongList.content = jArr2;
                    }
                    int i2 = mutableLongList._size;
                    if (i != i2) {
                        ArraysKt___ArraysKt.copyInto(jArr2, jArr2, copyOf.length + i, i, i2);
                    }
                    ArraysKt___ArraysKt.copyInto(copyOf, jArr2, i, 0, copyOf.length);
                    mutableLongList._size += copyOf.length;
                }
            } else {
                Gson$$ExternalSyntheticBUOutline0.m$2("");
                throw null;
            }
        } else {
            mutableLongList = new MutableLongList();
        }
        this.this$0 = mutableLongList;
    }

    public PopupMenu$1(AnimationVector animationVector, float f, float f2) {
        this.$r8$classId = 9;
        int size$animation_core = animationVector.getSize$animation_core();
        FloatSpringSpec[] floatSpringSpecArr = new FloatSpringSpec[size$animation_core];
        for (int i = 0; i < size$animation_core; i++) {
            floatSpringSpecArr[i] = new FloatSpringSpec(f, f2, animationVector.get$animation_core(i));
        }
        this.this$0 = floatSpringSpecArr;
    }

    public PopupMenu$1(float f, float f2) {
        this.$r8$classId = 10;
        this.this$0 = new FloatSpringSpec(f, f2, 0.01f);
    }
}

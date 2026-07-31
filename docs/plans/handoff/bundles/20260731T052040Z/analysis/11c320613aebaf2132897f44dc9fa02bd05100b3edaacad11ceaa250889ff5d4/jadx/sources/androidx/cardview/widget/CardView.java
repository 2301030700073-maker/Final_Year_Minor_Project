package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Handler;
import android.text.Spannable;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.WindowInsetsAnimation;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.R$styleable;
import androidx.collection.LruCache;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectIntMapKt;
import androidx.collection.ObjectList;
import androidx.collection.SimpleArrayMap;
import androidx.compose.foundation.IndicationKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerSnapDistanceMaxPages;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.InvalidationResult;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.core.app.ActivityRecreator;
import androidx.core.graphics.Insets;
import androidx.core.os.BundleKt;
import androidx.core.os.ExecutorCompat$HandlerExecutor;
import androidx.core.provider.CallbackWrapper$2;
import androidx.core.provider.FontRequestWorker;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.emoji2.text.TypefaceEmojiSpan;
import androidx.emoji2.text.UnprecomputeTextOnModificationSpannable;
import androidx.emoji2.viewsintegration.EmojiEditableFactory;
import androidx.emoji2.viewsintegration.EmojiTextWatcher;
import androidx.lifecycle.LiveData;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceGroupAdapter;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
import androidx.transition.Transition;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.memory.MemoryCacheService;
import com.google.android.exoplayer2.util.Log;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.UStringsKt;
import okhttp3.Dispatcher;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class CardView extends FrameLayout {
    public static final int[] COLOR_BACKGROUND_ATTR = {R.attr.colorBackground};
    public final AnonymousClass1 mCardViewDelegate;
    public boolean mCompatPadding;
    public final Rect mContentPadding;
    public boolean mPreventCornerOverlap;
    public final Rect mShadowBounds;

    public CardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ColorStateList valueOf;
        Rect rect = new Rect();
        this.mContentPadding = rect;
        this.mShadowBounds = new Rect();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this, 0);
        this.mCardViewDelegate = anonymousClass1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CardView, i, org.schabi.newpipe.R.style.CardView);
        if (obtainStyledAttributes.hasValue(2)) {
            valueOf = obtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            valueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(org.schabi.newpipe.R.color.cardview_light_background) : getResources().getColor(org.schabi.newpipe.R.color.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(5, 0.0f);
        this.mCompatPadding = obtainStyledAttributes.getBoolean(7, false);
        this.mPreventCornerOverlap = obtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        RoundRectDrawable roundRectDrawable = new RoundRectDrawable(valueOf, dimension);
        anonymousClass1.mCardBackground = roundRectDrawable;
        setBackgroundDrawable(roundRectDrawable);
        setClipToOutline(true);
        setElevation(dimension2);
        RangesKt.setMaxElevation(anonymousClass1, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((RoundRectDrawable) this.mCardViewDelegate.mCardBackground).mBackground;
    }

    public float getCardElevation() {
        return ((CardView) this.mCardViewDelegate.this$0).getElevation();
    }

    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public float getMaxCardElevation() {
        return ((RoundRectDrawable) this.mCardViewDelegate.mCardBackground).mPadding;
    }

    public boolean getPreventCornerOverlap() {
        return this.mPreventCornerOverlap;
    }

    public float getRadius() {
        return ((RoundRectDrawable) this.mCardViewDelegate.mCardBackground).mRadius;
    }

    public boolean getUseCompatPadding() {
        return this.mCompatPadding;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        ColorStateList valueOf = ColorStateList.valueOf(i);
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) this.mCardViewDelegate.mCardBackground;
        if (valueOf == null) {
            roundRectDrawable.getClass();
            valueOf = ColorStateList.valueOf(0);
        }
        roundRectDrawable.mBackground = valueOf;
        roundRectDrawable.mPaint.setColor(valueOf.getColorForState(roundRectDrawable.getState(), roundRectDrawable.mBackground.getDefaultColor()));
        roundRectDrawable.invalidateSelf();
    }

    public void setCardElevation(float f) {
        ((CardView) this.mCardViewDelegate.this$0).setElevation(f);
    }

    public void setMaxCardElevation(float f) {
        RangesKt.setMaxElevation(this.mCardViewDelegate, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.mPreventCornerOverlap) {
            this.mPreventCornerOverlap = z;
            AnonymousClass1 anonymousClass1 = this.mCardViewDelegate;
            RangesKt.setMaxElevation(anonymousClass1, ((RoundRectDrawable) anonymousClass1.mCardBackground).mPadding);
        }
    }

    public void setRadius(float f) {
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) this.mCardViewDelegate.mCardBackground;
        if (f == roundRectDrawable.mRadius) {
            return;
        }
        roundRectDrawable.mRadius = f;
        roundRectDrawable.updateBounds(null);
        roundRectDrawable.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.mCompatPadding != z) {
            this.mCompatPadding = z;
            AnonymousClass1 anonymousClass1 = this.mCardViewDelegate;
            RangesKt.setMaxElevation(anonymousClass1, ((RoundRectDrawable) anonymousClass1.mCardBackground).mPadding);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.cardview.widget.CardView$1, reason: invalid class name */
    public final class AnonymousClass1 implements SubcomposeSlotReusePolicy, RecomposeScopeOwner, CancellationHandle, OperationErrorContext, Saver, EmojiProcessor$EmojiProcessCallback, Preference.OnPreferenceClickListener {
        public final /* synthetic */ int $r8$classId;
        public Object mCardBackground;
        public Object this$0;

        public AnonymousClass1(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 8:
                    this.mCardBackground = new LinkedHashMap();
                    this.this$0 = new LinkedHashMap();
                    break;
                case 10:
                    this.mCardBackground = new MutableScatterMap();
                    this.this$0 = new MutableScatterMap();
                    break;
                case 18:
                    this.mCardBackground = new MutableVector(new LayoutNode[16]);
                    break;
                case 19:
                    this.mCardBackground = new MutableVector(new Reference[16]);
                    this.this$0 = new ReferenceQueue();
                    break;
                case 20:
                    this.mCardBackground = new Transition.AnonymousClass1(7);
                    this.this$0 = new LruCache(16);
                    break;
                default:
                    this.mCardBackground = new VelocityTracker1D(0);
                    this.this$0 = new VelocityTracker1D(0);
                    break;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.Modifier$Node] */
        /* JADX WARN: Type inference failed for: r4v10 */
        /* JADX WARN: Type inference failed for: r4v11 */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.Modifier$Node] */
        /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v6 */
        /* JADX WARN: Type inference failed for: r4v7 */
        /* JADX WARN: Type inference failed for: r4v8 */
        /* JADX WARN: Type inference failed for: r4v9 */
        /* JADX WARN: Type inference failed for: r5v0 */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v10 */
        /* JADX WARN: Type inference failed for: r5v11 */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
        /* JADX WARN: Type inference failed for: r5v4 */
        /* JADX WARN: Type inference failed for: r5v5 */
        /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
        /* JADX WARN: Type inference failed for: r5v8 */
        /* JADX WARN: Type inference failed for: r5v9 */
        public static void dispatchHierarchy(LayoutNode layoutNode) {
            if (layoutNode.globallyPositionedObservers > 0) {
                if (layoutNode.layoutDelegate.layoutState == LayoutNode.LayoutState.Idle && !layoutNode.getLayoutPending$ui() && !layoutNode.getMeasurePending$ui() && !layoutNode.isDeactivated && layoutNode.isPlaced()) {
                    Modifier.Node node = layoutNode.nodes.head;
                    if ((node.aggregateChildKindSet & 256) != 0) {
                        while (node != null) {
                            if ((node.kindSet & 256) != 0) {
                                DelegatingNode delegatingNode = node;
                                ?? r5 = 0;
                                while (delegatingNode != 0) {
                                    if (delegatingNode instanceof GlobalPositionAwareModifierNode) {
                                        GlobalPositionAwareModifierNode globalPositionAwareModifierNode = (GlobalPositionAwareModifierNode) delegatingNode;
                                        globalPositionAwareModifierNode.onGloballyPositioned(HitTestResultKt.m317requireCoordinator64DMado(globalPositionAwareModifierNode, 256));
                                    } else if ((delegatingNode.kindSet & 256) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                        Modifier.Node node2 = delegatingNode.delegate;
                                        int i = 0;
                                        delegatingNode = delegatingNode;
                                        r5 = r5;
                                        while (node2 != null) {
                                            if ((node2.kindSet & 256) != 0) {
                                                i++;
                                                r5 = r5;
                                                if (i == 1) {
                                                    delegatingNode = node2;
                                                } else {
                                                    if (r5 == 0) {
                                                        r5 = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (delegatingNode != 0) {
                                                        r5.add(delegatingNode);
                                                        delegatingNode = 0;
                                                    }
                                                    r5.add(node2);
                                                }
                                            }
                                            node2 = node2.child;
                                            delegatingNode = delegatingNode;
                                            r5 = r5;
                                        }
                                        if (i == 1) {
                                        }
                                    }
                                    delegatingNode = HitTestResultKt.access$pop(r5);
                                }
                            }
                            if ((node.aggregateChildKindSet & 256) == 0) {
                                break;
                            } else {
                                node = node.child;
                            }
                        }
                    }
                }
                layoutNode.needsOnGloballyPositionedDispatch = false;
                MutableVector mutableVector = layoutNode.get_children$ui();
                Object[] objArr = mutableVector.content;
                int i2 = mutableVector.size;
                for (int i3 = 0; i3 < i2; i3++) {
                    dispatchHierarchy((LayoutNode) objArr[i3]);
                }
            }
        }

        /* renamed from: activeHoverEvent-0FcD4WY, reason: not valid java name */
        public boolean m4activeHoverEvent0FcD4WY(long j) {
            Object obj;
            List list = (List) ((AnonymousClass1) this.this$0).mCardBackground;
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    obj = null;
                    break;
                }
                obj = list.get(i);
                if (UStringsKt.m675equalsimpl0(((PointerInputEventData) obj).id, j)) {
                    break;
                }
                i++;
            }
            PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
            if (pointerInputEventData != null) {
                return pointerInputEventData.activeHover;
            }
            return false;
        }

        @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
        public boolean areCompatible(Object obj, Object obj2) {
            LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) this.mCardBackground;
            return Intrinsics.areEqual(lazyLayoutItemContentFactory.getContentType(obj), lazyLayoutItemContentFactory.getContentType(obj2));
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
        public List buildStackTrace(Integer num) {
            List buildStackTrace = ((OperationErrorContext) this.mCardBackground).buildStackTrace(null);
            SlotWriter slotWriter = (SlotWriter) this.this$0;
            int i = slotWriter.parent;
            return i < 0 ? buildStackTrace : CollectionsKt.plus((Collection) BundleKt.buildTrace(slotWriter, num, i, Integer.valueOf(slotWriter.parent(slotWriter.groups, i))), buildStackTrace);
        }

        @Override // androidx.compose.runtime.CancellationHandle
        public void cancel() {
            if (((AtomicInt) this.this$0).compareAndSet(1, 1)) {
                return;
            }
            ((ConnectPlan$$ExternalSyntheticLambda0) this.mCardBackground).invoke();
        }

        public void clear() {
            int[] iArr = (int[]) this.mCardBackground;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.this$0 = null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
        
            if (r4 < r1) goto L6;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void dispatch() {
            /*
                r6 = this;
                java.lang.Object r0 = r6.mCardBackground
                androidx.compose.runtime.collection.MutableVector r0 = (androidx.compose.runtime.collection.MutableVector) r0
                java.lang.Object[] r1 = r0.content
                int r2 = r0.size
                r3 = 0
                androidx.compose.ui.node.DepthSortedSetKt$DepthComparator$1 r4 = androidx.compose.ui.node.DepthSortedSetKt$DepthComparator$1.INSTANCE
                java.util.Arrays.sort(r1, r3, r2, r4)
                int r1 = r0.size
                java.lang.Object r2 = r6.this$0
                androidx.compose.ui.node.LayoutNode[] r2 = (androidx.compose.ui.node.LayoutNode[]) r2
                if (r2 == 0) goto L19
                int r4 = r2.length
                if (r4 >= r1) goto L21
            L19:
                r2 = 16
                int r2 = java.lang.Math.max(r2, r1)
                androidx.compose.ui.node.LayoutNode[] r2 = new androidx.compose.ui.node.LayoutNode[r2]
            L21:
                r4 = 0
                r6.this$0 = r4
            L24:
                if (r3 >= r1) goto L2f
                java.lang.Object[] r5 = r0.content
                r5 = r5[r3]
                r2[r3] = r5
                int r3 = r3 + 1
                goto L24
            L2f:
                r0.clear()
                int r1 = r1 + (-1)
            L34:
                r0 = -1
                if (r0 >= r1) goto L48
                r0 = r2[r1]
                r0.getClass()
                boolean r3 = r0.needsOnGloballyPositionedDispatch
                if (r3 == 0) goto L43
                dispatchHierarchy(r0)
            L43:
                r2[r1] = r4
                int r1 = r1 + (-1)
                goto L34
            L48:
                r6.this$0 = r2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.cardview.widget.CardView.AnonymousClass1.dispatch():void");
        }

        public void ensureSize(int i) {
            int[] iArr = (int[]) this.mCardBackground;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.mCardBackground = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int length = iArr.length;
                while (length <= i) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.mCardBackground = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = (int[]) this.mCardBackground;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public MeasurePolicy getMeasurePolicyState() {
            return (MeasurePolicy) ((ParcelableSnapshotMutableState) this.this$0).getValue();
        }

        @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
        public Object getResult() {
            return (UnprecomputeTextOnModificationSpannable) this.mCardBackground;
        }

        @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
        public void getSlotsToRetain(SubcomposeSlotReusePolicy.SlotIdsSet slotIdsSet) {
            MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) this.this$0;
            mutableObjectIntMap.clear();
            MutableOrderedScatterSet mutableOrderedScatterSet = slotIdsSet.set;
            Object[] objArr = mutableOrderedScatterSet.elements;
            long[] jArr = mutableOrderedScatterSet.nodes;
            int i = mutableOrderedScatterSet.tail;
            while (i != Integer.MAX_VALUE) {
                int i2 = (int) ((jArr[i] >> 31) & 2147483647L);
                Object obj = objArr[i];
                Object contentType = ((LazyLayoutItemContentFactory) this.mCardBackground).getContentType(obj);
                int findKeyIndex = mutableObjectIntMap.findKeyIndex(contentType);
                int i3 = findKeyIndex >= 0 ? mutableObjectIntMap.values[findKeyIndex] : 0;
                if (i3 == 7) {
                    slotIdsSet.remove(obj);
                } else {
                    mutableObjectIntMap.set(i3 + 1, contentType);
                }
                i = i2;
            }
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
        public boolean getSourceInformationEnabled() {
            return ((OperationErrorContext) this.mCardBackground).getSourceInformationEnabled();
        }

        @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
        public boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if ((typefaceEmojiRasterizer.mCache & 4) > 0) {
                return true;
            }
            if (((UnprecomputeTextOnModificationSpannable) this.mCardBackground) == null) {
                this.mCardBackground = new UnprecomputeTextOnModificationSpannable(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
            }
            ((Transition.AnonymousClass1) this.this$0).getClass();
            ((UnprecomputeTextOnModificationSpannable) this.mCardBackground).setSpan(new TypefaceEmojiSpan(typefaceEmojiRasterizer), i, i2, 33);
            return true;
        }

        @Override // androidx.compose.runtime.RecomposeScopeOwner
        public InvalidationResult invalidate(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
            InvalidationResult invalidationResult;
            CompositionImpl compositionImpl = (CompositionImpl) this.mCardBackground;
            if (compositionImpl == null) {
                compositionImpl = null;
            }
            InvalidationResult invalidationResult2 = InvalidationResult.IGNORED;
            if (compositionImpl == null || (invalidationResult = compositionImpl.invalidate(recomposeScopeImpl, obj)) == null) {
                invalidationResult = invalidationResult2;
            }
            if (invalidationResult != invalidationResult2) {
                return invalidationResult;
            }
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) this.this$0;
            movableContentStateReference.invalidations = CollectionsKt.plus(movableContentStateReference.invalidations, new Pair(recomposeScopeImpl, obj));
            return InvalidationResult.SCHEDULED;
        }

        public void offsetForAddition(int i, int i2) {
            int[] iArr = (int[]) this.mCardBackground;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            ensureSize(i3);
            int[] iArr2 = (int[]) this.mCardBackground;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill((int[]) this.mCardBackground, i, i3, -1);
            ArrayList arrayList = (ArrayList) this.this$0;
            if (arrayList == null) {
                return;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) ((ArrayList) this.this$0).get(size);
                int i4 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
                if (i4 >= i) {
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i4 + i2;
                }
            }
        }

        public void offsetForRemoval(int i, int i2) {
            int[] iArr = (int[]) this.mCardBackground;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            ensureSize(i3);
            int[] iArr2 = (int[]) this.mCardBackground;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = (int[]) this.mCardBackground;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            ArrayList arrayList = (ArrayList) this.this$0;
            if (arrayList == null) {
                return;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) ((ArrayList) this.this$0).get(size);
                int i4 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition;
                if (i4 >= i) {
                    if (i4 < i3) {
                        ((ArrayList) this.this$0).remove(size);
                    } else {
                        staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition = i4 - i2;
                    }
                }
            }
        }

        public void onDestroyActionMode(ActionMode actionMode) {
            Dispatcher dispatcher = (Dispatcher) this.mCardBackground;
            ((ActionMode.Callback) dispatcher.executorServiceOrNull).onDestroyActionMode(dispatcher.getActionModeWrapper(actionMode));
            AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) this.this$0;
            if (appCompatDelegateImpl.mActionModePopup != null) {
                appCompatDelegateImpl.mWindow.getDecorView().removeCallbacks(appCompatDelegateImpl.mShowActionModePopup);
            }
            if (appCompatDelegateImpl.mActionModeView != null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.mFadeAnim;
                if (viewPropertyAnimatorCompat != null) {
                    viewPropertyAnimatorCompat.cancel();
                }
                ViewPropertyAnimatorCompat animate = ViewCompat.animate(appCompatDelegateImpl.mActionModeView);
                animate.alpha(0.0f);
                appCompatDelegateImpl.mFadeAnim = animate;
                animate.setListener(new AppCompatDelegateImpl.AnonymousClass7(this, 2));
            }
            appCompatDelegateImpl.mActionMode = null;
            ViewGroup viewGroup = appCompatDelegateImpl.mSubDecor;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            viewGroup.requestApplyInsets();
            appCompatDelegateImpl.updateBackInvokedCallbackState();
        }

        @Override // androidx.preference.Preference.OnPreferenceClickListener
        public boolean onPreferenceClick(Preference preference) {
            ((PreferenceGroup) this.mCardBackground).mInitialExpandedChildrenCount = Log.LOG_LEVEL_OFF;
            PreferenceGroupAdapter preferenceGroupAdapter = (PreferenceGroupAdapter) this.this$0;
            Handler handler = preferenceGroupAdapter.mHandler;
            LiveData.AnonymousClass1 anonymousClass1 = preferenceGroupAdapter.mSyncRunnable;
            handler.removeCallbacks(anonymousClass1);
            handler.post(anonymousClass1);
            return true;
        }

        public boolean onPrepareActionMode(androidx.appcompat.view.ActionMode actionMode, Menu menu) {
            ViewGroup viewGroup = ((AppCompatDelegateImpl) this.this$0).mSubDecor;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            viewGroup.requestApplyInsets();
            Dispatcher dispatcher = (Dispatcher) this.mCardBackground;
            ActionMode.Callback callback = (ActionMode.Callback) dispatcher.executorServiceOrNull;
            SupportActionModeWrapper actionModeWrapper = dispatcher.getActionModeWrapper(actionMode);
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) dispatcher.runningSyncCalls;
            Menu menu2 = (Menu) simpleArrayMap.get(menu);
            if (menu2 == null) {
                menu2 = new MenuWrapperICS((Context) dispatcher.readyAsyncCalls, (MenuBuilder) menu);
                simpleArrayMap.put(menu, menu2);
            }
            return callback.onPrepareActionMode(actionModeWrapper, menu2);
        }

        public void onTypefaceResult(FontRequestWorker.TypefaceResult typefaceResult) {
            ExecutorCompat$HandlerExecutor executorCompat$HandlerExecutor = (ExecutorCompat$HandlerExecutor) this.this$0;
            MemoryCacheService memoryCacheService = (MemoryCacheService) this.mCardBackground;
            int i = typefaceResult.mResult;
            if (i == 0) {
                executorCompat$HandlerExecutor.execute(new ActivityRecreator.AnonymousClass1(memoryCacheService, typefaceResult.mTypeface, 3));
            } else {
                executorCompat$HandlerExecutor.execute(new CallbackWrapper$2(memoryCacheService, i));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:126:0x0209, code lost:
        
            continue;
         */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
        java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
        	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
        	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
         */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0109 A[Catch: IOException -> 0x0091, XmlPullParserException -> 0x0094, TryCatch #2 {IOException -> 0x0091, XmlPullParserException -> 0x0094, blocks: (B:19:0x0062, B:28:0x0209, B:29:0x0074, B:30:0x0082, B:33:0x0087, B:41:0x0097, B:44:0x00b1, B:47:0x00a0, B:51:0x00a9, B:54:0x00bf, B:57:0x00ce, B:59:0x00d6, B:62:0x00e0, B:66:0x0109, B:69:0x0110, B:70:0x0128, B:72:0x00e9, B:74:0x00f1, B:77:0x00ff, B:80:0x0129, B:82:0x0131, B:85:0x013f, B:88:0x0149, B:91:0x0154, B:92:0x016c, B:94:0x016d, B:97:0x0177, B:100:0x0182, B:101:0x019a, B:103:0x019b, B:105:0x01a3, B:108:0x01ac, B:111:0x01b6, B:114:0x01c0, B:115:0x01d8, B:117:0x01d9, B:120:0x01e3, B:123:0x01ed, B:124:0x0205, B:127:0x0206), top: B:18:0x0062 }] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0110 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void parseConstraintSet(android.content.Context r12, android.content.res.XmlResourceParser r13) {
            /*
                Method dump skipped, instructions count: 608
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.cardview.widget.CardView.AnonymousClass1.parseConstraintSet(android.content.Context, android.content.res.XmlResourceParser):void");
        }

        @Override // androidx.compose.runtime.saveable.Saver
        public Object restore(Object obj) {
            return ((Function1) this.this$0).invoke(obj);
        }

        @Override // androidx.compose.runtime.saveable.Saver
        public Object save(SaveableHolder saveableHolder, Object obj) {
            return ((Function2) this.mCardBackground).invoke(saveableHolder, obj);
        }

        public void setActionBarDescription(int i) {
            Toolbar toolbar = (Toolbar) this.mCardBackground;
            if (i == 0) {
                toolbar.setNavigationContentDescription((CharSequence) this.this$0);
            } else {
                toolbar.setNavigationContentDescription(i);
            }
        }

        public void setShadowPadding(int i, int i2, int i3, int i4) {
            CardView cardView = (CardView) this.this$0;
            cardView.mShadowBounds.set(i, i2, i3, i4);
            Rect rect = cardView.mContentPadding;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 21:
                    String str = "[ ";
                    if (((SolverVariable) this.mCardBackground) != null) {
                        for (int i = 0; i < 9; i++) {
                            StringBuilder m = Owner.CC.m(str);
                            m.append(((SolverVariable) this.mCardBackground).mGoalStrengthVector[i]);
                            m.append(" ");
                            str = m.toString();
                        }
                    }
                    StringBuilder m2 = SolverVariable$Type$EnumUnboxingSharedUtility.m(str, "] ");
                    m2.append((SolverVariable) this.mCardBackground);
                    return m2.toString();
                case 24:
                    return "Bounds{lower=" + ((Insets) this.mCardBackground) + " upper=" + ((Insets) this.this$0) + "}";
                default:
                    return super.toString();
            }
        }

        public void usedContainer(MovableContentStateReference movableContentStateReference) {
            MutableScatterMap mutableScatterMap = (MutableScatterMap) this.mCardBackground;
            Object obj = ((MutableScatterMap) this.this$0).get(movableContentStateReference);
            if (obj != null) {
                int i = 11;
                if (!(obj instanceof MutableObjectList)) {
                    MultiValueMap.m173removeValueIfimpl(mutableScatterMap, (MovableContent) obj, new DiskLruCache$$ExternalSyntheticLambda0(movableContentStateReference, i));
                    return;
                }
                ObjectList objectList = (ObjectList) obj;
                Object[] objArr = objectList.content;
                int i2 = objectList._size;
                for (int i3 = 0; i3 < i2; i3++) {
                    Object obj2 = objArr[i3];
                    obj2.getClass();
                    MultiValueMap.m173removeValueIfimpl(mutableScatterMap, (MovableContent) obj2, new DiskLruCache$$ExternalSyntheticLambda0(movableContentStateReference, i));
                }
            }
        }

        @Override // androidx.compose.runtime.RecomposeScopeOwner
        public void recomposeScopeReleased() {
        }

        @Override // androidx.compose.runtime.RecomposeScopeOwner
        public void recordReadOf(Object obj) {
        }

        public /* synthetic */ AnonymousClass1(int i, boolean z) {
            this.$r8$classId = i;
        }

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        public /* synthetic */ AnonymousClass1(Object obj, Object obj2, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.mCardBackground = obj2;
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2, boolean z) {
            this.$r8$classId = i;
            this.mCardBackground = obj;
            this.this$0 = obj2;
        }

        public AnonymousClass1(LayoutNode layoutNode, MeasurePolicy measurePolicy) {
            this.$r8$classId = 16;
            this.mCardBackground = layoutNode;
            this.this$0 = Updater.mutableStateOf$default(measurePolicy);
        }

        public AnonymousClass1(DefaultPagerState defaultPagerState, IndicationKt$$ExternalSyntheticLambda0 indicationKt$$ExternalSyntheticLambda0, PagerSnapDistanceMaxPages pagerSnapDistanceMaxPages) {
            this.$r8$classId = 6;
            this.mCardBackground = defaultPagerState;
            this.this$0 = indicationKt$$ExternalSyntheticLambda0;
        }

        public AnonymousClass1(ConnectPlan$$ExternalSyntheticLambda0 connectPlan$$ExternalSyntheticLambda0) {
            this.$r8$classId = 11;
            this.mCardBackground = connectPlan$$ExternalSyntheticLambda0;
            this.this$0 = new AtomicInt(0);
        }

        public AnonymousClass1(LazyLayoutItemContentFactory lazyLayoutItemContentFactory) {
            this.$r8$classId = 7;
            this.mCardBackground = lazyLayoutItemContentFactory;
            MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.EmptyObjectIntMap;
            this.this$0 = new MutableObjectIntMap();
        }

        public AnonymousClass1(WindowInsetsAnimation.Bounds bounds) {
            this.$r8$classId = 24;
            this.mCardBackground = WindowInsetsAnimationCompat.Impl30.getLowerBounds(bounds);
            this.this$0 = WindowInsetsAnimationCompat.Impl30.getHigherBounds(bounds);
        }

        public AnonymousClass1(EditText editText) {
            this.$r8$classId = 26;
            this.mCardBackground = editText;
            EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText);
            this.this$0 = emojiTextWatcher;
            editText.addTextChangedListener(emojiTextWatcher);
            if (EmojiEditableFactory.sInstance == null) {
                synchronized (EmojiEditableFactory.INSTANCE_LOCK) {
                    try {
                        if (EmojiEditableFactory.sInstance == null) {
                            EmojiEditableFactory emojiEditableFactory = new EmojiEditableFactory();
                            try {
                                EmojiEditableFactory.sWatcherClass = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, EmojiEditableFactory.class.getClassLoader());
                            } catch (Throwable unused) {
                            }
                            EmojiEditableFactory.sInstance = emojiEditableFactory;
                        }
                    } finally {
                    }
                }
            }
            editText.setEditableFactory(EmojiEditableFactory.sInstance);
        }

        public AnonymousClass1(Toolbar toolbar) {
            this.$r8$classId = 2;
            this.mCardBackground = toolbar;
            toolbar.getNavigationIcon();
            this.this$0 = toolbar.getNavigationContentDescription();
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) this.mCardViewDelegate.mCardBackground;
        if (colorStateList == null) {
            roundRectDrawable.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        roundRectDrawable.mBackground = colorStateList;
        roundRectDrawable.mPaint.setColor(colorStateList.getColorForState(roundRectDrawable.getState(), roundRectDrawable.mBackground.getDefaultColor()));
        roundRectDrawable.invalidateSelf();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.schabi.newpipe.R.attr.cardViewStyle);
    }

    public CardView(Context context) {
        this(context, null);
    }
}

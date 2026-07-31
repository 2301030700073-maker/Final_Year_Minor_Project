package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Looper;
import android.text.Spannable;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.Choreographer;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsetsAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.ActionMode;
import androidx.cardview.R$styleable;
import androidx.collection.LruCache;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectIntMapKt;
import androidx.collection.Values;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditingBuffer;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Density;
import androidx.constraintlayout.core.SolverVariable;
import androidx.core.app.ActivityRecreator;
import androidx.core.graphics.Insets;
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
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.paging.HintHandler;
import androidx.paging.SingleRunner$runInIsolation$2;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import androidx.work.impl.AutoMigration_14_15;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVG;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.StandaloneCoroutine;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import retrofit2.AndroidMainExecutor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(0, this);
        this.mCardViewDelegate = anonymousClass1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CardView, i, org.wikipedia.R.style.CardView);
        if (obtainStyledAttributes.hasValue(2)) {
            valueOf = obtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
            int color = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            valueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(org.wikipedia.R.color.cardview_light_background) : getResources().getColor(org.wikipedia.R.color.cardview_dark_background));
        }
        float dimension = obtainStyledAttributes.getDimension(3, RecyclerView.DECELERATION_RATE);
        float dimension2 = obtainStyledAttributes.getDimension(4, RecyclerView.DECELERATION_RATE);
        float dimension3 = obtainStyledAttributes.getDimension(5, RecyclerView.DECELERATION_RATE);
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
        UStringsKt.setMaxElevation(anonymousClass1, dimension3);
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
    public void onMeasure(int i, int i2) {
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
        UStringsKt.setMaxElevation(this.mCardViewDelegate, f);
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
            UStringsKt.setMaxElevation(anonymousClass1, ((RoundRectDrawable) anonymousClass1.mCardBackground).mPadding);
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
            UStringsKt.setMaxElevation(anonymousClass1, ((RoundRectDrawable) anonymousClass1.mCardBackground).mPadding);
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.cardview.widget.CardView$1, reason: invalid class name */
    public final class AnonymousClass1 implements ActionMode.Callback, SubcomposeSlotReusePolicy, CancellationHandle, OperationErrorContext, Saver, SegmentFinder, EmojiProcessor$EmojiProcessCallback {
        public final /* synthetic */ int $r8$classId;
        public Object mCardBackground;
        public Object this$0;

        public AnonymousClass1(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 5:
                    TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
                    Float valueOf = Float.valueOf(RecyclerView.DECELERATION_RATE);
                    this.this$0 = new AnimationState(twoWayConverterImpl, valueOf, (AnimationVector) twoWayConverterImpl.convertToVector.invoke(valueOf), Long.MIN_VALUE, Long.MIN_VALUE, false);
                    break;
                case 7:
                    this.this$0 = ToolbarHandlerState.Uninitialized;
                    break;
                case 8:
                    this.mCardBackground = new LinkedHashMap();
                    this.this$0 = new LinkedHashMap();
                    break;
                case 9:
                    this.mCardBackground = new MutableScatterMap();
                    this.this$0 = new MutableScatterMap();
                    break;
                case VERTICAL_GRID_ITEM_VALUE:
                    this.mCardBackground = new MutableVector(new LayoutNode[16]);
                    break;
                case RADIO_GROUP_VALUE:
                    this.mCardBackground = new MutableVector(new Reference[16]);
                    this.this$0 = new ReferenceQueue();
                    break;
                case RADIO_ROW_VALUE:
                    this.mCardBackground = new Transition.AnonymousClass1(5, false);
                    this.this$0 = new LruCache(16);
                    break;
                case 27:
                    this.mCardBackground = Choreographer.getInstance();
                    this.this$0 = Looper.myLooper();
                    break;
                default:
                    this.mCardBackground = new JsonWriteContext();
                    this.this$0 = new JsonWriteContext();
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
                    Modifier.Node node = (Modifier.Node) layoutNode.nodes.head;
                    if ((node.aggregateChildKindSet & 256) != 0) {
                        while (node != null) {
                            if ((node.kindSet & 256) != 0) {
                                DelegatingNode delegatingNode = node;
                                ?? r5 = 0;
                                while (delegatingNode != 0) {
                                    if (delegatingNode instanceof GlobalPositionAwareModifierNode) {
                                        GlobalPositionAwareModifierNode globalPositionAwareModifierNode = (GlobalPositionAwareModifierNode) delegatingNode;
                                        globalPositionAwareModifierNode.onGloballyPositioned(HitTestResultKt.m547requireCoordinator64DMado(globalPositionAwareModifierNode, 256));
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
                                    delegatingNode = HitTestResultKt.pop(r5);
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

        /* JADX WARN: Multi-variable type inference failed */
        public TextFieldValue apply(List list) {
            EditCommand editCommand;
            try {
                int size = list.size();
                int i = 0;
                TextRange textRange = null;
                while (i < size) {
                    try {
                        editCommand = (EditCommand) list.get(i);
                    } catch (Exception e) {
                        e = e;
                        r1 = textRange;
                    }
                    try {
                        editCommand.applyTo((EditingBuffer) this.this$0);
                        i++;
                        textRange = editCommand;
                    } catch (Exception e2) {
                        e = e2;
                        r1 = editCommand;
                        StringBuilder sb = new StringBuilder();
                        StringBuilder sb2 = new StringBuilder("Error while applying EditCommand batch to buffer (length=");
                        sb2.append(((SVG.PathDefinition) ((EditingBuffer) this.this$0).gapBuffer).getLength());
                        sb2.append(", composition=");
                        sb2.append(((EditingBuffer) this.this$0).m654getCompositionMzsxiRA$ui_text());
                        sb2.append(", selection=");
                        EditingBuffer editingBuffer = (EditingBuffer) this.this$0;
                        sb2.append((Object) TextRange.m646toStringimpl(ParagraphKt.TextRange(editingBuffer.selectionStart, editingBuffer.selectionEnd)));
                        sb2.append("):");
                        sb.append(sb2.toString());
                        sb.append('\n');
                        CollectionsKt.joinTo$default(list, sb, "\n", null, null, new DiskLruCache$$ExternalSyntheticLambda0(11, r1, this), 60);
                        throw new RuntimeException(sb.toString(), e);
                    }
                }
                EditingBuffer editingBuffer2 = (EditingBuffer) this.this$0;
                editingBuffer2.getClass();
                AnnotatedString annotatedString = new AnnotatedString(((SVG.PathDefinition) editingBuffer2.gapBuffer).toString());
                EditingBuffer editingBuffer3 = (EditingBuffer) this.this$0;
                long TextRange = ParagraphKt.TextRange(editingBuffer3.selectionStart, editingBuffer3.selectionEnd);
                r1 = TextRange.m645getReversedimpl(((TextFieldValue) this.mCardBackground).selection) ? null : new TextRange(TextRange);
                TextFieldValue textFieldValue = new TextFieldValue(annotatedString, r1 != null ? r1.packedValue : ParagraphKt.TextRange(TextRange.m643getMaximpl(TextRange), TextRange.m644getMinimpl(TextRange)), ((EditingBuffer) this.this$0).m654getCompositionMzsxiRA$ui_text());
                this.mCardBackground = textFieldValue;
                return textFieldValue;
            } catch (Exception e3) {
                e = e3;
            }
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
            return i < 0 ? buildStackTrace : CollectionsKt.plus((Collection) UuidKt.buildTrace(slotWriter, num, i, Integer.valueOf(slotWriter.parent(slotWriter.groups, i))), (Iterable) buildStackTrace);
        }

        @Override // androidx.compose.runtime.CancellationHandle
        public void cancel() {
            if (((AtomicInt) this.this$0).compareAndSet(1, 1)) {
                return;
            }
            ((HomeScreenKt$$ExternalSyntheticLambda29) this.mCardBackground).invoke();
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

        public InputMethodManager getImm() {
            return (InputMethodManager) ((Lazy) this.this$0).getValue();
        }

        public MeasurePolicy getMeasurePolicyState() {
            return (MeasurePolicy) ((ParcelableSnapshotMutableState) this.this$0).getValue();
        }

        @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
        public Object getResult() {
            return (UnprecomputeTextOnModificationSpannable) this.mCardBackground;
        }

        @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
        public void getSlotsToRetain(Values values) {
            MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) this.this$0;
            mutableObjectIntMap.clear();
            MutableOrderedScatterSet mutableOrderedScatterSet = (MutableOrderedScatterSet) values.parent;
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
                    values.remove(obj);
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
            ((AutoMigration_14_15) this.this$0).getClass();
            ((UnprecomputeTextOnModificationSpannable) this.mCardBackground).setSpan(new TypefaceEmojiSpan(typefaceEmojiRasterizer), i, i2, 33);
            return true;
        }

        public boolean isActive$foundation() {
            return !(((Number) ((AnimationState) this.this$0).value$delegate.getValue()).floatValue() == RecyclerView.DECELERATION_RATE);
        }

        @Override // androidx.compose.ui.text.android.selection.SegmentFinder
        public int nextEndBoundary(int i) {
            do {
                i = ((SVG.PathDefinition) this.this$0).nextBoundary(i);
                if (i == -1) {
                    return -1;
                }
            } while (Character.isWhitespace(((CharSequence) this.mCardBackground).charAt(i - 1)));
            return i;
        }

        @Override // androidx.compose.ui.text.android.selection.SegmentFinder
        public int nextStartBoundary(int i) {
            CharSequence charSequence = (CharSequence) this.mCardBackground;
            do {
                i = ((SVG.PathDefinition) this.this$0).nextBoundary(i);
                if (i == -1 || i == charSequence.length()) {
                    return -1;
                }
            } while (Character.isWhitespace(charSequence.charAt(i)));
            return i;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return ((ActionMode.Callback) this.mCardBackground).onActionItemClicked(actionMode, menuItem);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return ((ActionMode.Callback) this.mCardBackground).onCreateActionMode(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            ((ActionMode.Callback) this.mCardBackground).onDestroyActionMode(actionMode);
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
                animate.alpha(RecyclerView.DECELERATION_RATE);
                appCompatDelegateImpl.mFadeAnim = animate;
                animate.setListener(new AppCompatDelegateImpl.AnonymousClass7(2, this));
            }
            appCompatDelegateImpl.mAppCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl.mActionMode);
            appCompatDelegateImpl.mActionMode = null;
            ViewGroup viewGroup = appCompatDelegateImpl.mSubDecor;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            viewGroup.requestApplyInsets();
            appCompatDelegateImpl.updateBackInvokedCallbackState();
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            ViewGroup viewGroup = ((AppCompatDelegateImpl) this.this$0).mSubDecor;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            viewGroup.requestApplyInsets();
            return ((ActionMode.Callback) this.mCardBackground).onPrepareActionMode(actionMode, menu);
        }

        public void onTypefaceResult(FontRequestWorker.TypefaceResult typefaceResult) {
            AndroidMainExecutor androidMainExecutor = (AndroidMainExecutor) this.this$0;
            HintHandler hintHandler = (HintHandler) this.mCardBackground;
            int i = typefaceResult.mResult;
            if (i != 0) {
                androidMainExecutor.execute(new CallbackWrapper$2(i, 0, hintHandler));
            } else {
                androidMainExecutor.execute(new ActivityRecreator.AnonymousClass1(3, hintHandler, typefaceResult.mTypeface));
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

        @Override // androidx.compose.ui.text.android.selection.SegmentFinder
        public int previousEndBoundary(int i) {
            do {
                i = ((SVG.PathDefinition) this.this$0).prevBoundary(i);
                if (i == -1 || i == 0) {
                    return -1;
                }
            } while (Character.isWhitespace(((CharSequence) this.mCardBackground).charAt(i - 1)));
            return i;
        }

        @Override // androidx.compose.ui.text.android.selection.SegmentFinder
        public int previousStartBoundary(int i) {
            do {
                i = ((SVG.PathDefinition) this.this$0).prevBoundary(i);
                if (i == -1) {
                    return -1;
                }
            } while (Character.isWhitespace(((CharSequence) this.mCardBackground).charAt(i)));
            return i;
        }

        @Override // androidx.compose.runtime.saveable.Saver
        public Object restore(Object obj) {
            return ((Function1) this.this$0).invoke(obj);
        }

        @Override // androidx.compose.runtime.saveable.Saver
        public Object save(SaveableHolder saveableHolder, Object obj) {
            return ((Function2) this.mCardBackground).invoke(saveableHolder, obj);
        }

        public void setShadowPadding(int i, int i2, int i3, int i4) {
            CardView cardView = (CardView) this.this$0;
            cardView.mShadowBounds.set(i, i2, i3, i4);
            Rect rect = cardView.mContentPadding;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }

        public void show() {
            TextContextMenuProvider textContextMenuProvider;
            if (((ToolbarHandlerState) this.this$0) == ToolbarHandlerState.Uninitialized) {
                InlineClassHelperKt.throwIllegalStateException("ToolbarRequester is not initialized.");
            }
            TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = (TextContextMenuToolbarHandlerNode) this.mCardBackground;
            if (textContextMenuToolbarHandlerNode == null || !textContextMenuToolbarHandlerNode.isAttached) {
                return;
            }
            StandaloneCoroutine standaloneCoroutine = textContextMenuToolbarHandlerNode.textToolbarJob;
            if ((standaloneCoroutine == null || !standaloneCoroutine.isActive()) && (textContextMenuProvider = (TextContextMenuProvider) HitTestResultKt.currentValueOf(textContextMenuToolbarHandlerNode, TextContextMenuProviderKt.LocalTextContextMenuToolbarProvider)) != null) {
                textContextMenuToolbarHandlerNode.textToolbarJob = AwaitKt.launch$default(textContextMenuToolbarHandlerNode.getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new SingleRunner$runInIsolation$2(textContextMenuToolbarHandlerNode, textContextMenuProvider, null, 13), 1);
            }
        }

        public void stop$foundation() {
            StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) this.mCardBackground;
            AnimationVector animationVector = null;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            this.this$0 = new AnimationState(ArcSplineKt.FloatToVector, Float.valueOf(RecyclerView.DECELERATION_RATE), animationVector, 60);
        }

        public String toString() {
            switch (this.$r8$classId) {
                case SIZE_BOX_VALUE:
                    String str = "[ ";
                    if (((SolverVariable) this.mCardBackground) != null) {
                        for (int i = 0; i < 9; i++) {
                            str = str + ((SolverVariable) this.mCardBackground).mGoalStrengthVector[i] + " ";
                        }
                    }
                    return str + "] " + ((SolverVariable) this.mCardBackground);
                case 25:
                    return "Bounds{lower=" + ((Insets) this.mCardBackground) + " upper=" + ((Insets) this.this$0) + "}";
                default:
                    return super.toString();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void updateScrollDeltaForApproach$foundation(float f, Density density, CoroutineScope coroutineScope) {
            if (f <= density.mo87toPx0680j_4(1.0f)) {
                return;
            }
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Continuation continuation = null;
            Object[] objArr = 0;
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                float floatValue = ((Number) ((AnimationState) this.this$0).value$delegate.getValue()).floatValue();
                StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) this.mCardBackground;
                if (standaloneCoroutine != null) {
                    standaloneCoroutine.cancel(null);
                }
                AnimationState animationState = (AnimationState) this.this$0;
                if (animationState.isRunning) {
                    this.this$0 = ArcSplineKt.copy$default(animationState, floatValue - f, RecyclerView.DECELERATION_RATE, 30);
                } else {
                    this.this$0 = new AnimationState(ArcSplineKt.FloatToVector, Float.valueOf(-f), objArr == true ? 1 : 0, 60);
                }
                this.mCardBackground = AwaitKt.launch$default(coroutineScope, null, null, new ThumbNode$onAttach$1(8, this, continuation), 3);
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.mCardBackground = obj;
            this.this$0 = obj2;
        }

        public /* synthetic */ AnonymousClass1(int i, boolean z) {
            this.$r8$classId = i;
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        public AnonymousClass1(LayoutNode layoutNode, MeasurePolicy measurePolicy) {
            this.$r8$classId = 15;
            this.mCardBackground = layoutNode;
            this.this$0 = Updater.mutableStateOf$default(measurePolicy);
        }

        public AnonymousClass1(HomeScreenKt$$ExternalSyntheticLambda29 homeScreenKt$$ExternalSyntheticLambda29) {
            this.$r8$classId = 10;
            this.mCardBackground = homeScreenKt$$ExternalSyntheticLambda29;
            this.this$0 = new AtomicInt(0);
        }

        public AnonymousClass1(View view) {
            this.$r8$classId = 1;
            this.mCardBackground = view;
            this.this$0 = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new NavBackStackEntry$$ExternalSyntheticLambda0(17, this));
        }

        public AnonymousClass1(LazyLayoutItemContentFactory lazyLayoutItemContentFactory) {
            this.$r8$classId = 4;
            this.mCardBackground = lazyLayoutItemContentFactory;
            MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.EmptyObjectIntMap;
            this.this$0 = new MutableObjectIntMap();
        }

        public AnonymousClass1(WindowInsetsAnimation.Bounds bounds) {
            this.$r8$classId = 25;
            this.mCardBackground = WindowInsetsAnimationCompat.Impl30.getLowerBounds(bounds);
            this.this$0 = WindowInsetsAnimationCompat.Impl30.getHigherBounds(bounds);
        }

        public AnonymousClass1(EditText editText) {
            this.$r8$classId = 29;
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

        public AnonymousClass1(AppCompatDelegateImpl appCompatDelegateImpl, ActionMode.Callback callback) {
            this.$r8$classId = 2;
            this.this$0 = appCompatDelegateImpl;
            this.mCardBackground = callback;
        }
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.wikipedia.R.attr.cardViewStyle);
    }
}

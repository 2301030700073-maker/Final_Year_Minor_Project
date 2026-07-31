package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1$1;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.MeasuredSizeAwareModifierNode;
import androidx.compose.ui.unit.IntSize;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineStart;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContentInViewNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, MeasuredSizeAwareModifierNode {
    public BringIntoViewSpec bringIntoViewSpec;
    public final ScrollableNode$$ExternalSyntheticLambda0 getFocusedRect;
    public boolean isAnimationRunning;
    public Orientation orientation;
    public boolean reverseDirection;
    public final ScrollingLogic scrollingLogic;
    public boolean trackingFocusedChild;
    public final LazyLayoutBeyondBoundsInfo bringIntoViewRequests = new LazyLayoutBeyondBoundsInfo(1);
    public long viewportSize = -1;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Request {
        public final CancellableContinuationImpl continuation;
        public final BringIntoViewResponderNode$bringIntoView$2$1$1 currentBounds;

        public Request(BringIntoViewResponderNode$bringIntoView$2$1$1 bringIntoViewResponderNode$bringIntoView$2$1$1, CancellableContinuationImpl cancellableContinuationImpl) {
            this.currentBounds = bringIntoViewResponderNode$bringIntoView$2$1$1;
            this.continuation = cancellableContinuationImpl;
        }

        public final String toString() {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            String str = ((CoroutineName) cancellableContinuationImpl.context.get(CoroutineName.Key)) != null ? "Room Invalidation Tracker Refresh" : null;
            StringBuilder sb = new StringBuilder("Request@");
            int hashCode = hashCode();
            UtilsKt.checkRadix(16);
            String num = Integer.toString(hashCode, 16);
            num.getClass();
            sb.append(num);
            sb.append(str != null ? Animation.CC.m("[", str, "](") : "(");
            sb.append("currentBounds()=");
            sb.append(this.currentBounds.invoke());
            sb.append(", continuation=");
            sb.append(cancellableContinuationImpl);
            sb.append(')');
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Vertical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Horizontal.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ContentInViewNode(Orientation orientation, ScrollingLogic scrollingLogic, boolean z, BringIntoViewSpec bringIntoViewSpec, ScrollableNode$$ExternalSyntheticLambda0 scrollableNode$$ExternalSyntheticLambda0) {
        this.orientation = orientation;
        this.scrollingLogic = scrollingLogic;
        this.reverseDirection = z;
        this.bringIntoViewSpec = bringIntoViewSpec;
        this.getFocusedRect = scrollableNode$$ExternalSyntheticLambda0;
    }

    /* renamed from: isMaxVisible--EQwtKw$default, reason: not valid java name */
    public static boolean m62isMaxVisibleEQwtKw$default(ContentInViewNode contentInViewNode, Rect rect, long j, long j2, int i) {
        if ((i & 1) != 0) {
            j = contentInViewNode.m64getViewportSizeOrZeroYbymL2g$foundation();
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = 0;
        }
        long m67relocationOffsetfbGrOKE = contentInViewNode.m67relocationOffsetfbGrOKE(rect, j3, j2);
        return Math.abs(Float.intBitsToFloat((int) (m67relocationOffsetfbGrOKE >> 32))) <= 0.5f && Math.abs(Float.intBitsToFloat((int) (m67relocationOffsetfbGrOKE & 4294967295L))) <= 0.5f;
    }

    /* renamed from: calculateScrollDelta-I_oMVgE, reason: not valid java name */
    public final float m63calculateScrollDeltaI_oMVgE(BringIntoViewSpec bringIntoViewSpec, long j) {
        char c;
        float f;
        long j2;
        Rect rect;
        int compare;
        long j3 = this.viewportSize;
        MutableVector mutableVector = this.bringIntoViewRequests.beyondBoundsItems;
        int i = mutableVector.size - 1;
        Object[] objArr = mutableVector.content;
        if (i < objArr.length) {
            rect = null;
            while (true) {
                if (i < 0) {
                    c = ' ';
                    f = RecyclerView.DECELERATION_RATE;
                    j2 = 4294967295L;
                    break;
                }
                Rect rect2 = (Rect) ((Request) objArr[i]).currentBounds.invoke();
                if (rect2 != null) {
                    long m391getSizeNHjbRc = rect2.m391getSizeNHjbRc();
                    long m813toSizeozmzZPI = ExceptionsKt.m813toSizeozmzZPI(m64getViewportSizeOrZeroYbymL2g$foundation());
                    f = RecyclerView.DECELERATION_RATE;
                    int i2 = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
                    if (i2 == 1) {
                        c = ' ';
                        j2 = 4294967295L;
                        compare = Float.compare(Float.intBitsToFloat((int) (m391getSizeNHjbRc & 4294967295L)), Float.intBitsToFloat((int) (m813toSizeozmzZPI & 4294967295L)));
                    } else {
                        if (i2 != 2) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                            return RecyclerView.DECELERATION_RATE;
                        }
                        c = ' ';
                        j2 = 4294967295L;
                        compare = Float.compare(Float.intBitsToFloat((int) (m391getSizeNHjbRc >> 32)), Float.intBitsToFloat((int) (m813toSizeozmzZPI >> 32)));
                    }
                    if (compare <= 0) {
                        rect = rect2;
                    } else if (rect == null) {
                        rect = rect2;
                    }
                }
                i--;
            }
        } else {
            c = ' ';
            f = RecyclerView.DECELERATION_RATE;
            j2 = 4294967295L;
            rect = null;
        }
        if (rect == null) {
            Rect rect3 = this.trackingFocusedChild ? (Rect) this.getFocusedRect.invoke() : null;
            if (rect3 == null) {
                return f;
            }
            rect = rect3;
        }
        long m813toSizeozmzZPI2 = ExceptionsKt.m813toSizeozmzZPI(j3);
        int i3 = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i3 == 1) {
            float f2 = rect.top;
            return bringIntoViewSpec.calculateScrollDistance(f2 - ((int) (j & j2)), rect.bottom - f2, Float.intBitsToFloat((int) (m813toSizeozmzZPI2 & j2)));
        }
        if (i3 == 2) {
            float f3 = rect.left;
            return bringIntoViewSpec.calculateScrollDistance(f3 - ((int) (j >> c)), rect.right - f3, Float.intBitsToFloat((int) (m813toSizeozmzZPI2 >> c)));
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return f;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    /* renamed from: getViewportSizeOrZero-YbymL2g$foundation, reason: not valid java name */
    public final long m64getViewportSizeOrZeroYbymL2g$foundation() {
        long j = this.viewportSize;
        if (IntSize.m721equalsimpl0(j, -1L)) {
            return 0L;
        }
        return j;
    }

    /* renamed from: launchAnimation--gyyYBs, reason: not valid java name */
    public final void m65launchAnimationgyyYBs(long j) {
        BringIntoViewSpec bringIntoViewSpec = this.bringIntoViewSpec;
        if (bringIntoViewSpec == null) {
            bringIntoViewSpec = (BringIntoViewSpec) HitTestResultKt.currentValueOf(this, BringIntoViewSpec_androidKt.LocalBringIntoViewSpec);
        }
        BringIntoViewSpec bringIntoViewSpec2 = bringIntoViewSpec;
        if (this.isAnimationRunning) {
            InlineClassHelperKt.throwIllegalStateException("launchAnimation called when previous animation was running");
        }
        BringIntoViewSpec bringIntoViewSpec3 = this.bringIntoViewSpec;
        if (bringIntoViewSpec3 == null) {
            bringIntoViewSpec3 = (BringIntoViewSpec) HitTestResultKt.currentValueOf(this, BringIntoViewSpec_androidKt.LocalBringIntoViewSpec);
        }
        AwaitKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new ContentInViewNode$launchAnimation$2(this, new UpdatableAnimationState(bringIntoViewSpec3.getScrollAnimationSpec()), bringIntoViewSpec2, j, null), 1);
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI, reason: not valid java name */
    public final void mo66onRemeasuredozmzZPI(long j) {
        int compare;
        long m64getViewportSizeOrZeroYbymL2g$foundation = m64getViewportSizeOrZeroYbymL2g$foundation();
        this.viewportSize = j;
        int i = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i == 1) {
            compare = Intrinsics.compare((int) (j & 4294967295L), (int) (m64getViewportSizeOrZeroYbymL2g$foundation & 4294967295L));
        } else {
            if (i != 2) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
            compare = Intrinsics.compare((int) (j >> 32), (int) (m64getViewportSizeOrZeroYbymL2g$foundation >> 32));
        }
        if (compare >= 0) {
            return;
        }
        long j2 = !this.reverseDirection ? this.orientation == Orientation.Vertical ? (((int) (m64getViewportSizeOrZeroYbymL2g$foundation & 4294967295L)) - ((int) (j & 4294967295L))) & 4294967295L : (((int) (m64getViewportSizeOrZeroYbymL2g$foundation >> 32)) - ((int) (j >> 32))) << 32 : 0L;
        Rect rect = (Rect) this.getFocusedRect.invoke();
        if (rect == null || this.isAnimationRunning || this.trackingFocusedChild || !m62isMaxVisibleEQwtKw$default(this, rect, m64getViewportSizeOrZeroYbymL2g$foundation, 0L, 2) || m62isMaxVisibleEQwtKw$default(this, rect, 0L, j2, 1)) {
            return;
        }
        this.trackingFocusedChild = true;
        m65launchAnimationgyyYBs(j2);
    }

    /* renamed from: relocationOffset-fbGrOKE, reason: not valid java name */
    public final long m67relocationOffsetfbGrOKE(Rect rect, long j, long j2) {
        long m813toSizeozmzZPI = ExceptionsKt.m813toSizeozmzZPI(j);
        int i = WhenMappings.$EnumSwitchMapping$0[this.orientation.ordinal()];
        if (i == 1) {
            BringIntoViewSpec bringIntoViewSpec = this.bringIntoViewSpec;
            if (bringIntoViewSpec == null) {
                bringIntoViewSpec = (BringIntoViewSpec) HitTestResultKt.currentValueOf(this, BringIntoViewSpec_androidKt.LocalBringIntoViewSpec);
            }
            float f = rect.top;
            float calculateScrollDistance = bringIntoViewSpec.calculateScrollDistance(f - ((int) (j2 & 4294967295L)), rect.bottom - f, Float.intBitsToFloat((int) (m813toSizeozmzZPI & 4294967295L)));
            return (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(calculateScrollDistance) & 4294967295L);
        }
        if (i != 2) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return 0L;
        }
        BringIntoViewSpec bringIntoViewSpec2 = this.bringIntoViewSpec;
        if (bringIntoViewSpec2 == null) {
            bringIntoViewSpec2 = (BringIntoViewSpec) HitTestResultKt.currentValueOf(this, BringIntoViewSpec_androidKt.LocalBringIntoViewSpec);
        }
        float f2 = rect.left;
        return (Float.floatToRawIntBits(bringIntoViewSpec2.calculateScrollDistance(f2 - ((int) (j2 >> 32)), rect.right - f2, Float.intBitsToFloat((int) (m813toSizeozmzZPI >> 32)))) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L);
    }
}

package androidx.compose.foundation.gestures;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.MeasuredSizeAwareModifierNode;
import androidx.compose.ui.unit.IntSize;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import okhttp3.Cookie;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Request {
        public final CancellableContinuationImpl continuation;
        public final BringIntoViewResponderNode$bringIntoView$2.AnonymousClass1.C00021 currentBounds;

        public Request(BringIntoViewResponderNode$bringIntoView$2.AnonymousClass1.C00021 c00021, CancellableContinuationImpl cancellableContinuationImpl) {
            this.currentBounds = c00021;
            this.continuation = cancellableContinuationImpl;
        }

        public final String toString() {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            CoroutineName coroutineName = (CoroutineName) cancellableContinuationImpl.context.get(CoroutineName.Key);
            String str = coroutineName != null ? coroutineName.name : null;
            StringBuilder sb = new StringBuilder("Request@");
            int hashCode = hashCode();
            CharsKt.checkRadix(16);
            String num = Integer.toString(hashCode, 16);
            num.getClass();
            sb.append(num);
            sb.append(str != null ? Modifier.CC.m("[", str, "](") : "(");
            sb.append("currentBounds()=");
            sb.append(this.currentBounds.invoke());
            sb.append(", continuation=");
            sb.append(cancellableContinuationImpl);
            sb.append(')');
            return sb.toString();
        }
    }

    public ContentInViewNode(Orientation orientation, ScrollingLogic scrollingLogic, boolean z, BringIntoViewSpec bringIntoViewSpec, ScrollableNode$$ExternalSyntheticLambda0 scrollableNode$$ExternalSyntheticLambda0) {
        this.orientation = orientation;
        this.scrollingLogic = scrollingLogic;
        this.reverseDirection = z;
        this.bringIntoViewSpec = bringIntoViewSpec;
        this.getFocusedRect = scrollableNode$$ExternalSyntheticLambda0;
    }

    /* renamed from: access$calculateScrollDelta-I_oMVgE, reason: not valid java name */
    public static final float m36access$calculateScrollDeltaI_oMVgE(ContentInViewNode contentInViewNode, BringIntoViewSpec bringIntoViewSpec, long j) {
        float f;
        Rect rect;
        int compare;
        long j2 = contentInViewNode.viewportSize;
        MutableVector mutableVector = contentInViewNode.bringIntoViewRequests.beyondBoundsItems;
        int i = mutableVector.size - 1;
        Object[] objArr = mutableVector.content;
        if (i < objArr.length) {
            rect = null;
            while (true) {
                if (i < 0) {
                    f = 0.0f;
                    break;
                }
                Rect rect2 = (Rect) ((Request) objArr[i]).currentBounds.invoke();
                if (rect2 != null) {
                    long m204getSizeNHjbRc = rect2.m204getSizeNHjbRc();
                    long m708toSizeozmzZPI = Cookie.Companion.m708toSizeozmzZPI(contentInViewNode.m38getViewportSizeOrZeroYbymL2g$foundation());
                    f = 0.0f;
                    int ordinal = contentInViewNode.orientation.ordinal();
                    if (ordinal == 0) {
                        compare = Float.compare(Float.intBitsToFloat((int) (m204getSizeNHjbRc & 4294967295L)), Float.intBitsToFloat((int) (m708toSizeozmzZPI & 4294967295L)));
                    } else {
                        if (ordinal != 1) {
                            DecodeUtils$$ExternalSyntheticBUOutline0.m();
                            return 0.0f;
                        }
                        compare = Float.compare(Float.intBitsToFloat((int) (m204getSizeNHjbRc >> 32)), Float.intBitsToFloat((int) (m708toSizeozmzZPI >> 32)));
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
            f = 0.0f;
            rect = null;
        }
        if (rect == null) {
            Rect rect3 = contentInViewNode.trackingFocusedChild ? (Rect) contentInViewNode.getFocusedRect.invoke() : null;
            if (rect3 == null) {
                return f;
            }
            rect = rect3;
        }
        long m708toSizeozmzZPI2 = Cookie.Companion.m708toSizeozmzZPI(j2);
        int ordinal2 = contentInViewNode.orientation.ordinal();
        if (ordinal2 == 0) {
            float f2 = rect.top;
            return bringIntoViewSpec.calculateScrollDistance(f2 - ((int) (j & 4294967295L)), rect.bottom - f2, Float.intBitsToFloat((int) (m708toSizeozmzZPI2 & 4294967295L)));
        }
        if (ordinal2 == 1) {
            float f3 = rect.left;
            return bringIntoViewSpec.calculateScrollDistance(f3 - ((int) (j >> 32)), rect.right - f3, Float.intBitsToFloat((int) (m708toSizeozmzZPI2 >> 32)));
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m();
        return f;
    }

    /* renamed from: isMaxVisible--EQwtKw$default, reason: not valid java name */
    public static boolean m37isMaxVisibleEQwtKw$default(ContentInViewNode contentInViewNode, Rect rect, long j, long j2, int i) {
        if ((i & 1) != 0) {
            j = contentInViewNode.m38getViewportSizeOrZeroYbymL2g$foundation();
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = 0;
        }
        long m41relocationOffsetfbGrOKE = contentInViewNode.m41relocationOffsetfbGrOKE(rect, j3, j2);
        return Math.abs(Float.intBitsToFloat((int) (m41relocationOffsetfbGrOKE >> 32))) <= 0.5f && Math.abs(Float.intBitsToFloat((int) (m41relocationOffsetfbGrOKE & 4294967295L))) <= 0.5f;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    /* renamed from: getViewportSizeOrZero-YbymL2g$foundation, reason: not valid java name */
    public final long m38getViewportSizeOrZeroYbymL2g$foundation() {
        long j = this.viewportSize;
        if (IntSize.m449equalsimpl0(j, -1L)) {
            return 0L;
        }
        return j;
    }

    /* renamed from: launchAnimation--gyyYBs, reason: not valid java name */
    public final void m39launchAnimationgyyYBs(long j) {
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
        UpdatableAnimationState updatableAnimationState = new UpdatableAnimationState(bringIntoViewSpec3.getScrollAnimationSpec());
        JobKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new ContentInViewNode$launchAnimation$2(this, updatableAnimationState, bringIntoViewSpec2, j, null), 1);
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI, reason: not valid java name */
    public final void mo40onRemeasuredozmzZPI(long j) {
        int compare;
        long m38getViewportSizeOrZeroYbymL2g$foundation = m38getViewportSizeOrZeroYbymL2g$foundation();
        this.viewportSize = j;
        int ordinal = this.orientation.ordinal();
        if (ordinal == 0) {
            compare = Intrinsics.compare((int) (j & 4294967295L), (int) (m38getViewportSizeOrZeroYbymL2g$foundation & 4294967295L));
        } else {
            if (ordinal != 1) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return;
            }
            compare = Intrinsics.compare((int) (j >> 32), (int) (m38getViewportSizeOrZeroYbymL2g$foundation >> 32));
        }
        if (compare >= 0) {
            return;
        }
        long j2 = !this.reverseDirection ? this.orientation == Orientation.Vertical ? (((int) (m38getViewportSizeOrZeroYbymL2g$foundation & 4294967295L)) - ((int) (j & 4294967295L))) & 4294967295L : (((int) (m38getViewportSizeOrZeroYbymL2g$foundation >> 32)) - ((int) (j >> 32))) << 32 : 0L;
        Rect rect = (Rect) this.getFocusedRect.invoke();
        if (rect == null || this.isAnimationRunning || this.trackingFocusedChild || !m37isMaxVisibleEQwtKw$default(this, rect, m38getViewportSizeOrZeroYbymL2g$foundation, 0L, 2) || m37isMaxVisibleEQwtKw$default(this, rect, 0L, j2, 1)) {
            return;
        }
        this.trackingFocusedChild = true;
        m39launchAnimationgyyYBs(j2);
    }

    /* renamed from: relocationOffset-fbGrOKE, reason: not valid java name */
    public final long m41relocationOffsetfbGrOKE(Rect rect, long j, long j2) {
        long m708toSizeozmzZPI = Cookie.Companion.m708toSizeozmzZPI(j);
        int ordinal = this.orientation.ordinal();
        if (ordinal == 0) {
            BringIntoViewSpec bringIntoViewSpec = this.bringIntoViewSpec;
            if (bringIntoViewSpec == null) {
                bringIntoViewSpec = (BringIntoViewSpec) HitTestResultKt.currentValueOf(this, BringIntoViewSpec_androidKt.LocalBringIntoViewSpec);
            }
            float f = rect.top;
            float calculateScrollDistance = bringIntoViewSpec.calculateScrollDistance(f - ((int) (j2 & 4294967295L)), rect.bottom - f, Float.intBitsToFloat((int) (m708toSizeozmzZPI & 4294967295L)));
            return (Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(calculateScrollDistance) & 4294967295L);
        }
        if (ordinal != 1) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m();
            return 0L;
        }
        BringIntoViewSpec bringIntoViewSpec2 = this.bringIntoViewSpec;
        if (bringIntoViewSpec2 == null) {
            bringIntoViewSpec2 = (BringIntoViewSpec) HitTestResultKt.currentValueOf(this, BringIntoViewSpec_androidKt.LocalBringIntoViewSpec);
        }
        float f2 = rect.left;
        return (Float.floatToRawIntBits(bringIntoViewSpec2.calculateScrollDistance(f2 - ((int) (j2 >> 32)), rect.right - f2, Float.intBitsToFloat((int) (m708toSizeozmzZPI >> 32)))) << 32) | (Float.floatToRawIntBits(0.0f) & 4294967295L);
    }
}

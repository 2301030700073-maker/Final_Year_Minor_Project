package androidx.compose.foundation.gestures;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.MeasuredSizeAwareModifierNode;
import androidx.compose.ui.unit.IntSize;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentInViewNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, MeasuredSizeAwareModifierNode {
    public final ScrollableNode$$ExternalSyntheticLambda0 getFocusedRect;
    public boolean isAnimationRunning;
    public Orientation orientation;
    public boolean reverseDirection;
    public final ScrollingLogic scrollingLogic;
    public boolean trackingFocusedChild;
    public final LazyLayoutBeyondBoundsInfo bringIntoViewRequests = new LazyLayoutBeyondBoundsInfo(1);
    public long viewportSize = -1;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Request {
        public final CancellableContinuationImpl continuation;
        public final BringIntoViewResponderNode$bringIntoView$2$1$1 currentBounds;

        public Request(BringIntoViewResponderNode$bringIntoView$2$1$1 bringIntoViewResponderNode$bringIntoView$2$1$1, CancellableContinuationImpl cancellableContinuationImpl) {
            this.currentBounds = bringIntoViewResponderNode$bringIntoView$2$1$1;
            this.continuation = cancellableContinuationImpl;
        }

        public final String toString() {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            CoroutineName coroutineName = (CoroutineName) cancellableContinuationImpl.context.get(CoroutineName.Key);
            String str = coroutineName != null ? coroutineName.name : null;
            StringBuilder sb = new StringBuilder("Request@");
            int hashCode = hashCode();
            CharsKt__CharKt.checkRadix(16);
            String num = Integer.toString(hashCode, 16);
            num.getClass();
            sb.append(num);
            sb.append(str != null ? CameraDevices$CC.m("[", str, "](") : "(");
            sb.append("currentBounds()=");
            sb.append(this.currentBounds.invoke());
            sb.append(", continuation=");
            sb.append(cancellableContinuationImpl);
            sb.append(')');
            return sb.toString();
        }
    }

    public ContentInViewNode(Orientation orientation, ScrollingLogic scrollingLogic, boolean z, ScrollableNode$$ExternalSyntheticLambda0 scrollableNode$$ExternalSyntheticLambda0) {
        this.orientation = orientation;
        this.scrollingLogic = scrollingLogic;
        this.reverseDirection = z;
        this.getFocusedRect = scrollableNode$$ExternalSyntheticLambda0;
    }

    /* renamed from: access$calculateScrollDelta-I_oMVgE, reason: not valid java name */
    public static final float m148access$calculateScrollDeltaI_oMVgE(ContentInViewNode contentInViewNode, BringIntoViewSpec bringIntoViewSpec, long j) {
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
                    long m446getSizeNHjbRc = rect2.m446getSizeNHjbRc();
                    long m1072toSizeozmzZPI = Validate.m1072toSizeozmzZPI(contentInViewNode.m150getViewportSizeOrZeroYbymL2g$foundation());
                    f = 0.0f;
                    int ordinal = contentInViewNode.orientation.ordinal();
                    if (ordinal == 0) {
                        compare = Float.compare(Float.intBitsToFloat((int) (m446getSizeNHjbRc & 4294967295L)), Float.intBitsToFloat((int) (m1072toSizeozmzZPI & 4294967295L)));
                    } else {
                        if (ordinal != 1) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return 0.0f;
                        }
                        compare = Float.compare(Float.intBitsToFloat((int) (m446getSizeNHjbRc >> 32)), Float.intBitsToFloat((int) (m1072toSizeozmzZPI >> 32)));
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
        long m1072toSizeozmzZPI2 = Validate.m1072toSizeozmzZPI(j2);
        int ordinal2 = contentInViewNode.orientation.ordinal();
        if (ordinal2 == 0) {
            float f2 = rect.top;
            return bringIntoViewSpec.calculateScrollDistance(f2 - ((int) (j & 4294967295L)), rect.bottom - f2, Float.intBitsToFloat((int) (m1072toSizeozmzZPI2 & 4294967295L)));
        }
        if (ordinal2 == 1) {
            float f3 = rect.left;
            return bringIntoViewSpec.calculateScrollDistance(f3 - ((int) (j >> 32)), rect.right - f3, Float.intBitsToFloat((int) (m1072toSizeozmzZPI2 >> 32)));
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return f;
    }

    /* renamed from: isMaxVisible--EQwtKw$default, reason: not valid java name */
    public static boolean m149isMaxVisibleEQwtKw$default(ContentInViewNode contentInViewNode, Rect rect, long j, long j2, int i) {
        if ((i & 1) != 0) {
            j = contentInViewNode.m150getViewportSizeOrZeroYbymL2g$foundation();
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = 0;
        }
        long m153relocationOffsetfbGrOKE = contentInViewNode.m153relocationOffsetfbGrOKE(rect, j3, j2);
        return Math.abs(Float.intBitsToFloat((int) (m153relocationOffsetfbGrOKE >> 32))) <= 0.5f && Math.abs(Float.intBitsToFloat((int) (m153relocationOffsetfbGrOKE & 4294967295L))) <= 0.5f;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    /* renamed from: getViewportSizeOrZero-YbymL2g$foundation, reason: not valid java name */
    public final long m150getViewportSizeOrZeroYbymL2g$foundation() {
        long j = this.viewportSize;
        if (IntSize.m768equalsimpl0(j, -1L)) {
            return 0L;
        }
        return j;
    }

    /* renamed from: launchAnimation--gyyYBs, reason: not valid java name */
    public final void m151launchAnimationgyyYBs(long j) {
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = BringIntoViewSpec_androidKt.LocalBringIntoViewSpec;
        BringIntoViewSpec bringIntoViewSpec = (BringIntoViewSpec) HitTestResultKt.currentValueOf(this, dynamicProvidableCompositionLocal);
        if (this.isAnimationRunning) {
            InlineClassHelperKt.throwIllegalStateException("launchAnimation called when previous animation was running");
        }
        UpdatableAnimationState updatableAnimationState = new UpdatableAnimationState(((BringIntoViewSpec) HitTestResultKt.currentValueOf(this, dynamicProvidableCompositionLocal)).getScrollAnimationSpec());
        JobKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new ContentInViewNode$launchAnimation$2(this, updatableAnimationState, bringIntoViewSpec, j, null), 1);
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI, reason: not valid java name */
    public final void mo152onRemeasuredozmzZPI(long j) {
        int compare;
        long m150getViewportSizeOrZeroYbymL2g$foundation = m150getViewportSizeOrZeroYbymL2g$foundation();
        this.viewportSize = j;
        int ordinal = this.orientation.ordinal();
        if (ordinal == 0) {
            compare = Intrinsics.compare((int) (j & 4294967295L), (int) (m150getViewportSizeOrZeroYbymL2g$foundation & 4294967295L));
        } else {
            if (ordinal != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            compare = Intrinsics.compare((int) (j >> 32), (int) (m150getViewportSizeOrZeroYbymL2g$foundation >> 32));
        }
        if (compare >= 0) {
            return;
        }
        long j2 = !this.reverseDirection ? this.orientation == Orientation.Vertical ? (((int) (m150getViewportSizeOrZeroYbymL2g$foundation & 4294967295L)) - ((int) (j & 4294967295L))) & 4294967295L : (((int) (m150getViewportSizeOrZeroYbymL2g$foundation >> 32)) - ((int) (j >> 32))) << 32 : 0L;
        Rect rect = (Rect) this.getFocusedRect.invoke();
        if (rect == null || this.isAnimationRunning || this.trackingFocusedChild || !m149isMaxVisibleEQwtKw$default(this, rect, m150getViewportSizeOrZeroYbymL2g$foundation, 0L, 2) || m149isMaxVisibleEQwtKw$default(this, rect, 0L, j2, 1)) {
            return;
        }
        this.trackingFocusedChild = true;
        m151launchAnimationgyyYBs(j2);
    }

    /* renamed from: relocationOffset-fbGrOKE, reason: not valid java name */
    public final long m153relocationOffsetfbGrOKE(Rect rect, long j, long j2) {
        long m1072toSizeozmzZPI = Validate.m1072toSizeozmzZPI(j);
        int ordinal = this.orientation.ordinal();
        if (ordinal == 0) {
            BringIntoViewSpec bringIntoViewSpec = (BringIntoViewSpec) HitTestResultKt.currentValueOf(this, BringIntoViewSpec_androidKt.LocalBringIntoViewSpec);
            float f = rect.top;
            float calculateScrollDistance = bringIntoViewSpec.calculateScrollDistance(f - ((int) (j2 & 4294967295L)), rect.bottom - f, Float.intBitsToFloat((int) (m1072toSizeozmzZPI & 4294967295L)));
            return (Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(calculateScrollDistance) & 4294967295L);
        }
        if (ordinal != 1) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return 0L;
        }
        BringIntoViewSpec bringIntoViewSpec2 = (BringIntoViewSpec) HitTestResultKt.currentValueOf(this, BringIntoViewSpec_androidKt.LocalBringIntoViewSpec);
        float f2 = rect.left;
        return (Float.floatToRawIntBits(bringIntoViewSpec2.calculateScrollDistance(f2 - ((int) (j2 >> 32)), rect.right - f2, Float.intBitsToFloat((int) (m1072toSizeozmzZPI >> 32)))) << 32) | (Float.floatToRawIntBits(0.0f) & 4294967295L);
    }
}

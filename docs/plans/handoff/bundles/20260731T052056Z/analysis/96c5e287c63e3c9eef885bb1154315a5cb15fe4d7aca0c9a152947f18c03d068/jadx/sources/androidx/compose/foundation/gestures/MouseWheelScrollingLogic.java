package androidx.compose.foundation.gestures;

import android.os.Build;
import android.view.ViewConfiguration;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpKt;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.sequences.SequenceBuilderIterator;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MouseWheelScrollingLogic extends NonTouchScrollingLogic {
    public final BufferedChannel channel;
    public final PopupMenu$1 mouseWheelScrollConfig;
    public StandaloneCoroutine receivingMouseWheelEventsJob;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MouseWheelScrollDelta {
        public final boolean shouldApplyImmediately;
        public final long timeMillis;
        public final long value;

        public MouseWheelScrollDelta(long j, long j2, boolean z) {
            this.value = j;
            this.timeMillis = j2;
            this.shouldApplyImmediately = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MouseWheelScrollDelta)) {
                return false;
            }
            MouseWheelScrollDelta mouseWheelScrollDelta = (MouseWheelScrollDelta) obj;
            return Offset.m383equalsimpl0(this.value, mouseWheelScrollDelta.value) && this.timeMillis == mouseWheelScrollDelta.timeMillis && this.shouldApplyImmediately == mouseWheelScrollDelta.shouldApplyImmediately;
        }

        public final int hashCode() {
            int m = Modifier.CC.m(this.value) * 31;
            long j = this.timeMillis;
            return ((m + ((int) (j ^ (j >>> 32)))) * 31) + (this.shouldApplyImmediately ? 1231 : 1237);
        }

        public final MouseWheelScrollDelta plus(MouseWheelScrollDelta mouseWheelScrollDelta) {
            return new MouseWheelScrollDelta(Offset.m386plusMKHz9U(this.value, mouseWheelScrollDelta.value), Math.max(this.timeMillis, mouseWheelScrollDelta.timeMillis), this.shouldApplyImmediately);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MouseWheelScrollDelta(value=");
            sb.append((Object) Offset.m388toStringimpl(this.value));
            sb.append(", timeMillis=");
            sb.append(this.timeMillis);
            sb.append(", shouldApplyImmediately=");
            return Animation.CC.m(sb, this.shouldApplyImmediately, ')');
        }
    }

    public MouseWheelScrollingLogic(ScrollingLogic scrollingLogic, PopupMenu$1 popupMenu$1, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, Density density) {
        super(scrollingLogic, composableLambdaImpl$invoke$1, density);
        this.mouseWheelScrollConfig = popupMenu$1;
        this.channel = DpKt.Channel$default(Integer.MAX_VALUE, 6, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object dispatchMouseWheelScroll$waitNextScrollDelta(androidx.compose.foundation.gestures.MouseWheelScrollingLogic r13, kotlin.jvm.internal.Ref$ObjectRef r14, kotlin.jvm.internal.Ref$FloatRef r15, androidx.compose.foundation.gestures.ScrollingLogic r16, kotlin.jvm.internal.Ref$ObjectRef r17, long r18, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(androidx.compose.foundation.gestures.MouseWheelScrollingLogic, kotlin.jvm.internal.Ref$ObjectRef, kotlin.jvm.internal.Ref$FloatRef, androidx.compose.foundation.gestures.ScrollingLogic, kotlin.jvm.internal.Ref$ObjectRef, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static MouseWheelScrollDelta sumOrNull(BufferedChannel bufferedChannel) {
        MouseWheelScrollDelta mouseWheelScrollDelta = null;
        SequenceBuilderIterator it = UnsignedKt.iterator(new ForEachGestureKt$awaitEachGesture$2(1, new TrackpadScrollingLogic$$ExternalSyntheticLambda0(bufferedChannel, 1), 0 == true ? 1 : 0));
        while (it.hasNext()) {
            MouseWheelScrollDelta mouseWheelScrollDelta2 = (MouseWheelScrollDelta) it.next();
            if (mouseWheelScrollDelta != null) {
                mouseWheelScrollDelta2 = mouseWheelScrollDelta.plus(mouseWheelScrollDelta2);
            }
            mouseWheelScrollDelta = mouseWheelScrollDelta2;
        }
        return mouseWheelScrollDelta;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0162 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0163 A[PHI: r16
      0x0163: PHI (r16v1 kotlin.Unit) = (r16v0 kotlin.Unit), (r16v2 kotlin.Unit) binds: [B:35:0x00cd, B:28:0x0160] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object dispatchMouseWheelScroll(androidx.compose.foundation.gestures.ScrollingLogic r22, androidx.compose.foundation.gestures.MouseWheelScrollingLogic.MouseWheelScrollDelta r23, float r24, float r25, kotlin.coroutines.jvm.internal.ContinuationImpl r26) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic.dispatchMouseWheelScroll(androidx.compose.foundation.gestures.ScrollingLogic, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta, float, float, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: onMouseWheel-O0kMr_c, reason: not valid java name */
    public final boolean m79onMouseWheelO0kMr_c(PointerEvent pointerEvent) {
        long j;
        Density density = this.density;
        ViewConfiguration viewConfiguration = (ViewConfiguration) this.mouseWheelScrollConfig.this$0;
        int i = Build.VERSION.SDK_INT;
        float f = -(i > 26 ? ViewConfigurationApi26Impl.getVerticalScrollFactor(viewConfiguration) : density.mo87toPx0680j_4(64.0f));
        float f2 = -(i > 26 ? ViewConfigurationApi26Impl.getHorizontalScrollFactor(viewConfiguration) : density.mo87toPx0680j_4(64.0f));
        List list = pointerEvent.changes;
        Offset offset = new Offset(0L);
        int size = list.size();
        boolean z = false;
        int i2 = 0;
        while (true) {
            j = offset.packedValue;
            if (i2 >= size) {
                break;
            }
            offset = new Offset(Offset.m386plusMKHz9U(j, ((PointerInputChange) list.get(i2)).scrollDelta));
            i2++;
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32)) * f2) << 32) | (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L)) * f) & 4294967295L);
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        float m105toSingleAxisDeltaFromAnglek4lQ0M = scrollingLogic.m105toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m102reverseIfNeededMKHz9U(floatToRawIntBits));
        if (m105toSingleAxisDeltaFromAnglek4lQ0M != RecyclerView.DECELERATION_RATE) {
            ScrollableState scrollableState = scrollingLogic.scrollableState;
            z = m105toSingleAxisDeltaFromAnglek4lQ0M > RecyclerView.DECELERATION_RATE ? scrollableState.getCanScrollForward() : scrollableState.getCanScrollBackward();
        }
        if (z) {
            return !(this.channel.mo757trySendJP2dKIU(new MouseWheelScrollDelta(floatToRawIntBits, ((PointerInputChange) CollectionsKt.first(pointerEvent.changes)).uptimeMillis, false)) instanceof ChannelResult.Failed);
        }
        return this.isScrolling;
    }

    public final float dispatchMouseWheelScroll(ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1, float f) {
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        long m104toOffsettuRUvjQ = scrollingLogic.m104toOffsettuRUvjQ(scrollingLogic.reverseIfNeeded(f));
        ScrollingLogic scrollingLogic2 = scrollingLogic$nestedScrollScope$1.this$0;
        return scrollingLogic.m103toFloatk4lQ0M(scrollingLogic.m102reverseIfNeededMKHz9U(scrollingLogic2.m101performScroll3eAAhYA(scrollingLogic2.outerStateScope, m104toOffsettuRUvjQ, 1)));
    }
}

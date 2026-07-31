package androidx.compose.foundation.gestures;

import android.os.Build;
import android.view.ViewConfiguration;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.util.Log;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.sequences.SequenceBuilderIterator;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ProduceKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MouseWheelScrollingLogic extends NonTouchScrollingLogic {
    public final BufferedChannel channel;
    public final PopupMenu$1 mouseWheelScrollConfig;
    public StandaloneCoroutine receivingMouseWheelEventsJob;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            return Offset.m196equalsimpl0(this.value, mouseWheelScrollDelta.value) && this.timeMillis == mouseWheelScrollDelta.timeMillis && this.shouldApplyImmediately == mouseWheelScrollDelta.shouldApplyImmediately;
        }

        public final int hashCode() {
            int m198hashCodeimpl = Offset.m198hashCodeimpl(this.value) * 31;
            long j = this.timeMillis;
            return ((m198hashCodeimpl + ((int) (j ^ (j >>> 32)))) * 31) + (this.shouldApplyImmediately ? 1231 : 1237);
        }

        public final MouseWheelScrollDelta plus(MouseWheelScrollDelta mouseWheelScrollDelta) {
            return new MouseWheelScrollDelta(Offset.m200plusMKHz9U(this.value, mouseWheelScrollDelta.value), Math.max(this.timeMillis, mouseWheelScrollDelta.timeMillis), this.shouldApplyImmediately);
        }

        public final String toString() {
            return "MouseWheelScrollDelta(value=" + ((Object) Offset.m202toStringimpl(this.value)) + ", timeMillis=" + this.timeMillis + ", shouldApplyImmediately=" + this.shouldApplyImmediately + ')';
        }
    }

    public MouseWheelScrollingLogic(ScrollingLogic scrollingLogic, PopupMenu$1 popupMenu$1, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, Density density) {
        super(scrollingLogic, composableLambdaImpl$invoke$1, density);
        this.mouseWheelScrollConfig = popupMenu$1;
        this.channel = ProduceKt.Channel$default(Log.LOG_LEVEL_OFF, 6, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x016f A[PHI: r12
      0x016f: PHI (r12v6 java.lang.Object) = (r12v4 java.lang.Object), (r12v7 java.lang.Object) binds: [B:38:0x0105, B:28:0x016d] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0170 A[PHI: r16
      0x0170: PHI (r16v1 kotlin.Unit) = (r16v0 kotlin.Unit), (r16v2 kotlin.Unit) binds: [B:36:0x00db, B:28:0x016d] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$dispatchMouseWheelScroll(androidx.compose.foundation.gestures.MouseWheelScrollingLogic r19, androidx.compose.foundation.gestures.ScrollingLogic r20, androidx.compose.foundation.gestures.MouseWheelScrollingLogic.MouseWheelScrollDelta r21, float r22, float r23, kotlin.coroutines.jvm.internal.ContinuationImpl r24) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic.access$dispatchMouseWheelScroll(androidx.compose.foundation.gestures.MouseWheelScrollingLogic, androidx.compose.foundation.gestures.ScrollingLogic, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta, float, float, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$dispatchMouseWheelScroll$waitNextScrollDelta(androidx.compose.foundation.gestures.MouseWheelScrollingLogic r11, kotlin.jvm.internal.Ref$ObjectRef r12, kotlin.jvm.internal.Ref$FloatRef r13, androidx.compose.foundation.gestures.ScrollingLogic r14, kotlin.jvm.internal.Ref$ObjectRef r15, long r16, kotlin.coroutines.jvm.internal.ContinuationImpl r18) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic.access$dispatchMouseWheelScroll$waitNextScrollDelta(androidx.compose.foundation.gestures.MouseWheelScrollingLogic, kotlin.jvm.internal.Ref$ObjectRef, kotlin.jvm.internal.Ref$FloatRef, androidx.compose.foundation.gestures.ScrollingLogic, kotlin.jvm.internal.Ref$ObjectRef, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static MouseWheelScrollDelta sumOrNull(BufferedChannel bufferedChannel) {
        MouseWheelScrollDelta mouseWheelScrollDelta = null;
        SequenceBuilderIterator it = SQLite.iterator(new NonTouchScrollingLogicKt$untilNull$1(new TrackpadScrollingLogic$$ExternalSyntheticLambda0(bufferedChannel, 1), null));
        while (it.hasNext()) {
            MouseWheelScrollDelta mouseWheelScrollDelta2 = (MouseWheelScrollDelta) it.next();
            if (mouseWheelScrollDelta != null) {
                mouseWheelScrollDelta2 = mouseWheelScrollDelta.plus(mouseWheelScrollDelta2);
            }
            mouseWheelScrollDelta = mouseWheelScrollDelta2;
        }
        return mouseWheelScrollDelta;
    }

    public final float dispatchMouseWheelScroll(ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1, float f) {
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        long m75toOffsettuRUvjQ = scrollingLogic.m75toOffsettuRUvjQ(scrollingLogic.reverseIfNeeded(f));
        ScrollingLogic scrollingLogic2 = scrollingLogic$nestedScrollScope$1.this$0;
        return scrollingLogic.m74toFloatk4lQ0M(scrollingLogic.m73reverseIfNeededMKHz9U(scrollingLogic2.m72performScroll3eAAhYA(scrollingLogic2.outerStateScope, m75toOffsettuRUvjQ, 1)));
    }

    /* renamed from: onMouseWheel-O0kMr_c, reason: not valid java name */
    public final boolean m52onMouseWheelO0kMr_c(PointerEvent pointerEvent) {
        long j;
        Density density = this.density;
        ViewConfiguration viewConfiguration = (ViewConfiguration) this.mouseWheelScrollConfig.this$0;
        int i = Build.VERSION.SDK_INT;
        float f = -(i > 26 ? ViewConfigurationApi26Impl.getVerticalScrollFactor(viewConfiguration) : density.mo63toPx0680j_4(64.0f));
        float f2 = -(i > 26 ? ViewConfigurationApi26Impl.getHorizontalScrollFactor(viewConfiguration) : density.mo63toPx0680j_4(64.0f));
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
            offset = new Offset(Offset.m200plusMKHz9U(j, ((PointerInputChange) list.get(i2)).scrollDelta));
            i2++;
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32)) * f2) << 32) | (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L)) * f) & 4294967295L);
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        float m76toSingleAxisDeltaFromAnglek4lQ0M = scrollingLogic.m76toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m73reverseIfNeededMKHz9U(floatToRawIntBits));
        if (m76toSingleAxisDeltaFromAnglek4lQ0M != 0.0f) {
            ScrollableState scrollableState = scrollingLogic.scrollableState;
            z = m76toSingleAxisDeltaFromAnglek4lQ0M > 0.0f ? scrollableState.getCanScrollForward() : scrollableState.getCanScrollBackward();
        }
        if (z) {
            return !(this.channel.mo691trySendJP2dKIU(new MouseWheelScrollDelta(floatToRawIntBits, ((PointerInputChange) CollectionsKt.first(pointerEvent.changes)).uptimeMillis, false)) instanceof ChannelResult.Failed);
        }
        return this.isScrolling;
    }
}

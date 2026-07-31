package androidx.compose.foundation.gestures;

import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.util.Log;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.sequences.SequenceBuilderIterator;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ProduceKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TrackpadScrollingLogic extends NonTouchScrollingLogic {
    public final BufferedChannel channel;
    public StandaloneCoroutine receivingPanEventsJob;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TrackpadScrollDelta {
        public final boolean isEnd;
        public final long timeMillis;
        public final long value;

        public TrackpadScrollDelta(long j, long j2, boolean z) {
            this.value = j;
            this.timeMillis = j2;
            this.isEnd = z;
        }

        public final TrackpadScrollDelta plus(TrackpadScrollDelta trackpadScrollDelta) {
            return new TrackpadScrollDelta(Offset.m200plusMKHz9U(this.value, trackpadScrollDelta.value), Math.max(this.timeMillis, trackpadScrollDelta.timeMillis), this.isEnd || trackpadScrollDelta.isEnd);
        }
    }

    public TrackpadScrollingLogic(ScrollingLogic scrollingLogic, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, Density density) {
        super(scrollingLogic, composableLambdaImpl$invoke$1, density);
        this.channel = ProduceKt.Channel$default(Log.LOG_LEVEL_OFF, 6, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00dc, code lost:
    
        if (r0.invoke(r3, r4) != r9) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00de, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b5, code lost:
    
        if (r18.userScroll$foundation(r1, r4) == r9) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$dispatchTrackpadScroll(androidx.compose.foundation.gestures.TrackpadScrollingLogic r18, androidx.compose.foundation.gestures.ScrollingLogic r19, androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$dispatchTrackpadScroll(androidx.compose.foundation.gestures.TrackpadScrollingLogic, androidx.compose.foundation.gestures.ScrollingLogic, androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static TrackpadScrollDelta sumOrNull(BufferedChannel bufferedChannel) {
        TrackpadScrollDelta trackpadScrollDelta = null;
        SequenceBuilderIterator it = SQLite.iterator(new NonTouchScrollingLogicKt$untilNull$1(new TrackpadScrollingLogic$$ExternalSyntheticLambda0(bufferedChannel, 0), null));
        while (it.hasNext()) {
            TrackpadScrollDelta trackpadScrollDelta2 = (TrackpadScrollDelta) it.next();
            if (trackpadScrollDelta != null) {
                trackpadScrollDelta2 = trackpadScrollDelta.plus(trackpadScrollDelta2);
            }
            trackpadScrollDelta = trackpadScrollDelta2;
        }
        return trackpadScrollDelta;
    }

    public final boolean onPan(PointerEvent pointerEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        BufferedChannel bufferedChannel;
        ScrollingLogic scrollingLogic;
        PointerInputChange pointerInputChange = (PointerInputChange) CollectionsKt.firstOrNull(pointerEvent.changes);
        if (pointerInputChange != null) {
            List list = pointerInputChange._historical;
            if (list == null) {
                list = EmptyList.INSTANCE;
            }
            int size = list.size();
            int i = 0;
            z3 = false;
            while (true) {
                bufferedChannel = this.channel;
                scrollingLogic = this.scrollingLogic;
                if (i >= size) {
                    break;
                }
                HistoricalChange historicalChange = (HistoricalChange) list.get(i);
                long j = historicalChange.panOffset ^ (-9223372034707292160L);
                if (!(scrollingLogic.m76toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m73reverseIfNeededMKHz9U(j)) == 0.0f)) {
                    z3 = !(bufferedChannel.mo691trySendJP2dKIU(new TrackpadScrollDelta(j, historicalChange.uptimeMillis, false)) instanceof ChannelResult.Failed) || z3;
                }
                i++;
            }
            z = true;
            z2 = false;
            long j2 = pointerInputChange.panOffset ^ (-9223372034707292160L);
            boolean z4 = pointerEvent.type == 12;
            if (!(scrollingLogic.m76toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m73reverseIfNeededMKHz9U(j2)) == 0.0f) || z4) {
                if (!(bufferedChannel.mo691trySendJP2dKIU(new TrackpadScrollDelta(j2, pointerInputChange.uptimeMillis, z4)) instanceof ChannelResult.Failed) || z3) {
                    z3 = true;
                }
            }
            return (!z3 || this.isScrolling) ? z : z2;
        }
        z = true;
        z2 = false;
        z3 = z2;
        if (z3) {
        }
    }
}

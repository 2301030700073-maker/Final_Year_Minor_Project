package androidx.compose.foundation.gestures;

import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.sequences.SequenceBuilderIterator;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;
import okhttp3.Cookie;
import okio.internal.FileSystem$commonDeleteRecursively$sequence$1;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TrackpadScrollingLogic extends NonTouchScrollingLogic {
    public final BufferedChannel channel;
    public StandaloneCoroutine receivingPanEventsJob;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            return new TrackpadScrollDelta(Offset.m441plusMKHz9U(this.value, trackpadScrollDelta.value), Math.max(this.timeMillis, trackpadScrollDelta.timeMillis), this.isEnd || trackpadScrollDelta.isEnd);
        }
    }

    public TrackpadScrollingLogic(ScrollingLogic scrollingLogic, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, Density density) {
        super(scrollingLogic, composableLambdaImpl$invoke$1, density);
        this.channel = Cookie.Companion.Channel$default(Integer.MAX_VALUE, null, null, 6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00dd, code lost:
    
        if (r0.invoke(r3, r7) != r10) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00df, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b6, code lost:
    
        if (r16.userScroll$foundation(r0, r7) == r10) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$dispatchTrackpadScroll(androidx.compose.foundation.gestures.TrackpadScrollingLogic r16, androidx.compose.foundation.gestures.ScrollingLogic r17, androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TrackpadScrollingLogic.access$dispatchTrackpadScroll(androidx.compose.foundation.gestures.TrackpadScrollingLogic, androidx.compose.foundation.gestures.ScrollingLogic, androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static TrackpadScrollDelta sumOrNull(BufferedChannel bufferedChannel) {
        TrackpadScrollDelta trackpadScrollDelta = null;
        SequenceBuilderIterator it = Base64.iterator(new FileSystem$commonDeleteRecursively$sequence$1(new TrackpadScrollingLogic$$ExternalSyntheticLambda0(bufferedChannel, 0), 0 == true ? 1 : 0, 2));
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
                if (!(scrollingLogic.m195toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m192reverseIfNeededMKHz9U(j)) == 0.0f)) {
                    z3 = !(bufferedChannel.mo1016trySendJP2dKIU(new TrackpadScrollDelta(j, historicalChange.uptimeMillis, false)) instanceof ChannelResult.Failed) || z3;
                }
                i++;
            }
            z = true;
            z2 = false;
            long j2 = pointerInputChange.panOffset ^ (-9223372034707292160L);
            boolean z4 = pointerEvent.type == 12;
            if (!(scrollingLogic.m195toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m192reverseIfNeededMKHz9U(j2)) == 0.0f) || z4) {
                if (!(bufferedChannel.mo1016trySendJP2dKIU(new TrackpadScrollDelta(j2, pointerInputChange.uptimeMillis, z4)) instanceof ChannelResult.Failed) || z3) {
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

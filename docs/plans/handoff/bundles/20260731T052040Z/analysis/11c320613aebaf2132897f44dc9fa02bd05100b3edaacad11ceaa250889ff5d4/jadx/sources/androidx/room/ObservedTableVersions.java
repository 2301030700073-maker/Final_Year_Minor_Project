package androidx.room;

import com.google.common.base.Joiner;
import java.util.Set;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservedTableVersions {
    public final StateFlowImpl versions;

    public ObservedTableVersions(int i) {
        this.versions = FlowKt.MutableStateFlow(new int[i]);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void collect(androidx.room.TriggerBasedInvalidationTracker$createFlow$1.AnonymousClass2 r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof androidx.room.ObservedTableVersions$collect$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.room.ObservedTableVersions$collect$1 r0 = (androidx.room.ObservedTableVersions$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.ObservedTableVersions$collect$1 r0 = new androidx.room.ObservedTableVersions$collect$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 == r2) goto L27
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return
        L27:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0.m322m()
            return
        L2e:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.label = r2
            kotlinx.coroutines.flow.StateFlowImpl r4 = r4.versions
            r4.collect(r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.ObservedTableVersions.collect(androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2, kotlin.coroutines.jvm.internal.ContinuationImpl):void");
    }

    public final void increment(Set set) {
        StateFlowImpl stateFlowImpl;
        Object value;
        int[] iArr;
        set.getClass();
        if (set.isEmpty()) {
            return;
        }
        do {
            stateFlowImpl = this.versions;
            value = stateFlowImpl.getValue();
            int[] iArr2 = (int[]) value;
            int length = iArr2.length;
            iArr = new int[length];
            for (int i = 0; i < length; i++) {
                iArr[i] = set.contains(Integer.valueOf(i)) ? iArr2[i] + 1 : iArr2[i];
            }
            Joiner joiner = ChannelFlowKt.NULL;
            if (value == null) {
                value = joiner;
            }
        } while (!stateFlowImpl.updateState(value, iArr));
    }
}

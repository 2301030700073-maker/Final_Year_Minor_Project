package androidx.room;

import androidx.datastore.core.State;
import androidx.datastore.core.UnInitialized;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ObservedTableVersions {
    public final StateFlowImpl versions;

    public ObservedTableVersions() {
        this.versions = FlowKt.MutableStateFlow(UnInitialized.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void collect(androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2 r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
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
            if (r1 == 0) goto L2c
            if (r1 == r2) goto L27
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return
        L27:
            org.jsoup.SerializationException r4 = androidx.camera.core.impl.Config.CC.m92m(r6)
            throw r4
        L2c:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.label = r2
            kotlinx.coroutines.flow.StateFlowImpl r4 = r4.versions
            r4.collect(r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.ObservedTableVersions.collect(androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2, kotlin.coroutines.jvm.internal.ContinuationImpl):void");
    }

    public State getCurrentState() {
        return (State) this.versions.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        if (r6.version > ((androidx.datastore.core.Data) r2).version) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void tryUpdate(androidx.datastore.core.State r6) {
        /*
            r5 = this;
            r6.getClass()
        L3:
            kotlinx.coroutines.flow.StateFlowImpl r0 = r5.versions
            java.lang.Object r1 = r0.getValue()
            r2 = r1
            androidx.datastore.core.State r2 = (androidx.datastore.core.State) r2
            boolean r3 = r2 instanceof androidx.datastore.core.ReadException
            if (r3 != 0) goto L3a
            androidx.datastore.core.UnInitialized r3 = androidx.datastore.core.UnInitialized.INSTANCE
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r3 == 0) goto L19
            goto L3a
        L19:
            boolean r3 = r2 instanceof androidx.datastore.core.Data
            if (r3 == 0) goto L27
            int r3 = r6.version
            r4 = r2
            androidx.datastore.core.Data r4 = (androidx.datastore.core.Data) r4
            int r4 = r4.version
            if (r3 <= r4) goto L3b
            goto L3a
        L27:
            boolean r3 = r2 instanceof androidx.datastore.core.Final
            if (r3 == 0) goto L2c
            goto L3b
        L2c:
            boolean r5 = r2 instanceof androidx.datastore.core.NoValueDataState
            if (r5 == 0) goto L36
            java.lang.String r5 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return
        L36:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
            return
        L3a:
            r2 = r6
        L3b:
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.ObservedTableVersions.tryUpdate(androidx.datastore.core.State):void");
    }

    public ObservedTableVersions(int i) {
        this.versions = FlowKt.MutableStateFlow(new int[i]);
    }
}

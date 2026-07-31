package androidx.compose.animation.core;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutableTransitionState extends DnsQueryResult {
    public final ParcelableSnapshotMutableState currentState$delegate;
    public final ParcelableSnapshotMutableState targetState$delegate;

    public MutableTransitionState(Object obj) {
        super(1);
        this.currentState$delegate = Updater.mutableStateOf$default(obj);
        this.targetState$delegate = Updater.mutableStateOf$default(obj);
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final Object getCurrentState() {
        return this.currentState$delegate.getValue();
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final Object getTargetState() {
        return this.targetState$delegate.getValue();
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void setCurrentState$animation_core(Object obj) {
        this.currentState$delegate.setValue(obj);
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void transitionRemoved$animation_core() {
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void transitionConfigured$animation_core(Transition transition) {
    }
}

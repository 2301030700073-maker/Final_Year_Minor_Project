package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1;
import androidx.appcompat.view.menu.BaseMenuWrapper;
import androidx.compose.ui.unit.DpKt;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.fragment.app.FragmentManager$1;
import androidx.paging.CachedPagingDataKt$cachedIn$4;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposePredictiveBackHandler extends BaseMenuWrapper {
    public BufferedChannel activeChannel;
    public StandaloneCoroutine activeJob;
    public Function2 currentOnBack;
    public boolean isPredictiveBack;
    public final CoroutineScope scope;

    public ComposePredictiveBackHandler(CoroutineScope coroutineScope, PredictiveBackHandlerInfo predictiveBackHandlerInfo) {
        super(predictiveBackHandlerInfo);
        this.scope = coroutineScope;
        this.currentOnBack = new CachedPagingDataKt$cachedIn$4(2, 1, null);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void onBackCancelled() {
        BufferedChannel bufferedChannel = this.activeChannel;
        if (bufferedChannel != null) {
            bufferedChannel.closeOrCancelImpl(new CancellationException("onBack cancelled"), true);
        }
        StandaloneCoroutine standaloneCoroutine = this.activeJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        this.activeChannel = null;
        this.activeJob = null;
        this.isPredictiveBack = false;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void onBackCompleted() {
        if (this.activeChannel != null && !this.isPredictiveBack) {
            onBackCancelled();
        }
        Continuation continuation = null;
        if (this.activeChannel == null) {
            this.isPredictiveBack = false;
            this.activeChannel = DpKt.Channel$default(-2, 4, BufferOverflow.SUSPEND);
            this.activeJob = AwaitKt.launch$default(this.scope, null, null, new SimpleActor$offer$2(1, this, continuation), 3);
        }
        BufferedChannel bufferedChannel = this.activeChannel;
        if (bufferedChannel != null) {
            bufferedChannel.close(null);
        }
        this.isPredictiveBack = false;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void onBackProgressed(BackEventCompat backEventCompat) {
        BufferedChannel bufferedChannel = this.activeChannel;
        if (bufferedChannel != null) {
            bufferedChannel.mo757trySendJP2dKIU(backEventCompat);
        }
    }

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void onBackStarted() {
        onBackCancelled();
        if (super.isBackEnabled()) {
            this.isPredictiveBack = true;
            this.activeChannel = DpKt.Channel$default(-2, 4, BufferOverflow.SUSPEND);
            this.activeJob = AwaitKt.launch$default(this.scope, null, null, new SimpleActor$offer$2(1, this, null), 3);
        }
    }

    public final void setBackEnabled(boolean z) {
        StandaloneCoroutine standaloneCoroutine;
        if (!z && super.isBackEnabled() && (standaloneCoroutine = this.activeJob) != null && !standaloneCoroutine.isActive()) {
            onBackCancelled();
        }
        ((FragmentManager$1) this.mContext).setEnabled(z);
        ((BackHandlerCompat$navigationEventHandler$1) this.mMenuItems).setBackEnabled(z);
    }
}

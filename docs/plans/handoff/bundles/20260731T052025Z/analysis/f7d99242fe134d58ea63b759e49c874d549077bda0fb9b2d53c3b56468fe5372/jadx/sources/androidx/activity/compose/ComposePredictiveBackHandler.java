package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import com.fsck.k9.Core$restoreNotifications$1;
import com.fsck.k9.activity.MessageCompose;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import net.openid.appauth.JsonUtil$Field;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposePredictiveBackHandler extends JsonUtil$Field {
    public BufferedChannel activeChannel;
    public StandaloneCoroutine activeJob;
    public Function2 currentOnBack;
    public boolean isPredictiveBack;
    public final CoroutineScope scope;

    public ComposePredictiveBackHandler(CoroutineScope coroutineScope, PredictiveBackHandlerInfo predictiveBackHandlerInfo) {
        super(predictiveBackHandlerInfo);
        this.scope = coroutineScope;
        this.currentOnBack = new Core$restoreNotifications$1(2, null, 1);
    }

    @Override // net.openid.appauth.JsonUtil$Field
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

    @Override // net.openid.appauth.JsonUtil$Field
    public final void onBackCompleted() {
        if (this.activeChannel != null && !this.isPredictiveBack) {
            onBackCancelled();
        }
        Continuation continuation = null;
        if (this.activeChannel == null) {
            this.isPredictiveBack = false;
            this.activeChannel = Cookie.Companion.Channel$default(-2, BufferOverflow.SUSPEND, null, 4);
            this.activeJob = JobKt.launch$default(this.scope, null, null, new RippleNode$onAttach$1(this, continuation, 1), 3);
        }
        BufferedChannel bufferedChannel = this.activeChannel;
        if (bufferedChannel != null) {
            bufferedChannel.close(null);
        }
        this.isPredictiveBack = false;
    }

    @Override // net.openid.appauth.JsonUtil$Field
    public final void onBackProgressed(BackEventCompat backEventCompat) {
        BufferedChannel bufferedChannel = this.activeChannel;
        if (bufferedChannel != null) {
            bufferedChannel.mo1016trySendJP2dKIU(backEventCompat);
        }
    }

    @Override // net.openid.appauth.JsonUtil$Field
    public final void onBackStarted() {
        onBackCancelled();
        if (super.isBackEnabled()) {
            this.isPredictiveBack = true;
            this.activeChannel = Cookie.Companion.Channel$default(-2, BufferOverflow.SUSPEND, null, 4);
            this.activeJob = JobKt.launch$default(this.scope, null, null, new RippleNode$onAttach$1(this, (Continuation) null, 1), 3);
        }
    }

    public final void setBackEnabled(boolean z) {
        StandaloneCoroutine standaloneCoroutine;
        if (!z && super.isBackEnabled() && (standaloneCoroutine = this.activeJob) != null && !standaloneCoroutine.isActive()) {
            onBackCancelled();
        }
        ((MessageCompose.AnonymousClass3) this.key).setEnabled(z);
        ((BackHandlerCompat$navigationEventHandler$1) this.defaultValue).setBackEnabled(z);
    }
}

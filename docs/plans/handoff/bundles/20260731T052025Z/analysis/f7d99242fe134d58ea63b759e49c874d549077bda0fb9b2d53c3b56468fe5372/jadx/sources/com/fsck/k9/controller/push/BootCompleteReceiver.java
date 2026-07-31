package com.fsck.k9.controller.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.fsck.k9.K9$special$$inlined$inject$default$1;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.legacy.Log;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BootCompleteReceiver extends BroadcastReceiver implements KoinComponent {
    public final Lazy pushController$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new K9$special$$inlined$inject$default$1(this, 17));

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        Log.v("BootCompleteReceiver.onReceive() - %s", intent != null ? intent.getAction() : null);
        ((PushController) this.pushController$delegate.getValue()).init();
    }
}

package com.fsck.k9.ui.base.locale;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.BlockRunner$cancel$1;
import com.fsck.k9.K9$special$$inlined$inject$default$1;
import com.fsck.k9.ui.base.AppLanguageManager;
import com.fsck.k9.ui.base.AppLanguageManager$$ExternalSyntheticLambda0;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;
import kotlinx.io.Sink$CC;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocaleBroadcastReceiver extends BroadcastReceiver implements KoinComponent {
    public final Lazy systemLocaleManager$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new K9$special$$inlined$inject$default$1(this, 20));

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        context.getClass();
        Continuation continuation = null;
        if (Intrinsics.areEqual(intent != null ? intent.getAction() : null, "android.intent.action.LOCALE_CHANGED")) {
            Iterator it = ((SystemLocaleManager) this.systemLocaleManager$delegate.getValue()).listeners.iterator();
            it.getClass();
            while (it.hasNext()) {
                AppLanguageManager appLanguageManager = ((AppLanguageManager$$ExternalSyntheticLambda0) it.next()).f$0;
                JobKt.launch$default(appLanguageManager.coroutineScope, null, null, new BlockRunner$cancel$1(appLanguageManager, continuation, 15), 3);
            }
        }
    }
}

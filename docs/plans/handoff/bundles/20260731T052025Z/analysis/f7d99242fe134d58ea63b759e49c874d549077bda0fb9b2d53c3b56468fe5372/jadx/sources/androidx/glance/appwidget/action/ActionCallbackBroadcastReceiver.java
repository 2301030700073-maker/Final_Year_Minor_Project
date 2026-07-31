package androidx.glance.appwidget.action;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import kotlin.coroutines.Continuation;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ActionCallbackBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        BlockRunner$maybeRun$1 blockRunner$maybeRun$1 = new BlockRunner$maybeRun$1(intent, context, null, 11);
        ContextScope CoroutineScope = JobKt.CoroutineScope(UuidKt.plus(JobKt.SupervisorJob$default(), Dispatchers.Default));
        JobKt.launch$default(CoroutineScope, null, null, new NavHostKt$NavHost$29$1(blockRunner$maybeRun$1, CoroutineScope, goAsync(), (Continuation) null, 12), 3);
    }
}

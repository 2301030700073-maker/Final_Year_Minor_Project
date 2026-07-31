package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.text.input.TextInputService;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidPlatformTextInputSession implements CoroutineScope {
    public final CoroutineScope coroutineScope;
    public final AtomicReference methodSessionMutex = new AtomicReference(null);
    public final TextInputService textInputService;
    public final View view;

    public AndroidPlatformTextInputSession(View view, TextInputService textInputService, CoroutineScope coroutineScope) {
        this.view = view;
        this.textInputService = textInputService;
        this.coroutineScope = coroutineScope;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.coroutineScope.getCoroutineContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.coroutines.intrinsics.CoroutineSingletons startInputMethod(androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$1 r0 = (androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$1 r0 = new androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 == r4) goto L2a
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            return r3
        L2a:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L50
        L2e:
            kotlin.ResultKt.throwOnFailure(r12)
            androidx.datastore.core.SimpleActor$1 r5 = new androidx.datastore.core.SimpleActor$1
            r12 = 5
            r5.<init>(r12, r11, r10)
            androidx.datastore.core.SimpleActor$offer$2 r7 = new androidx.datastore.core.SimpleActor$offer$2
            r11 = 23
            r8 = 0
            r7.<init>(r11, r10, r8)
            r0.label = r4
            androidx.paging.FlowExtKt$simpleScan$1 r4 = new androidx.paging.FlowExtKt$simpleScan$1
            r9 = 6
            java.util.concurrent.atomic.AtomicReference r6 = r10.methodSessionMutex
            r4.<init>(r5, r6, r7, r8, r9)
            java.lang.Object r10 = kotlinx.coroutines.AwaitKt.coroutineScope(r4, r0)
            if (r10 != r1) goto L50
            return r1
        L50:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidPlatformTextInputSession.startInputMethod(androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest, kotlin.coroutines.jvm.internal.ContinuationImpl):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }
}

package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.text.input.TextInputService;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startInputMethod(androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.compose.ui.platform.AndroidPlatformTextInputSession$startInputMethod$1
            if (r0 == 0) goto L13
            r0 = r9
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
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2b
            if (r1 == r2) goto L27
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return
        L27:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L51
        L2b:
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r2
            androidx.compose.ui.ZIndexNode$measure$1 r2 = new androidx.compose.ui.ZIndexNode$measure$1
            r1 = 5
            r2.<init>(r1, r8, r7)
            androidx.compose.material.ripple.RippleNode$onAttach$1 r4 = new androidx.compose.material.ripple.RippleNode$onAttach$1
            r8 = 29
            r5 = 0
            r4.<init>(r7, r5, r8)
            r0.label = r9
            androidx.navigation.compose.NavHostKt$NavHost$29$1 r1 = new androidx.navigation.compose.NavHostKt$NavHost$29$1
            r6 = 9
            java.util.concurrent.atomic.AtomicReference r3 = r7.methodSessionMutex
            r1.<init>(r2, r3, r4, r5, r6)
            java.lang.Object r7 = kotlinx.coroutines.JobKt.coroutineScope(r1, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r8) goto L51
            return
        L51:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidPlatformTextInputSession.startInputMethod(androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest, kotlin.coroutines.jvm.internal.ContinuationImpl):void");
    }
}

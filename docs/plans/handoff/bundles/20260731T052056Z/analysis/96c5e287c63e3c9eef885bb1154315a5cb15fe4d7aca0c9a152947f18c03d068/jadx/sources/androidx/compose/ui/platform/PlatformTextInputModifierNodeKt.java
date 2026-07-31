package androidx.compose.ui.platform;

import androidx.compose.runtime.StaticProvidableCompositionLocal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PlatformTextInputModifierNodeKt {
    public static final StaticProvidableCompositionLocal LocalChainedPlatformTextInputInterceptor = new StaticProvidableCompositionLocal(0, InspectionModeKt$LocalInspectionMode$1.INSTANCE$1);

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.coroutines.intrinsics.CoroutineSingletons establishTextInputSession(androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode r5, androidx.paging.FlowExtKt$simpleScan$1 r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$establishTextInputSession$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$establishTextInputSession$1 r0 = (androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$establishTextInputSession$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$establishTextInputSession$1 r0 = new androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$establishTextInputSession$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 == r4) goto L2a
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2a:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L57
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.compose.ui.Modifier$Node r7 = r5.node
            boolean r7 = r7.isAttached
            if (r7 == 0) goto L5f
            androidx.compose.ui.node.Owner r7 = androidx.compose.ui.node.HitTestResultKt.requireOwner(r5)
            androidx.compose.ui.node.LayoutNode r5 = androidx.compose.ui.node.HitTestResultKt.requireLayoutNode(r5)
            androidx.compose.runtime.CompositionLocalMap r5 = r5.compositionLocalMap
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r5 = (androidx.compose.runtime.internal.PersistentCompositionLocalHashMap) r5
            r5.getClass()
            androidx.compose.runtime.StaticProvidableCompositionLocal r2 = androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.LocalChainedPlatformTextInputInterceptor
            java.lang.Object r5 = androidx.compose.runtime.Updater.read(r5, r2)
            if (r5 != 0) goto L5b
            r0.label = r4
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = interceptedTextInputSession(r7, r6, r0)
            if (r5 != r1) goto L57
            return r1
        L57:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        L5b:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m$1()
            return r3
        L5f:
            java.lang.String r5 = "establishTextInputSession called from an unattached node"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r5)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.establishTextInputSession(androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode, androidx.paging.FlowExtKt$simpleScan$1, kotlin.coroutines.jvm.internal.ContinuationImpl):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.coroutines.intrinsics.CoroutineSingletons interceptedTextInputSession(androidx.compose.ui.node.Owner r5, kotlin.jvm.functions.Function2 r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1 r0 = (androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1 r0 = new androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            r5 = 2
            if (r2 == r5) goto L2d
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2d:
            kotlin.ResultKt.throwOnFailure(r7)
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        L34:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L46
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.label = r4
            androidx.compose.ui.platform.AndroidComposeView r5 = (androidx.compose.ui.platform.AndroidComposeView) r5
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = r5.textInputSession(r6, r0)
            if (r5 != r1) goto L46
            return r1
        L46:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.interceptedTextInputSession(androidx.compose.ui.node.Owner, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }
}

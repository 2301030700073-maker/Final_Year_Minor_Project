package androidx.compose.ui.platform;

import androidx.compose.runtime.StaticProvidableCompositionLocal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PlatformTextInputModifierNodeKt {
    public static final StaticProvidableCompositionLocal LocalChainedPlatformTextInputInterceptor = new StaticProvidableCompositionLocal(InspectionModeKt$LocalInspectionMode$1.INSTANCE$1);

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void establishTextInputSession(androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode r4, androidx.navigation.compose.NavHostKt$NavHost$29$1 r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$establishTextInputSession$1
            if (r0 == 0) goto L13
            r0 = r6
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
            r0.<init>(r6)
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
            androidx.compose.ui.Modifier$Node r6 = r4.node
            boolean r6 = r6.isAttached
            if (r6 == 0) goto L56
            androidx.compose.ui.node.Owner r6 = androidx.compose.ui.node.HitTestResultKt.requireOwner(r4)
            androidx.compose.ui.node.LayoutNode r4 = androidx.compose.ui.node.HitTestResultKt.requireLayoutNode(r4)
            androidx.compose.runtime.CompositionLocalMap r4 = r4.compositionLocalMap
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r4 = (androidx.compose.runtime.internal.PersistentCompositionLocalHashMap) r4
            r4.getClass()
            androidx.compose.runtime.StaticProvidableCompositionLocal r1 = androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.LocalChainedPlatformTextInputInterceptor
            java.lang.Object r4 = androidx.compose.runtime.Updater.read(r4, r1)
            if (r4 != 0) goto L52
            r0.label = r2
            interceptedTextInputSession(r6, r5, r0)
            return
        L52:
            androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0.m()
            return
        L56:
            java.lang.String r4 = "establishTextInputSession called from an unattached node"
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.establishTextInputSession(androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode, androidx.navigation.compose.NavHostKt$NavHost$29$1, kotlin.coroutines.jvm.internal.ContinuationImpl):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void interceptedTextInputSession(androidx.compose.ui.node.Owner r4, kotlin.jvm.functions.Function2 r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1
            if (r0 == 0) goto L13
            r0 = r6
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
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L34
            if (r1 == r2) goto L2f
            r4 = 2
            if (r1 == r4) goto L2a
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return
        L2a:
            org.jsoup.SerializationException r4 = androidx.camera.core.impl.Config.CC.m92m(r6)
            throw r4
        L2f:
            org.jsoup.SerializationException r4 = androidx.camera.core.impl.Config.CC.m92m(r6)
            throw r4
        L34:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.label = r2
            androidx.compose.ui.platform.AndroidComposeView r4 = (androidx.compose.ui.platform.AndroidComposeView) r4
            r4.textInputSession(r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.interceptedTextInputSession(androidx.compose.ui.node.Owner, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):void");
    }
}

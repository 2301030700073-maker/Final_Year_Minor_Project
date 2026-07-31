package org.jetbrains.compose.resources;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class StringResourcesKt {
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$loadString(org.jetbrains.compose.resources.StringResource r4, java.util.List r5, org.jetbrains.compose.resources.ResourceReader r6, org.jetbrains.compose.resources.ResourceEnvironment r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof org.jetbrains.compose.resources.StringResourcesKt$loadString$2
            if (r0 == 0) goto L13
            r0 = r8
            org.jetbrains.compose.resources.StringResourcesKt$loadString$2 r0 = (org.jetbrains.compose.resources.StringResourcesKt$loadString$2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.jetbrains.compose.resources.StringResourcesKt$loadString$2 r0 = new org.jetbrains.compose.resources.StringResourcesKt$loadString$2
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L3d
            if (r1 != r2) goto L37
            java.lang.Object r4 = r0.L$3
            org.jetbrains.compose.resources.ResourceEnvironment r4 = (org.jetbrains.compose.resources.ResourceEnvironment) r4
            java.lang.Object r4 = r0.L$2
            org.jetbrains.compose.resources.ResourceReader r4 = (org.jetbrains.compose.resources.ResourceReader) r4
            java.lang.Object r4 = r0.L$1
            r5 = r4
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r4 = r0.L$0
            org.jetbrains.compose.resources.StringResource r4 = (org.jetbrains.compose.resources.StringResource) r4
            kotlin.ResultKt.throwOnFailure(r8)
            goto L53
        L37:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r3
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r3
            r0.L$1 = r5
            r0.L$2 = r3
            r0.L$3 = r3
            r0.label = r2
            java.lang.Object r8 = loadString(r4, r6, r7, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r4) goto L53
            return r4
        L53:
            java.lang.String r8 = (java.lang.String) r8
            kotlin.text.Regex r4 = org.jetbrains.compose.resources.StringResourcesUtilsKt.SimpleStringFormatRegex
            r8.getClass()
            r5.getClass()
            kotlin.text.Regex r4 = org.jetbrains.compose.resources.StringResourcesUtilsKt.SimpleStringFormatRegex
            kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0 r6 = new kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0
            r7 = 9
            r6.<init>(r5, r7)
            java.lang.String r4 = r4.replace(r8, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jetbrains.compose.resources.StringResourcesKt.access$loadString(org.jetbrains.compose.resources.StringResource, java.util.List, org.jetbrains.compose.resources.ResourceReader, org.jetbrains.compose.resources.ResourceEnvironment, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final ResourceReader getCurrentOrPreview(ProvidableCompositionLocal providableCompositionLocal, Composer composer) {
        providableCompositionLocal.getClass();
        AndroidContextProviderKt.PreviewContextConfigurationEffect(composer, 0);
        return (ResourceReader) ((GapComposer) composer).consume(providableCompositionLocal);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object loadString(org.jetbrains.compose.resources.StringResource r7, org.jetbrains.compose.resources.ResourceReader r8, org.jetbrains.compose.resources.ResourceEnvironment r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            boolean r0 = r10 instanceof org.jetbrains.compose.resources.StringResourcesKt$loadString$1
            if (r0 == 0) goto L13
            r0 = r10
            org.jetbrains.compose.resources.StringResourcesKt$loadString$1 r0 = (org.jetbrains.compose.resources.StringResourcesKt$loadString$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.jetbrains.compose.resources.StringResourcesKt$loadString$1 r0 = new org.jetbrains.compose.resources.StringResourcesKt$loadString$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L3c
            if (r1 != r2) goto L36
            java.lang.Object r7 = r0.L$3
            org.jetbrains.compose.resources.ResourceItem r7 = (org.jetbrains.compose.resources.ResourceItem) r7
            java.lang.Object r7 = r0.L$2
            org.jetbrains.compose.resources.ResourceEnvironment r7 = (org.jetbrains.compose.resources.ResourceEnvironment) r7
            java.lang.Object r7 = r0.L$1
            org.jetbrains.compose.resources.ResourceReader r7 = (org.jetbrains.compose.resources.ResourceReader) r7
            java.lang.Object r7 = r0.L$0
            org.jetbrains.compose.resources.StringResource r7 = (org.jetbrains.compose.resources.StringResource) r7
            kotlin.ResultKt.throwOnFailure(r10)
            goto L87
        L36:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            return r3
        L3c:
            kotlin.ResultKt.throwOnFailure(r10)
            org.jetbrains.compose.resources.ResourceItem r7 = org.jetbrains.compose.resources.ResourceEnvironmentKt.getResourceItemByEnvironment(r7, r9)
            r0.L$0 = r3
            r0.L$1 = r3
            r0.L$2 = r3
            r0.L$3 = r3
            r0.label = r2
            org.jetbrains.compose.resources.AsyncCache r9 = org.jetbrains.compose.resources.StringResourcesUtilsKt.stringItemsCache
            java.lang.String r10 = r7.path
            long r1 = r7.offset
            long r4 = r7.size
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r10)
            java.lang.String r10 = "/"
            r6.append(r10)
            r6.append(r1)
            java.lang.String r10 = "-"
            r6.append(r10)
            r6.append(r4)
            java.lang.String r10 = r6.toString()
            org.jetbrains.compose.resources.StringResourcesUtilsKt$getStringItem$2 r1 = new org.jetbrains.compose.resources.StringResourcesUtilsKt$getStringItem$2
            r1.<init>(r8, r7, r3)
            r9.getClass()
            org.jetbrains.compose.resources.AsyncCache$getOrLoad$2 r7 = new org.jetbrains.compose.resources.AsyncCache$getOrLoad$2
            r7.<init>(r9, r10, r1, r3)
            java.lang.Object r10 = kotlinx.coroutines.JobKt.coroutineScope(r7, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r10 != r7) goto L87
            return r7
        L87:
            r10.getClass()
            org.jetbrains.compose.resources.StringItem$Value r10 = (org.jetbrains.compose.resources.StringItem$Value) r10
            java.lang.String r7 = r10.text
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jetbrains.compose.resources.StringResourcesKt.loadString(org.jetbrains.compose.resources.StringResource, org.jetbrains.compose.resources.ResourceReader, org.jetbrains.compose.resources.ResourceEnvironment, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final MutableState rememberResourceState(DrawableResource drawableResource, ResourceReader resourceReader, Object obj, Function0 function0, Function2 function2, Composer composer) {
        drawableResource.getClass();
        resourceReader.getClass();
        obj.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        ((ResourceEnvironmentKt$DefaultComposeEnvironment$1) gapComposer.consume(ResourceEnvironmentKt.LocalComposeEnvironment)).getClass();
        ResourceEnvironment rememberEnvironment = ResourceEnvironmentKt$DefaultComposeEnvironment$1.rememberEnvironment(gapComposer);
        boolean changed = gapComposer.changed(drawableResource) | gapComposer.changed(resourceReader) | gapComposer.changed(obj) | gapComposer.changed(rememberEnvironment);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = Updater.mutableStateOf$default(JobKt.runBlocking(EmptyCoroutineContext.INSTANCE, new ResourceState_blockingKt$rememberResourceState$3$1(function2, rememberEnvironment, null)));
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (MutableState) rememberedValue;
    }

    public static final String stringResource(StringResource stringResource, Composer composer) {
        stringResource.getClass();
        ResourceReader currentOrPreview = getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, composer);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = new KoinApplicationKt$$ExternalSyntheticLambda0(3);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Function0 function0 = (Function0) rememberedValue;
        boolean changed = gapComposer.changed(stringResource) | gapComposer.changedInstance(currentOrPreview);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changed || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new StringResourcesKt$stringResource$str$3$1(stringResource, currentOrPreview, null);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Function2 function2 = (Function2) rememberedValue2;
        function0.getClass();
        function2.getClass();
        ((ResourceEnvironmentKt$DefaultComposeEnvironment$1) gapComposer.consume(ResourceEnvironmentKt.LocalComposeEnvironment)).getClass();
        ResourceEnvironment rememberEnvironment = ResourceEnvironmentKt$DefaultComposeEnvironment$1.rememberEnvironment(gapComposer);
        boolean changed2 = gapComposer.changed(stringResource) | gapComposer.changed(rememberEnvironment);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changed2 || rememberedValue3 == neverEqualPolicy) {
            rememberedValue3 = Updater.mutableStateOf$default(JobKt.runBlocking(EmptyCoroutineContext.INSTANCE, new ResourceState_blockingKt$rememberResourceState$1$1(function2, rememberEnvironment, null)));
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        return (String) ((MutableState) rememberedValue3).getValue();
    }
}

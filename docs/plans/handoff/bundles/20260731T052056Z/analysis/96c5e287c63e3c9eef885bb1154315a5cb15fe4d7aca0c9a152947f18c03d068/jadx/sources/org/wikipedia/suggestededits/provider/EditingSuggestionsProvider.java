package org.wikipedia.suggestededits.provider;

import j$.time.Instant;
import java.util.concurrent.Semaphore;
import kotlin.collections.ArrayDeque;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditingSuggestionsProvider {
    public static long articlesWithImageRecommendationsLastMillis;
    public static long revertCandidateLastRevId;
    public static final EditingSuggestionsProvider INSTANCE = new EditingSuggestionsProvider();
    public static final Semaphore mutex = new Semaphore(1);
    public static final ArrayDeque articlesWithMissingDescriptionCache = new ArrayDeque();
    public static String articlesWithMissingDescriptionCacheLang = "";
    public static final ArrayDeque articlesWithTranslatableDescriptionCache = new ArrayDeque();
    public static String articlesWithTranslatableDescriptionCacheFromLang = "";
    public static String articlesWithTranslatableDescriptionCacheToLang = "";
    public static final ArrayDeque imagesWithMissingCaptionsCache = new ArrayDeque();
    public static String imagesWithMissingCaptionsCacheLang = "";
    public static final ArrayDeque imagesWithTranslatableCaptionCache = new ArrayDeque();
    public static String imagesWithTranslatableCaptionCacheFromLang = "";
    public static String imagesWithTranslatableCaptionCacheToLang = "";
    public static final ArrayDeque imagesWithMissingTagsCache = new ArrayDeque();
    public static final ArrayDeque articlesWithImageRecommendationsCache = new ArrayDeque();
    public static String articlesWithImageRecommendationsCacheLang = "";
    public static String revertCandidateLang = "";
    public static final ArrayDeque revertCandidateCache = new ArrayDeque();
    public static Instant revertCandidateLastTimeStamp = Instant.now();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ListEmptyException extends RuntimeException {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable fetchArticlesWithNullDescription(org.wikipedia.dataclient.WikiSite r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$fetchArticlesWithNullDescription$1
            if (r0 == 0) goto L13
            r0 = r6
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$fetchArticlesWithNullDescription$1 r0 = (org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$fetchArticlesWithNullDescription$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$fetchArticlesWithNullDescription$1 r0 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$fetchArticlesWithNullDescription$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r4 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            kotlin.ResultKt.throwOnFailure(r4)
            goto L42
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r4)
            org.wikipedia.dataclient.ServiceFactory r4 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.dataclient.Service r4 = org.wikipedia.dataclient.ServiceFactory.get(r5)
            r0.label = r3
            r5 = 50
            java.lang.Object r4 = r4.getRandomPages(r5, r0)
            if (r4 != r6) goto L42
            return r6
        L42:
            org.wikipedia.dataclient.mwapi.MwQueryResponse r4 = (org.wikipedia.dataclient.mwapi.MwQueryResponse) r4
            org.wikipedia.dataclient.mwapi.MwQueryResult r4 = r4.query
            if (r4 == 0) goto L6a
            java.util.List r4 = r4.pages
            if (r4 == 0) goto L6a
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r4 = r4.iterator()
        L55:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L6a
            java.lang.Object r5 = r4.next()
            r6 = r5
            org.wikipedia.dataclient.mwapi.MwQueryPage r6 = (org.wikipedia.dataclient.mwapi.MwQueryPage) r6
            java.lang.String r6 = r6.description
            if (r6 != 0) goto L55
            r2.add(r5)
            goto L55
        L6a:
            if (r2 != 0) goto L6f
            kotlin.collections.EmptyList r4 = kotlin.collections.EmptyList.INSTANCE
            return r4
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider.fetchArticlesWithNullDescription(org.wikipedia.dataclient.WikiSite, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getNextArticleWithImageRecommendation(java.lang.String r10, long r11, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r9 = this;
            boolean r0 = r13 instanceof org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1
            if (r0 == 0) goto L13
            r0 = r13
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1 r0 = (org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1 r0 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1
            r0.<init>(r9, r13)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r13 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            kotlin.jvm.internal.Ref$ObjectRef r10 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4c
        L29:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            r9 = 0
            return r9
        L30:
            kotlin.jvm.internal.Ref$ObjectRef r7 = androidx.compose.animation.core.Animation.CC.m22m(r9)
            kotlinx.coroutines.scheduling.DefaultScheduler r9 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r9 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$2 r3 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$2
            r8 = 0
            r4 = r10
            r5 = r11
            r3.<init>(r4, r5, r7, r8)
            r0.L$1 = r7
            r0.label = r2
            java.lang.Object r9 = kotlinx.coroutines.AwaitKt.withContext(r9, r3, r0)
            if (r9 != r13) goto L4b
            return r13
        L4b:
            r10 = r7
        L4c:
            java.lang.Object r9 = r10.element
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider.getNextArticleWithImageRecommendation(java.lang.String, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getNextArticleWithMissingDescription(org.wikipedia.dataclient.WikiSite r20, java.lang.String r21, long r22, kotlin.coroutines.jvm.internal.ContinuationImpl r24) {
        /*
            r19 = this;
            r0 = r24
            boolean r1 = r0 instanceof org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$3
            if (r1 == 0) goto L15
            r1 = r0
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$3 r1 = (org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$3) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1c
        L15:
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$3 r1 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$3
            r2 = r19
            r1.<init>(r2, r0)
        L1c:
            java.lang.Object r0 = r1.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r1.label
            r4 = 1
            if (r3 == 0) goto L34
            if (r3 != r4) goto L2d
            kotlin.jvm.internal.Ref$ObjectRef r1 = r1.L$2
            kotlin.ResultKt.throwOnFailure(r0)
            goto L73
        L2d:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r0)
            r0 = 0
            return r0
        L34:
            kotlin.jvm.internal.Ref$ObjectRef r10 = androidx.compose.animation.core.Animation.CC.m22m(r0)
            kotlin.Pair r0 = new kotlin.Pair
            org.wikipedia.dataclient.page.PageSummary r11 = new org.wikipedia.dataclient.page.PageSummary
            r16 = 0
            r17 = 262143(0x3ffff, float:3.6734E-40)
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r11.<init>(r12, r13, r14, r15, r16, r17)
            org.wikipedia.dataclient.page.PageSummary r12 = new org.wikipedia.dataclient.page.PageSummary
            r17 = 0
            r18 = 262143(0x3ffff, float:3.6734E-40)
            r12.<init>(r13, r14, r15, r16, r17, r18)
            r0.<init>(r11, r12)
            r10.element = r0
            kotlinx.coroutines.scheduling.DefaultScheduler r0 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r0 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$4 r5 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$4
            r11 = 0
            r7 = r20
            r6 = r21
            r8 = r22
            r5.<init>(r6, r7, r8, r10, r11)
            r1.L$2 = r10
            r1.label = r4
            java.lang.Object r0 = kotlinx.coroutines.AwaitKt.withContext(r0, r5, r1)
            if (r0 != r2) goto L72
            return r2
        L72:
            r1 = r10
        L73:
            java.lang.Object r0 = r1.element
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider.getNextArticleWithMissingDescription(org.wikipedia.dataclient.WikiSite, java.lang.String, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getNextImageWithMissingCaption(java.lang.String r11, java.lang.String r12, long r13, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            r10 = this;
            boolean r0 = r15 instanceof org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$3
            if (r0 == 0) goto L13
            r0 = r15
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$3 r0 = (org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$3 r0 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$3
            r0.<init>(r10, r15)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r15 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            kotlin.jvm.internal.Ref$ObjectRef r11 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L56
        L29:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            r10 = 0
            return r10
        L30:
            kotlin.jvm.internal.Ref$ObjectRef r6 = androidx.compose.animation.core.Animation.CC.m22m(r10)
            kotlin.Pair r10 = new kotlin.Pair
            java.lang.String r1 = ""
            r10.<init>(r1, r1)
            r6.element = r10
            kotlinx.coroutines.scheduling.DefaultScheduler r10 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r10 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$4 r3 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$4
            r9 = 0
            r4 = r11
            r5 = r12
            r7 = r13
            r3.<init>(r4, r5, r6, r7, r9)
            r0.L$2 = r6
            r0.label = r2
            java.lang.Object r10 = kotlinx.coroutines.AwaitKt.withContext(r10, r3, r0)
            if (r10 != r15) goto L55
            return r15
        L55:
            r11 = r6
        L56:
            java.lang.Object r10 = r11.element
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider.getNextImageWithMissingCaption(java.lang.String, java.lang.String, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getNextImageWithMissingTags(long r6, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingTags$1
            if (r0 == 0) goto L13
            r0 = r8
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingTags$1 r0 = (org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingTags$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingTags$1 r0 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingTags$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            kotlin.jvm.internal.Ref$ObjectRef r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L49
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r2
        L30:
            kotlin.jvm.internal.Ref$ObjectRef r5 = androidx.compose.animation.core.Animation.CC.m22m(r5)
            kotlinx.coroutines.scheduling.DefaultScheduler r1 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r1 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingTags$2 r4 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingTags$2
            r4.<init>(r5, r6, r2)
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.AwaitKt.withContext(r1, r4, r0)
            if (r6 != r8) goto L48
            return r8
        L48:
            r6 = r5
        L49:
            java.lang.Object r5 = r6.element
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider.getNextImageWithMissingTags(long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getNextImageWithMissingCaption(java.lang.String r10, long r11, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r9 = this;
            boolean r0 = r13 instanceof org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$1
            if (r0 == 0) goto L13
            r0 = r13
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$1 r0 = (org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$1 r0 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$1
            r0.<init>(r9, r13)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r13 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            kotlin.jvm.internal.Ref$ObjectRef r10 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L50
        L29:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            r9 = 0
            return r9
        L30:
            kotlin.jvm.internal.Ref$ObjectRef r5 = androidx.compose.animation.core.Animation.CC.m22m(r9)
            java.lang.String r9 = ""
            r5.element = r9
            kotlinx.coroutines.scheduling.DefaultScheduler r9 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r9 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$2 r3 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextImageWithMissingCaption$2
            r8 = 0
            r4 = r10
            r6 = r11
            r3.<init>(r4, r5, r6, r8)
            r0.L$1 = r5
            r0.label = r2
            java.lang.Object r9 = kotlinx.coroutines.AwaitKt.withContext(r9, r3, r0)
            if (r9 != r13) goto L4f
            return r13
        L4f:
            r10 = r5
        L50:
            java.lang.Object r9 = r10.element
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider.getNextImageWithMissingCaption(java.lang.String, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getNextArticleWithMissingDescription(org.wikipedia.dataclient.WikiSite r10, long r11, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r9 = this;
            boolean r0 = r13 instanceof org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$1
            if (r0 == 0) goto L13
            r0 = r13
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$1 r0 = (org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$1 r0 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$1
            r0.<init>(r9, r13)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r13 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L30
            if (r1 != r2) goto L29
            kotlin.jvm.internal.Ref$ObjectRef r10 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L4c
        L29:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            r9 = 0
            return r9
        L30:
            kotlin.jvm.internal.Ref$ObjectRef r7 = androidx.compose.animation.core.Animation.CC.m22m(r9)
            kotlinx.coroutines.scheduling.DefaultScheduler r9 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r9 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$2 r3 = new org.wikipedia.suggestededits.provider.EditingSuggestionsProvider$getNextArticleWithMissingDescription$2
            r8 = 0
            r4 = r10
            r5 = r11
            r3.<init>(r4, r5, r7, r8)
            r0.L$1 = r7
            r0.label = r2
            java.lang.Object r9 = kotlinx.coroutines.AwaitKt.withContext(r9, r3, r0)
            if (r9 != r13) goto L4b
            return r13
        L4b:
            r10 = r7
        L4c:
            java.lang.Object r9 = r10.element
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.provider.EditingSuggestionsProvider.getNextArticleWithMissingDescription(org.wikipedia.dataclient.WikiSite, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

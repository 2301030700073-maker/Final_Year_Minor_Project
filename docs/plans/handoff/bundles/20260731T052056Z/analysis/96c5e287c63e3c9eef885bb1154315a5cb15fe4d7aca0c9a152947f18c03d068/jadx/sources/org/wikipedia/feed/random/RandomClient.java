package org.wikipedia.feed.random;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RandomClient {
    public static final RandomClient INSTANCE = new RandomClient();

    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getRandomPages(final org.wikipedia.dataclient.WikiSite r5, int r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof org.wikipedia.feed.random.RandomClient$getRandomPages$1
            if (r0 == 0) goto L13
            r0 = r7
            org.wikipedia.feed.random.RandomClient$getRandomPages$1 r0 = (org.wikipedia.feed.random.RandomClient$getRandomPages$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.feed.random.RandomClient$getRandomPages$1 r0 = new org.wikipedia.feed.random.RandomClient$getRandomPages$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r4 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L32
            if (r1 != r3) goto L2c
            int r6 = r0.I$0
            org.wikipedia.dataclient.WikiSite r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r4)
            goto L50
        L2c:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            return r2
        L32:
            kotlin.ResultKt.throwOnFailure(r4)
            org.wikipedia.dataclient.ServiceFactory r4 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.dataclient.Service r4 = org.wikipedia.dataclient.ServiceFactory.get(r5)
            r1 = 10
            int r1 = java.lang.Math.max(r6, r1)
            int r1 = r1 * 4
            r0.L$0 = r5
            r0.I$0 = r6
            r0.label = r3
            java.lang.Object r4 = r4.getRandomPagesWithExtract(r1, r0)
            if (r4 != r7) goto L50
            return r7
        L50:
            org.wikipedia.dataclient.mwapi.MwQueryResponse r4 = (org.wikipedia.dataclient.mwapi.MwQueryResponse) r4
            org.wikipedia.dataclient.mwapi.MwQueryResult r4 = r4.query
            if (r4 == 0) goto L59
            java.util.List r4 = r4.pages
            goto L5a
        L59:
            r4 = r2
        L5a:
            if (r4 != 0) goto L5e
            kotlin.collections.EmptyList r4 = kotlin.collections.EmptyList.INSTANCE
        L5e:
            kotlin.io.LinesSequence r7 = new kotlin.io.LinesSequence
            r0 = 2
            r7.<init>(r0, r4)
            org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1 r4 = new org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1
            r0 = 19
            r4.<init>(r0)
            kotlin.sequences.FilteringSequence r0 = new kotlin.sequences.FilteringSequence
            r0.<init>(r7, r3, r4)
            org.wikipedia.feed.random.RandomClient$$ExternalSyntheticLambda1 r4 = new org.wikipedia.feed.random.RandomClient$$ExternalSyntheticLambda1
            r7 = 0
            r4.<init>()
            kotlin.sequences.FilteringSequence r7 = new kotlin.sequences.FilteringSequence
            r7.<init>(r0, r3, r4)
            org.wikipedia.feed.random.RandomClient$$ExternalSyntheticLambda1 r4 = new org.wikipedia.feed.random.RandomClient$$ExternalSyntheticLambda1
            r4.<init>()
            kotlin.sequences.TransformingSequence r5 = new kotlin.sequences.TransformingSequence
            r5.<init>(r7, r4)
            org.wikipedia.feed.random.RandomClient$getRandomPages$$inlined$sortedBy$1 r4 = new org.wikipedia.feed.random.RandomClient$getRandomPages$$inlined$sortedBy$1
            r4.<init>()
            kotlin.io.FileTreeWalk r7 = new kotlin.io.FileTreeWalk
            r0 = 3
            r7.<init>(r0, r5, r4)
            if (r6 < 0) goto Lac
            if (r6 != 0) goto L97
            kotlin.sequences.EmptySequence r4 = kotlin.sequences.EmptySequence.INSTANCE
            goto La7
        L97:
            boolean r4 = r7 instanceof kotlin.sequences.DropTakeSequence
            if (r4 == 0) goto La2
            kotlin.sequences.DropTakeSequence r7 = (kotlin.sequences.DropTakeSequence) r7
            kotlin.sequences.Sequence r4 = r7.take(r6)
            goto La7
        La2:
            kotlin.sequences.DropSequence r4 = new kotlin.sequences.DropSequence
            r4.<init>(r7, r6, r3)
        La7:
            java.util.List r4 = kotlin.sequences.SequencesKt.toList(r4)
            return r4
        Lac:
            java.lang.String r4 = "Requested element count "
            java.lang.String r5 = " is less than zero."
            java.lang.String r4 = androidx.compose.animation.core.Animation.CC.m(r6, r4, r5)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.random.RandomClient.getRandomPages(org.wikipedia.dataclient.WikiSite, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

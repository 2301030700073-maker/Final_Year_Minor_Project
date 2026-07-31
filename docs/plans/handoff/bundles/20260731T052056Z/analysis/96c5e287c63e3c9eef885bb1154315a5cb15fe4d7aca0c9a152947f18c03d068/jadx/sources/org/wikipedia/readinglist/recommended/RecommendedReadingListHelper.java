package org.wikipedia.readinglist.recommended;

import android.content.Context;
import android.content.Intent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListHelper {
    public static final RecommendedReadingListHelper INSTANCE = new RecommendedReadingListHelper();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RecommendedReadingListSource.values().length];
            try {
                iArr[RecommendedReadingListSource.INTERESTS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RecommendedReadingListSource.READING_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RecommendedReadingListSource.HISTORY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static Intent newIntent$default(Context context) {
        Intent intent = new Intent(context, (Class<?>) RecommendedReadingListOnboardingActivity.class);
        intent.putExtra("startFromSourceSelection", true);
        intent.putExtra("fromSettings", false);
        return intent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0379, code lost:
    
        if (r10.size() < r15.element) goto L108;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0250 A[LOOP:6: B:126:0x024a->B:128:0x0250, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x05a1 A[LOOP:0: B:17:0x059b->B:19:0x05a1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x05e8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x05ea  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x04d7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0201 A[LOOP:2: B:78:0x01fb->B:80:0x0201, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02be  */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v44, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r12v20, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v21, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r32v0, types: [org.wikipedia.readinglist.recommended.RecommendedReadingListHelper] */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r6v16, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v32, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x04b6 -> B:28:0x04bf). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x03f3 -> B:41:0x0369). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0406 -> B:29:0x0417). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object generateRecommendedReadingList(boolean r33, kotlin.coroutines.jvm.internal.ContinuationImpl r34) {
        /*
            Method dump skipped, instructions count: 1582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.recommended.RecommendedReadingListHelper.generateRecommendedReadingList(boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0142, code lost:
    
        if (r2 == r3) goto L36;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cf A[LOOP:0: B:33:0x00c9->B:35:0x00cf, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r4v16, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0142 -> B:12:0x0145). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getRecommendedPage(org.wikipedia.readinglist.recommended.SourceWithOffset r18, int r19, int r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.recommended.RecommendedReadingListHelper.getRecommendedPage(org.wikipedia.readinglist.recommended.SourceWithOffset, int, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0074, code lost:
    
        if (r6 == r7) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009e, code lost:
    
        if (r6 == r7) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object readyToGenerateList(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof org.wikipedia.readinglist.recommended.RecommendedReadingListHelper$readyToGenerateList$1
            if (r0 == 0) goto L13
            r0 = r7
            org.wikipedia.readinglist.recommended.RecommendedReadingListHelper$readyToGenerateList$1 r0 = (org.wikipedia.readinglist.recommended.RecommendedReadingListHelper$readyToGenerateList$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.readinglist.recommended.RecommendedReadingListHelper$readyToGenerateList$1 r0 = new org.wikipedia.readinglist.recommended.RecommendedReadingListHelper$readyToGenerateList$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L35
            if (r1 == r4) goto L31
            if (r1 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r6)
            goto L77
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r2
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            goto La1
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            org.wikipedia.settings.Prefs r6 = org.wikipedia.settings.Prefs.INSTANCE
            boolean r6 = org.wikipedia.settings.Prefs.isRecommendedReadingListEnabled()
            if (r6 == 0) goto Lbc
            int r6 = org.wikipedia.settings.Prefs.getRecommendedReadingListArticlesNumber()
            if (r6 > 0) goto L48
            goto Lbc
        L48:
            org.wikipedia.readinglist.recommended.RecommendedReadingListSource r6 = org.wikipedia.settings.Prefs.getRecommendedReadingListSource()
            int[] r1 = org.wikipedia.readinglist.recommended.RecommendedReadingListHelper.WhenMappings.$EnumSwitchMapping$0
            int r6 = r6.ordinal()
            r6 = r1[r6]
            if (r6 == r4) goto Lac
            r1 = 0
            if (r6 == r3) goto L86
            r5 = 3
            if (r6 != r5) goto L82
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r6 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r6 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.history.db.HistoryEntryDao_Impl r6 = r6.historyEntryDao()
            r0.label = r3
            androidx.room.RoomDatabase r2 = r6.__db
            coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0 r3 = new coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0
            r5 = 6
            r3.<init>(r4, r5, r6)
            java.lang.Object r6 = kotlin.ExceptionsKt.performSuspending(r2, r4, r1, r3, r0)
            if (r6 != r7) goto L77
            goto La0
        L77:
            java.util.List r6 = (java.util.List) r6
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto Lb9
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        L82:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            return r2
        L86:
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r6 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r6 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.readinglist.db.ReadingListPageDao_Impl r6 = r6.readingListPageDao()
            r0.label = r4
            androidx.room.RoomDatabase r2 = r6.__db
            coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0 r3 = new coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0
            r5 = 7
            r3.<init>(r4, r5, r6)
            java.lang.Object r6 = kotlin.ExceptionsKt.performSuspending(r2, r4, r1, r3, r0)
            if (r6 != r7) goto La1
        La0:
            return r7
        La1:
            java.util.List r6 = (java.util.List) r6
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto Lb9
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        Lac:
            java.util.List r6 = org.wikipedia.settings.Prefs.getRecommendedReadingListInterests()
            boolean r6 = r6.isEmpty()
            if (r6 == 0) goto Lb9
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        Lb9:
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            return r6
        Lbc:
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.recommended.RecommendedReadingListHelper.readyToGenerateList(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

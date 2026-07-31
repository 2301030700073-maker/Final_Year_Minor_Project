package org.wikipedia.yearinreview;

import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.settings.RemoteConfig$RemoteConfigYearInReview;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class YearInReviewViewModel$fetchPersonalizedData$1 extends SuspendLambda implements Function2 {
    public double D$0;
    public double D$1;
    public int I$0;
    public int I$1;
    public int I$2;
    public int I$3;
    public int I$4;
    public int I$5;
    public long J$0;
    public long J$1;
    public long J$2;
    public long J$3;
    public /* synthetic */ Object L$0;
    public RemoteConfig$RemoteConfigYearInReview L$1;
    public Deferred L$10;
    public Deferred L$11;
    public WikiSite L$12;
    public DeferredCoroutine L$13;
    public Deferred L$14;
    public Object L$15;
    public Pair L$16;
    public String L$17;
    public List L$18;
    public Map L$19;
    public Integer L$20;
    public List L$21;
    public List L$22;
    public List L$4;
    public Map L$5;
    public Deferred L$6;
    public Deferred L$7;
    public Deferred L$8;
    public Deferred L$9;
    public int label;
    public final /* synthetic */ YearInReviewViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YearInReviewViewModel$fetchPersonalizedData$1(YearInReviewViewModel yearInReviewViewModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = yearInReviewViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        YearInReviewViewModel$fetchPersonalizedData$1 yearInReviewViewModel$fetchPersonalizedData$1 = new YearInReviewViewModel$fetchPersonalizedData$1(this.this$0, continuation);
        yearInReviewViewModel$fetchPersonalizedData$1.L$0 = obj;
        return yearInReviewViewModel$fetchPersonalizedData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((YearInReviewViewModel$fetchPersonalizedData$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(23:50|7|(2:9|(20:11|12|13|14|(1:16)(1:45)|17|18|19|(7:24|25|(1:27)|28|(1:(2:37|(1:41)(1:40))(1:36))(1:31)|32|33)|43|25|(0)|28|(0)|(0)|37|(0)|41|32|33))|46|12|13|14|(0)(0)|17|18|19|(12:21|24|25|(0)|28|(0)|(0)|37|(0)|41|32|33)|43|25|(0)|28|(0)|(0)|37|(0)|41|32|33) */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0a99, code lost:
    
        if (r2 == null) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x05ba, code lost:
    
        if (r5 == r3) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x054c, code lost:
    
        if (r4 == r3) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0f37, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0f05  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0915  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x08a1  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x08f7  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x08af  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0841  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x088b  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0849  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0787 A[LOOP:3: B:210:0x0781->B:212:0x0787, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x082b  */
    /* JADX WARN: Removed duplicated region for block: B:218:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0f24 A[Catch: IllegalArgumentException -> 0x0f37, TryCatch #10 {IllegalArgumentException -> 0x0f37, blocks: (B:19:0x0f1e, B:21:0x0f24, B:24:0x0f2b, B:43:0x0f30), top: B:18:0x0f1e }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0763  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x070a  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x070d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0f3a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0f53 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0fb4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x1019 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0f07  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0e75  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0ddd  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0d3a  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0c9f  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0c07  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x090c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0b6b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0946 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0ea9  */
    /* JADX WARN: Type inference failed for: r10v10, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r10v18, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r10v20, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r11v13, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r11v18, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r11v8, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r13v14, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r13v17, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r13v22, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r13v4, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r13v7, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r14v10, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r14v16, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r14v20, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r14v23, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r14v41, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r14v6, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r15v1, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r15v2, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r15v3, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r15v41, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v105, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v106, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v11, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v113, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v115, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v116, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v117, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v12, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v126, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v127, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v13, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v134, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v136, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v137, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v138, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v145, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v146, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v153, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v155, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v156, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v164, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v165, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v172, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v173, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v174, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v206, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v207, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v214, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v215, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v22, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v23, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v24, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v26, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v72, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v73, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v74, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v75, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v76, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v83, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v90, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v92, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v93, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v94, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r2v95, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v96, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v32, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r4v33, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r4v34, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r4v35, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v36, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v42, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r4v43, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v44, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v49, types: [kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r4v50, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v32, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v20, types: [kotlinx.coroutines.Deferred] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r106) {
        /*
            Method dump skipped, instructions count: 4552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.yearinreview.YearInReviewViewModel$fetchPersonalizedData$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

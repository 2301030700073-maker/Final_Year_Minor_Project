package org.wikipedia.csrf;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import androidx.paging.CachedPagingDataKt$cachedIn$5;
import com.airbnb.lottie.compose.LottieCompositionSpec$Asset;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.createaccount.CreateAccountActivityViewModel;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CsrfTokenClient$getToken$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object $site;
    public final /* synthetic */ Object $token;
    public Object $type;
    public int I$0;
    public Object L$0;
    public Object L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CsrfTokenClient$getToken$2(CachedPagingDataKt$cachedIn$5 cachedPagingDataKt$cachedIn$5, Context context, LottieCompositionSpec$Asset lottieCompositionSpec$Asset, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.L$0 = cachedPagingDataKt$cachedIn$5;
        this.$site = context;
        this.$type = lottieCompositionSpec$Asset;
        this.$token = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$token;
        Object obj3 = this.$site;
        switch (i) {
            case 0:
                return new CsrfTokenClient$getToken$2((WikiSite) obj3, (String) this.$type, (Ref$ObjectRef) obj2, continuation);
            case 1:
                return new CsrfTokenClient$getToken$2((CachedPagingDataKt$cachedIn$5) this.L$0, (Context) obj3, (LottieCompositionSpec$Asset) this.$type, (MutableState) obj2, continuation);
            default:
                return new CsrfTokenClient$getToken$2((CreateAccountActivityViewModel) obj3, (CharSequence) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((CsrfTokenClient$getToken$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:(1:87)|93|94|95|(3:108|(1:111)|110)(1:97)|98|(1:107)|101|102|(3:104|77|220)|91|92) */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0246, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x02f9, code lost:
    
        if (r13 == null) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x034f, code lost:
    
        if (r1 == r5) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0393, code lost:
    
        if (org.wikipedia.csrf.CsrfTokenClient.tokenRequiresLogin((java.lang.String) r4.element) != false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0133, code lost:
    
        if (r4.emit(r5, r17) == r11) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0150, code lost:
    
        if (r0.emit(r3, r17) == r11) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009a, code lost:
    
        if (r1 == r11) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x007a, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(1000, r17) == r11) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0065, code lost:
    
        if (r5.emit(r12, r17) == r11) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ba, code lost:
    
        if (r2 == r11) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c3, code lost:
    
        if (((java.lang.Boolean) r2).booleanValue() != false) goto L93;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:189:0x02fd, B:171:0x02ed], limit reached: 215 */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0265 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03b7 A[Catch: all -> 0x03c7, TryCatch #5 {all -> 0x03c7, blocks: (B:147:0x039e, B:151:0x03b7, B:152:0x03be, B:154:0x03a9, B:159:0x037e, B:162:0x0395, B:199:0x037b, B:196:0x0389, B:211:0x039d, B:206:0x02bf, B:141:0x0297, B:144:0x0354, B:146:0x0360, B:164:0x02d3, B:169:0x02e3, B:171:0x02ed, B:173:0x02f1, B:175:0x02f5, B:178:0x030a, B:180:0x0314, B:183:0x0340, B:186:0x0338, B:189:0x02fd, B:191:0x0301, B:203:0x02b6), top: B:136:0x0287, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03a9 A[Catch: all -> 0x03c7, TryCatch #5 {all -> 0x03c7, blocks: (B:147:0x039e, B:151:0x03b7, B:152:0x03be, B:154:0x03a9, B:159:0x037e, B:162:0x0395, B:199:0x037b, B:196:0x0389, B:211:0x039d, B:206:0x02bf, B:141:0x0297, B:144:0x0354, B:146:0x0360, B:164:0x02d3, B:169:0x02e3, B:171:0x02ed, B:173:0x02f1, B:175:0x02f5, B:178:0x030a, B:180:0x0314, B:183:0x0340, B:186:0x0338, B:189:0x02fd, B:191:0x0301, B:203:0x02b6), top: B:136:0x0287, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x02d3 A[Catch: all -> 0x02a0, CancellationException -> 0x039c, TRY_ENTER, TryCatch #0 {all -> 0x02a0, blocks: (B:141:0x0297, B:164:0x02d3, B:169:0x02e3, B:171:0x02ed, B:173:0x02f1, B:175:0x02f5, B:178:0x030a, B:180:0x0314, B:189:0x02fd, B:191:0x0301, B:203:0x02b6), top: B:136:0x0287 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02ed A[Catch: all -> 0x02a0, CancellationException -> 0x039c, TryCatch #0 {all -> 0x02a0, blocks: (B:141:0x0297, B:164:0x02d3, B:169:0x02e3, B:171:0x02ed, B:173:0x02f1, B:175:0x02f5, B:178:0x030a, B:180:0x0314, B:189:0x02fd, B:191:0x0301, B:203:0x02b6), top: B:136:0x0287 }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02fd A[Catch: all -> 0x02a0, CancellationException -> 0x039c, TryCatch #0 {all -> 0x02a0, blocks: (B:141:0x0297, B:164:0x02d3, B:169:0x02e3, B:171:0x02ed, B:173:0x02f1, B:175:0x02f5, B:178:0x030a, B:180:0x0314, B:189:0x02fd, B:191:0x0301, B:203:0x02b6), top: B:136:0x0287 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0389 A[Catch: all -> 0x03c7, TryCatch #5 {all -> 0x03c7, blocks: (B:147:0x039e, B:151:0x03b7, B:152:0x03be, B:154:0x03a9, B:159:0x037e, B:162:0x0395, B:199:0x037b, B:196:0x0389, B:211:0x039d, B:206:0x02bf, B:141:0x0297, B:144:0x0354, B:146:0x0360, B:164:0x02d3, B:169:0x02e3, B:171:0x02ed, B:173:0x02f1, B:175:0x02f5, B:178:0x030a, B:180:0x0314, B:183:0x0340, B:186:0x0338, B:189:0x02fd, B:191:0x0301, B:203:0x02b6), top: B:136:0x0287, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0221 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a1  */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x0249 -> B:79:0x0189). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:175:0x034f -> B:136:0x0354). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:178:0x0378 -> B:151:0x037e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:199:0x02a1 -> B:190:0x037b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0213 -> B:72:0x0214). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 1000
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.csrf.CsrfTokenClient$getToken$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CsrfTokenClient$getToken$2(CreateAccountActivityViewModel createAccountActivityViewModel, CharSequence charSequence, Continuation continuation) {
        super(2, continuation);
        this.$site = createAccountActivityViewModel;
        this.$token = charSequence;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CsrfTokenClient$getToken$2(WikiSite wikiSite, String str, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(2, continuation);
        this.$site = wikiSite;
        this.$type = str;
        this.$token = ref$ObjectRef;
    }
}

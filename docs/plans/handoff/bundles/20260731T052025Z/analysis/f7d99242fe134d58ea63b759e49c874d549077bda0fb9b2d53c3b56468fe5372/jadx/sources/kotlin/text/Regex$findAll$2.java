package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Regex$findAll$2 extends FunctionReferenceImpl implements Function1 {
    public static final Regex$findAll$2 INSTANCE = new Regex$findAll$2(1, MatcherMatchResult.class, "next", "next()Lkotlin/text/MatchResult;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        MatcherMatchResult matcherMatchResult = (MatcherMatchResult) obj;
        matcherMatchResult.getClass();
        return matcherMatchResult.next();
    }
}

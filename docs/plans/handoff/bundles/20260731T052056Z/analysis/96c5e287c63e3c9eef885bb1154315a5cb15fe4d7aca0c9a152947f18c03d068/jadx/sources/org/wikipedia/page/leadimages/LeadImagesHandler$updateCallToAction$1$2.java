package org.wikipedia.page.leadimages;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;
import org.wikipedia.search.SearchResultsViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LeadImagesHandler$updateCallToAction$1$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String $imageTitle;
    public final /* synthetic */ Object $it;
    public final /* synthetic */ int $r8$classId;
    public int I$0;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LeadImagesHandler$updateCallToAction$1$2(Object obj, String str, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$imageTitle = str;
        this.$it = obj2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$it;
        Object obj3 = this.this$0;
        switch (i) {
            case 0:
                LeadImagesHandler$updateCallToAction$1$2 leadImagesHandler$updateCallToAction$1$2 = new LeadImagesHandler$updateCallToAction$1$2((LeadImagesHandler) obj3, this.$imageTitle, (PageTitle) obj2, continuation, 0);
                leadImagesHandler$updateCallToAction$1$2.L$0 = obj;
                return leadImagesHandler$updateCallToAction$1$2;
            default:
                LeadImagesHandler$updateCallToAction$1$2 leadImagesHandler$updateCallToAction$1$22 = new LeadImagesHandler$updateCallToAction$1$2((WikiSite) obj3, this.$imageTitle, (SearchResultsViewModel) obj2, continuation, 1);
                leadImagesHandler$updateCallToAction$1$22.L$0 = obj;
                return leadImagesHandler$updateCallToAction$1$22;
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
        return ((LeadImagesHandler$updateCallToAction$1$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x018c, code lost:
    
        if (r6 == r11) goto L90;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x022c  */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r8v17, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.leadimages.LeadImagesHandler$updateCallToAction$1$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

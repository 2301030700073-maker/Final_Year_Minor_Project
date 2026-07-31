package org.wikipedia.yearinreview;

import android.content.Context;
import android.net.Uri;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewGeoSlideKt$$ExternalSyntheticLambda11 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ String f$1;

    public /* synthetic */ YearInReviewGeoSlideKt$$ExternalSyntheticLambda11(int i, Context context, String str) {
        this.$r8$classId = i;
        this.f$0 = context;
        this.f$1 = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        String str = this.f$1;
        Context context = this.f$0;
        switch (i) {
            case 0:
                Uri parse = Uri.parse(str);
                parse.getClass();
                UriUtil.handleExternalLink(context, parse);
                break;
            case 1:
                UriUtil.submit$default(238, null, "learn_click", null, "explore_prompt", null);
                Uri parse2 = Uri.parse(str);
                parse2.getClass();
                UriUtil.handleExternalLink(context, parse2);
                break;
            default:
                Uri parse3 = Uri.parse(str);
                parse3.getClass();
                UriUtil.visitInExternalBrowser(context, parse3);
                break;
        }
        return unit;
    }
}

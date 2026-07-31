package org.schabi.newpipe.util;

import java.util.List;
import java.util.concurrent.Callable;
import org.schabi.newpipe.extractor.search.SearchInfo;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExtractorHelper$$ExternalSyntheticLambda2 implements Callable {
    public final /* synthetic */ int f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ List f$2;
    public final /* synthetic */ String f$3;

    public /* synthetic */ ExtractorHelper$$ExternalSyntheticLambda2(int i, String str, List list, String str2) {
        this.f$0 = i;
        this.f$1 = str;
        this.f$2 = list;
        this.f$3 = str2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.f$0;
        return SearchInfo.getInfo(Utility.getService(i), Utility.getService(i).getSearchQHFactory().fromQuery(this.f$1, this.f$3, this.f$2));
    }
}

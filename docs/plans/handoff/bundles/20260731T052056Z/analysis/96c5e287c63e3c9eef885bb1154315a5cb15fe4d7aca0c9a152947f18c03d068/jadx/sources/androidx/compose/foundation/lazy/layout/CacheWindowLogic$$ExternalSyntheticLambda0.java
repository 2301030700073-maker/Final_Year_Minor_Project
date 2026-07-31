package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.pager.PagerCacheWindowLogic;
import com.caverock.androidsvg.SVG;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CacheWindowLogic$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PagerCacheWindowLogic f$0;
    public final /* synthetic */ SVG f$1;

    public /* synthetic */ CacheWindowLogic$$ExternalSyntheticLambda0(PagerCacheWindowLogic pagerCacheWindowLogic, SVG svg, int i) {
        this.$r8$classId = i;
        this.f$0 = pagerCacheWindowLogic;
        this.f$1 = svg;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SVG svg = this.f$1;
        PagerCacheWindowLogic pagerCacheWindowLogic = this.f$0;
        int intValue = ((Integer) obj).intValue();
        int intValue2 = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                pagerCacheWindowLogic.onItemPrefetched(svg, intValue, intValue2);
                break;
            default:
                pagerCacheWindowLogic.onItemPrefetched(svg, intValue, intValue2);
                break;
        }
        return unit;
    }
}

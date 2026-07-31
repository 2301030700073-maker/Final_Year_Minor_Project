package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.pager.PagerCacheWindowLogic;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class CacheWindowLogic$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PagerCacheWindowLogic f$0;
    public final /* synthetic */ ProcessFinisher f$1;

    public /* synthetic */ CacheWindowLogic$$ExternalSyntheticLambda0(PagerCacheWindowLogic pagerCacheWindowLogic, ProcessFinisher processFinisher, int i) {
        this.$r8$classId = i;
        this.f$0 = pagerCacheWindowLogic;
        this.f$1 = processFinisher;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ProcessFinisher processFinisher = this.f$1;
        PagerCacheWindowLogic pagerCacheWindowLogic = this.f$0;
        int intValue = ((Integer) obj).intValue();
        int intValue2 = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                pagerCacheWindowLogic.onItemPrefetched(processFinisher, intValue, intValue2);
                break;
            default:
                pagerCacheWindowLogic.onItemPrefetched(processFinisher, intValue, intValue2);
                break;
        }
        return unit;
    }
}

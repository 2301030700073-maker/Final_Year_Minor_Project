package androidx.compose.foundation.lazy;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.lazy.grid.LazyGridInterval;
import androidx.compose.foundation.lazy.grid.LazyGridItemProviderImpl;
import androidx.compose.foundation.lazy.grid.LazyGridItemScopeImpl;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.setting.SettingDecoration$Custom;
import net.thunderbird.feature.mail.message.reader.api.ui.component.organism.AttachmentCardKt;
import org.jsoup.Jsoup;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyListItemProviderImpl$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ LazyListItemProviderImpl$$ExternalSyntheticLambda0(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                LazyListItemProviderImpl lazyListItemProviderImpl = (LazyListItemProviderImpl) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    IntervalList$Interval intervalList$Interval = lazyListItemProviderImpl.intervalContent.intervals.get(i2);
                    ((LazyListInterval) intervalList$Interval.value).item.invoke((Object) lazyListItemProviderImpl.itemScope, (Object) Integer.valueOf(i2 - intervalList$Interval.startIndex), (Object) gapComposer, (Object) 0);
                    break;
                }
            case 1:
                LazyGridItemProviderImpl lazyGridItemProviderImpl = (LazyGridItemProviderImpl) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    IntervalList$Interval intervalList$Interval2 = lazyGridItemProviderImpl.intervalContent.intervals.get(i2);
                    ((LazyGridInterval) intervalList$Interval2.value).item.invoke((Object) LazyGridItemScopeImpl.INSTANCE, (Object) Integer.valueOf(i2 - intervalList$Interval2.startIndex), (Object) gapComposer2, (Object) 6);
                    break;
                }
            case 2:
                ((Integer) obj2).intValue();
                Util.AttachmentListHeader((Function0) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                ByteStreamsKt.CustomItem((SettingDecoration$Custom) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 4:
                ((Integer) obj2).intValue();
                AttachmentCardKt.AttachmentThumbnailPlaceholder((BoxScope) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).intValue();
                Jsoup.AccountSelectionView((RowScope) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }
}

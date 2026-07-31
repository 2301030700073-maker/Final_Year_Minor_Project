package org.wikipedia.settings;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import j$.time.LocalDate;
import java.util.Date;
import org.wikipedia.recurring.RecommendedReadingListTask$WhenMappings;
import org.wikipedia.recurring.RecurringTask;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RemoteConfigRefreshTask extends RecurringTask {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ RemoteConfigRefreshTask(int i) {
        this.$r8$classId = i;
    }

    @Override // org.wikipedia.recurring.RecurringTask
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return "remote-config-refresher";
            case 1:
                return "categoriesTableCleanupTask";
            default:
                return "generateRecommendedReadingListTask";
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:27|(2:29|(11:31|32|(1:(1:(6:36|37|(5:43|(1:45)|(1:47)|48|(1:50))|51|52|53)(2:54|55))(1:56))(1:71)|57|58|59|(1:61)|62|(1:64)|52|53))|73|32|(0)(0)|57|58|59|(0)|62|(0)|52|53) */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x010b, code lost:
    
        if (r10 == r11) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00df, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e0, code lost:
    
        org.wikipedia.util.log.L.w(r10);
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00c3, code lost:
    
        if (r10 == r11) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00aa  */
    @Override // org.wikipedia.recurring.RecurringTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object run(kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.settings.RemoteConfigRefreshTask.run(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // org.wikipedia.recurring.RecurringTask
    public final boolean shouldRun(Date date) {
        switch (this.$r8$classId) {
            case 0:
                return RecurringTask.millisSinceLastRun(date) >= 21600000;
            case 1:
                return RecurringTask.millisSinceLastRun(date) >= 15724800000L;
            default:
                if (RecurringTask.millisSinceLastRun(date) >= 86400000) {
                    LocalDate now = LocalDate.now();
                    Prefs prefs = Prefs.INSTANCE;
                    int i = RecommendedReadingListTask$WhenMappings.$EnumSwitchMapping$0[Prefs.getRecommendedReadingListUpdateFrequency().ordinal()];
                    if (i == 1) {
                        return true;
                    }
                    if (i != 2) {
                        if (i != 3) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                        } else if (now.getDayOfMonth() == 1) {
                            return true;
                        }
                    } else if (now.getDayOfWeek().getValue() == 1) {
                        return true;
                    }
                }
                return false;
        }
    }
}

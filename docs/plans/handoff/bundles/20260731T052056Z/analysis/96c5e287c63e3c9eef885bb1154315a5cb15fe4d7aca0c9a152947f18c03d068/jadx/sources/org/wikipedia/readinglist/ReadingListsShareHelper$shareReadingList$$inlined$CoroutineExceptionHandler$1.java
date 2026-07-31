package org.wikipedia.readinglist;

import androidx.appcompat.app.AppCompatActivity;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ AppCompatActivity $activity$inlined;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1(androidx.appcompat.app.AppCompatActivity r1, int r2) {
        /*
            r0 = this;
            r0.$r8$classId = r2
            switch(r2) {
                case 1: goto Ld;
                default: goto L5;
            }
        L5:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.$activity$inlined = r1
            r0.<init>(r2)
            return
        Ld:
            kotlinx.coroutines.Job$Key r2 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r0.$activity$inlined = r1
            r0.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1.<init>(androidx.appcompat.app.AppCompatActivity, int):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i = this.$r8$classId;
        AppCompatActivity appCompatActivity = this.$activity$inlined;
        switch (i) {
            case 0:
                L.e(th);
                ShareUtil.showError$default(appCompatActivity, th);
                break;
            default:
                ShareUtil.showMessage(appCompatActivity, R.string.reading_lists_import_failure_message);
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(appCompatActivity, null), "ReadingList.import_cancelled"));
                break;
        }
    }
}

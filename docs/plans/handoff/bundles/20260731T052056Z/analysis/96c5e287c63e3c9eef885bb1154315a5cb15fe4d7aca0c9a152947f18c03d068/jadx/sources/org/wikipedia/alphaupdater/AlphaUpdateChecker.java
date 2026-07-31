package org.wikipedia.alphaupdater;

import java.util.Date;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.recurring.RecurringTask;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AlphaUpdateChecker extends RecurringTask {
    public final /* synthetic */ int $r8$classId;
    public final Object context;

    public AlphaUpdateChecker(WikipediaApp wikipediaApp, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                String string = wikipediaApp.getString(R.string.preference_key_talk_offline_cleanup_task_name);
                string.getClass();
                this.context = string;
                break;
            default:
                this.context = wikipediaApp;
                break;
        }
    }

    @Override // org.wikipedia.recurring.RecurringTask
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return "alpha-update-checker";
            default:
                return (String) this.context;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004f  */
    @Override // org.wikipedia.recurring.RecurringTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object run(kotlin.coroutines.Continuation r9) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.alphaupdater.AlphaUpdateChecker.run(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // org.wikipedia.recurring.RecurringTask
    public final boolean shouldRun(Date date) {
        switch (this.$r8$classId) {
            case 0:
                if (System.currentTimeMillis() - date.getTime() >= 86400000) {
                    break;
                }
                break;
            default:
                if (RecurringTask.millisSinceLastRun(date) > 604800000) {
                    break;
                }
                break;
        }
        return true;
    }
}

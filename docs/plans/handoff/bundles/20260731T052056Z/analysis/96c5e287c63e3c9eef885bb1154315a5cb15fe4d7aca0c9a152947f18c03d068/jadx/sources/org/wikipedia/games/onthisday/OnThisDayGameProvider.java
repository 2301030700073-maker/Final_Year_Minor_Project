package org.wikipedia.games.onthisday;

import android.content.Context;
import android.content.Intent;
import j$.time.LocalDate;
import j$.time.ZoneOffset;
import j$.time.format.DateTimeFormatter;
import kotlin.Result;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayGameProvider {
    public static final OnThisDayGameProvider INSTANCE = new OnThisDayGameProvider();

    public static Intent newIntent(Context context, Constants.InvokeSource invokeSource, WikiSite wikiSite, LocalDate localDate, int i) {
        Object failure;
        invokeSource.getClass();
        wikiSite.getClass();
        Prefs prefs = Prefs.INSTANCE;
        String string = PrefsIoUtil.getString(R.string.preference_key_otd_game_date_override, null);
        if (string == null) {
            string = "";
        }
        String str = string.length() > 0 ? string : null;
        if (str != null) {
            int i2 = OnThisDayGameActivity.$r8$clinit;
            try {
                failure = LocalDate.parse(str, DateTimeFormatter.ISO_LOCAL_DATE);
            } catch (Throwable th) {
                failure = new Result.Failure(th);
            }
            if (Result.m815exceptionOrNullimpl(failure) != null) {
                failure = LocalDate.now();
            }
            LocalDate localDate2 = (LocalDate) failure;
            if (localDate2 != null) {
                localDate = localDate2;
            }
        }
        Intent putExtra = new Intent(context, (Class<?>) OnThisDayGameActivity.class).putExtra("wikiSite", wikiSite).putExtra("invokeSource", invokeSource);
        if (i == 1) {
            putExtra.putExtra("gameStatus", i);
        }
        if (localDate != null) {
            putExtra.putExtra("date", localDate.atStartOfDay().toInstant(ZoneOffset.UTC).getEpochSecond());
        }
        if (i == 1) {
            putExtra.putExtra("gameStatus", i);
        }
        putExtra.getClass();
        return putExtra;
    }

    public static /* synthetic */ Intent newIntent$default(Context context, Constants.InvokeSource invokeSource, WikiSite wikiSite, LocalDate localDate, int i, int i2) {
        if ((i2 & 8) != 0) {
            localDate = null;
        }
        if ((i2 & 16) != 0) {
            i = -1;
        }
        return newIntent(context, invokeSource, wikiSite, localDate, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e6 A[LOOP:2: B:41:0x00e3->B:43:0x00e6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getGameEvents(org.wikipedia.dataclient.WikiSite r11, j$.time.LocalDate r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameProvider.getGameEvents(org.wikipedia.dataclient.WikiSite, j$.time.LocalDate, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Type inference failed for: r20v0, types: [org.wikipedia.games.onthisday.OnThisDayGameProvider] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getGameState(org.wikipedia.dataclient.WikiSite r21, j$.time.LocalDate r22, boolean r23, kotlin.coroutines.jvm.internal.ContinuationImpl r24) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameProvider.getGameState(org.wikipedia.dataclient.WikiSite, j$.time.LocalDate, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

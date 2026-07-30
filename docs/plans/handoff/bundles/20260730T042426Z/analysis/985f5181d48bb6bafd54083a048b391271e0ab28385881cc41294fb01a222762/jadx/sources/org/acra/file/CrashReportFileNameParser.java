package org.acra.file;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.acra.ACRAConstants;

/* compiled from: CrashReportFileNameParser.kt */
/* loaded from: classes2.dex */
public final class CrashReportFileNameParser {
    public final boolean isSilent(String reportFileName) {
        Intrinsics.checkNotNullParameter(reportFileName, "reportFileName");
        return StringsKt.contains$default((CharSequence) reportFileName, (CharSequence) ACRAConstants.SILENT_SUFFIX, false, 2, (Object) null);
    }

    public final Calendar getTimestamp(String reportFileName) {
        Intrinsics.checkNotNullParameter(reportFileName, "reportFileName");
        String replace$default = StringsKt.replace$default(StringsKt.replace$default(reportFileName, ".stacktrace", "", false, 4, (Object) null), ACRAConstants.SILENT_SUFFIX, "", false, 4, (Object) null);
        Calendar calendar = Calendar.getInstance();
        try {
            Date parse = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ", Locale.ENGLISH).parse(replace$default);
            Intrinsics.checkNotNull(parse);
            calendar.setTime(parse);
        } catch (ParseException unused) {
        }
        Intrinsics.checkNotNull(calendar);
        return calendar;
    }
}

package com.fsck.k9.ui.helper;

import android.content.Context;
import android.text.format.DateUtils;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.time.temporal.ChronoUnit;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.time.Clock;
import kotlin.time.Instant;
import kotlin.time.InstantKt;
import kotlinx.datetime.FixedOffsetTimeZone;
import kotlinx.datetime.LocalDate;
import kotlinx.datetime.LocalDateJvmKt;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.TimeZone;
import kotlinx.datetime.format.LocalDateTimeFormat;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.preference.display.visualSettings.message.list.MessageListDateTimeFormat;
import okhttp3.Headers;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RelativeDateTimeFormatter {
    public static final LocalDateTimeFormat isoDateTimeFormat;
    public final Clock clock;
    public final Context context;

    static {
        LocalDateTime.Companion.getClass();
        LocalDateTimeFormat.Builder builder = new LocalDateTimeFormat.Builder(new Headers.Builder(11));
        builder.year();
        StringsKt__IndentKt.m991char(builder, '-');
        builder.monthNumber();
        StringsKt__IndentKt.m991char(builder, '-');
        builder.day();
        StringsKt__IndentKt.m991char(builder, ' ');
        builder.hour();
        StringsKt__IndentKt.m991char(builder, ':');
        builder.minute();
        isoDateTimeFormat = new LocalDateTimeFormat(Sink$CC.$default$build(builder));
    }

    public RelativeDateTimeFormatter(Context context, Clock clock) {
        this.context = context;
        this.clock = clock;
    }

    public final String formatDate(long j, MessageListDateTimeFormat messageListDateTimeFormat) {
        messageListDateTimeFormat.getClass();
        FixedOffsetTimeZone fixedOffsetTimeZone = TimeZone.UTC;
        TimeZone currentSystemDefault = CharsKt__CharKt.currentSystemDefault();
        LocalDateTime localDateTime = Hex.toLocalDateTime(this.clock.now(), currentSystemDefault);
        Instant instant = Instant.MIN;
        LocalDateTime localDateTime2 = Hex.toLocalDateTime(InstantKt.fromEpochMilliseconds(j), currentSystemDefault);
        int ordinal = messageListDateTimeFormat.ordinal();
        Context context = this.context;
        int i = 1;
        if (ordinal != 0) {
            if (ordinal == 1) {
                String formatDateRange = DateUtils.formatDateRange(context, j, j, 131093);
                formatDateRange.getClass();
                return formatDateRange;
            }
            if (ordinal == 2) {
                return isoDateTimeFormat.format(localDateTime2);
            }
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        if (!localDateTime2.getDate().equals(localDateTime.getDate())) {
            LocalDate date = localDateTime2.getDate();
            LocalDate date2 = localDateTime.getDate();
            int i2 = LocalDateJvmKt.$r8$clinit;
            long until = date.value.until(date2.value, ChronoUnit.DAYS);
            int i3 = until > 2147483647L ? Integer.MAX_VALUE : until < -2147483648L ? Integer.MIN_VALUE : (int) until;
            i = (1 > i3 || i3 >= 7) ? localDateTime2.value.getYear() == localDateTime.value.getYear() ? 65552 : 131092 : 32770;
        }
        String formatDateRange2 = DateUtils.formatDateRange(context, j, j, i);
        formatDateRange2.getClass();
        return formatDateRange2;
    }
}

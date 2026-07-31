package org.schabi.newpipe.extractor.localization;

import androidx.compose.ui.Modifier;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.OffsetDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.format.DateTimeParseException;
import java.io.Serializable;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DateWrapper implements Serializable {
    private final Instant instant;
    private final boolean isApproximation;

    public DateWrapper(LocalDateTime localDateTime, boolean z) {
        this(localDateTime.I(ZoneId.systemDefault()).toInstant(), z);
    }

    public static DateWrapper fromInstant(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new DateWrapper(Instant.parse(str), false);
        } catch (DateTimeParseException e) {
            throw new ParsingException(Modifier.CC.m("Could not parse date: \"", str, "\""), e);
        }
    }

    public static DateWrapper fromOffsetDateTime(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new DateWrapper(OffsetDateTime.parse(str), 0);
        } catch (DateTimeParseException e) {
            throw new ParsingException(Modifier.CC.m("Could not parse date: \"", str, "\""), e);
        }
    }

    public final Instant getInstant() {
        return this.instant;
    }

    public final LocalDateTime getLocalDateTime() {
        return LocalDateTime.ofInstant(this.instant, ZoneId.systemDefault());
    }

    public final boolean isApproximation() {
        return this.isApproximation;
    }

    public final OffsetDateTime offsetDateTime() {
        return this.instant.atOffset(ZoneOffset.UTC);
    }

    public final String toString() {
        return "DateWrapper{instant=" + this.instant + ", isApproximation=" + this.isApproximation + "}";
    }

    public DateWrapper(Instant instant, boolean z) {
        this.instant = instant;
        this.isApproximation = z;
    }

    public DateWrapper(OffsetDateTime offsetDateTime, int i) {
        this(offsetDateTime.toInstant(), false);
    }
}

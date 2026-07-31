.class public final synthetic Lj$/util/DesugarCalendar;
.super Ljava/lang/Object;


# direct methods
.method public static final toInstant(Ljava/util/Calendar;)Lj$/time/Instant;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

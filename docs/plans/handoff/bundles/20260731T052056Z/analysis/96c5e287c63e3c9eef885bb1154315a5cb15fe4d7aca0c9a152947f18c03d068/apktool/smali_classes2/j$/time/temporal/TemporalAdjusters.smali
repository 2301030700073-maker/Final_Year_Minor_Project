.class public final Lj$/time/temporal/TemporalAdjusters;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static next(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj$/time/DayOfWeek;->getValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    new-instance v0, Lj$/time/temporal/l;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lj$/time/temporal/l;-><init>(II)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

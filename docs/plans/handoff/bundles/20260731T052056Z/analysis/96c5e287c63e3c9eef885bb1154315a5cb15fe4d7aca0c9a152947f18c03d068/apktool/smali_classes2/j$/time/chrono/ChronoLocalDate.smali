.class public interface abstract Lj$/time/chrono/ChronoLocalDate;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/Temporal;",
        "Lj$/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Lj$/time/chrono/ChronoLocalDate;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract a(JLj$/time/temporal/n;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract b(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract c(Lj$/time/temporal/n;)Z
.end method

.method public abstract compareTo(Lj$/time/chrono/ChronoLocalDate;)I
.end method

.method public abstract d(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getChronology()Lj$/time/chrono/a;
.end method

.method public abstract getEra()Lj$/time/chrono/j;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isLeapYear()Z
.end method

.method public abstract l(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract lengthOfYear()I
.end method

.method public abstract n(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract r(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;
.end method

.method public abstract t(Lj$/time/temporal/m;)Lj$/time/chrono/ChronoLocalDate;
.end method

.method public abstract toEpochDay()J
.end method

.method public abstract toString()Ljava/lang/String;
.end method

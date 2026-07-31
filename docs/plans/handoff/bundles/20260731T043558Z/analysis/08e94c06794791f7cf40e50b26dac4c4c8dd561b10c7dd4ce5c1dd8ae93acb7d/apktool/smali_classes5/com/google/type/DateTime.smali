.class public final Lcom/google/type/DateTime;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DateTime.java"

# interfaces
.implements Lcom/google/type/DateTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/DateTime$TimeOffsetCase;,
        Lcom/google/type/DateTime$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/DateTime;",
        "Lcom/google/type/DateTime$Builder;",
        ">;",
        "Lcom/google/type/DateTimeOrBuilder;"
    }
.end annotation


# static fields
.field public static final DAY_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/type/DateTime;

.field public static final HOURS_FIELD_NUMBER:I = 0x4

.field public static final MINUTES_FIELD_NUMBER:I = 0x5

.field public static final MONTH_FIELD_NUMBER:I = 0x2

.field public static final NANOS_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x6

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x9

.field public static final UTC_OFFSET_FIELD_NUMBER:I = 0x8

.field public static final YEAR_FIELD_NUMBER:I = 0x1


# instance fields
.field private day_:I

.field private hours_:I

.field private minutes_:I

.field private month_:I

.field private nanos_:I

.field private seconds_:I

.field private timeOffsetCase_:I

.field private timeOffset_:Ljava/lang/Object;

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1161
    new-instance v0, Lcom/google/type/DateTime;

    invoke-direct {v0}, Lcom/google/type/DateTime;-><init>()V

    .line 1164
    sput-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    .line 1165
    const-class v1, Lcom/google/type/DateTime;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/type/DateTime;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearTimeOffset()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/type/DateTime;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setMinutes(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearMinutes()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/type/DateTime;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setSeconds(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearSeconds()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/type/DateTime;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setNanos(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearNanos()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/type/DateTime;Lcom/google/protobuf/Duration;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setUtcOffset(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/type/DateTime;Lcom/google/protobuf/Duration;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->mergeUtcOffset(Lcom/google/protobuf/Duration;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearUtcOffset()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/type/DateTime;Lcom/google/type/TimeZone;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setTimeZone(Lcom/google/type/TimeZone;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/DateTime;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setYear(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/type/DateTime;Lcom/google/type/TimeZone;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->mergeTimeZone(Lcom/google/type/TimeZone;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearTimeZone()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearYear()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/DateTime;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setMonth(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearMonth()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/type/DateTime;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setDay(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearDay()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/type/DateTime;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/type/DateTime;->setHours(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/type/DateTime;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/type/DateTime;->clearHours()V

    return-void
.end method

.method private clearDay()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/google/type/DateTime;->day_:I

    return-void
.end method

.method private clearHours()V
    .locals 1

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/google/type/DateTime;->hours_:I

    return-void
.end method

.method private clearMinutes()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput v0, p0, Lcom/google/type/DateTime;->minutes_:I

    return-void
.end method

.method private clearMonth()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/google/type/DateTime;->month_:I

    return-void
.end method

.method private clearNanos()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput v0, p0, Lcom/google/type/DateTime;->nanos_:I

    return-void
.end method

.method private clearSeconds()V
    .locals 1

    const/4 v0, 0x0

    .line 319
    iput v0, p0, Lcom/google/type/DateTime;->seconds_:I

    return-void
.end method

.method private clearTimeOffset()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    return-void
.end method

.method private clearTimeZone()V
    .locals 2

    .line 507
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 508
    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUtcOffset()V
    .locals 2

    .line 437
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 438
    iput v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearYear()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/google/type/DateTime;->year_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/DateTime;
    .locals 1

    .line 1170
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    return-object v0
.end method

.method private mergeTimeZone(Lcom/google/type/TimeZone;)V
    .locals 3

    .line 489
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 491
    invoke-static {}, Lcom/google/type/TimeZone;->getDefaultInstance()Lcom/google/type/TimeZone;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 492
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0}, Lcom/google/type/TimeZone;->newBuilder(Lcom/google/type/TimeZone;)Lcom/google/type/TimeZone$Builder;

    move-result-object v0

    .line 493
    invoke-virtual {v0, p1}, Lcom/google/type/TimeZone$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/type/TimeZone$Builder;

    invoke-virtual {p1}, Lcom/google/type/TimeZone$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    goto :goto_0

    .line 495
    :cond_0
    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 497
    :goto_0
    iput v1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    return-void
.end method

.method private mergeUtcOffset(Lcom/google/protobuf/Duration;)V
    .locals 3

    .line 417
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 419
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Duration;

    invoke-static {v0}, Lcom/google/protobuf/Duration;->newBuilder(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Duration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Duration$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    goto :goto_0

    .line 423
    :cond_0
    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    .line 425
    :goto_0
    iput v1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/type/DateTime$Builder;
    .locals 1

    .line 590
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-virtual {v0}, Lcom/google/type/DateTime;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/DateTime$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/DateTime;)Lcom/google/type/DateTime$Builder;
    .locals 1

    .line 593
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-virtual {v0, p0}, Lcom/google/type/DateTime;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/type/DateTime;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/type/DateTime;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 516
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 523
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 541
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/DateTime;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/DateTime;",
            ">;"
        }
    .end annotation

    .line 1176
    sget-object v0, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-virtual {v0}, Lcom/google/type/DateTime;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDay(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/google/type/DateTime;->day_:I

    return-void
.end method

.method private setHours(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/google/type/DateTime;->hours_:I

    return-void
.end method

.method private setMinutes(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/google/type/DateTime;->minutes_:I

    return-void
.end method

.method private setMonth(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/google/type/DateTime;->month_:I

    return-void
.end method

.method private setNanos(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/google/type/DateTime;->nanos_:I

    return-void
.end method

.method private setSeconds(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/google/type/DateTime;->seconds_:I

    return-void
.end method

.method private setTimeZone(Lcom/google/type/TimeZone;)V
    .locals 0

    .line 477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 479
    iput p1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    return-void
.end method

.method private setUtcOffset(Lcom/google/protobuf/Duration;)V
    .locals 0

    .line 403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    iput-object p1, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 405
    iput p1, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    return-void
.end method

.method private setYear(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/google/type/DateTime;->year_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1102
    sget-object p2, Lcom/google/type/DateTime$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1154
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1148
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1133
    :pswitch_2
    sget-object p1, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1135
    const-class p2, Lcom/google/type/DateTime;

    monitor-enter p2

    .line 1136
    :try_start_0
    sget-object p1, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1138
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1141
    sput-object p1, Lcom/google/type/DateTime;->PARSER:Lcom/google/protobuf/Parser;

    .line 1143
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 1130
    :pswitch_3
    sget-object p1, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    return-object p1

    .line 1110
    :pswitch_4
    const-string v0, "timeOffset_"

    const-string v1, "timeOffsetCase_"

    const-string v2, "year_"

    const-string v3, "month_"

    const-string v4, "day_"

    const-string v5, "hours_"

    const-string v6, "minutes_"

    const-string v7, "seconds_"

    const-string v8, "nanos_"

    const-class v9, Lcom/google/protobuf/Duration;

    const-class v10, Lcom/google/type/TimeZone;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    .line 1123
    const-string p2, "\u0000\t\u0001\u0000\u0001\t\t\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004\u0005\u0004\u0006\u0004\u0007\u0004\u0008<\u0000\t<\u0000"

    .line 1126
    sget-object p3, Lcom/google/type/DateTime;->DEFAULT_INSTANCE:Lcom/google/type/DateTime;

    invoke-static {p3, p2, p1}, Lcom/google/type/DateTime;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1107
    :pswitch_5
    new-instance p1, Lcom/google/type/DateTime$Builder;

    invoke-direct {p1, p2}, Lcom/google/type/DateTime$Builder;-><init>(Lcom/google/type/DateTime$1;)V

    return-object p1

    .line 1104
    :pswitch_6
    new-instance p1, Lcom/google/type/DateTime;

    invoke-direct {p1}, Lcom/google/type/DateTime;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDay()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/google/type/DateTime;->day_:I

    return v0
.end method

.method public getHours()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/google/type/DateTime;->hours_:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/google/type/DateTime;->minutes_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/google/type/DateTime;->month_:I

    return v0
.end method

.method public getNanos()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/google/type/DateTime;->nanos_:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/google/type/DateTime;->seconds_:I

    return v0
.end method

.method public getTimeOffsetCase()Lcom/google/type/DateTime$TimeOffsetCase;
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    invoke-static {v0}, Lcom/google/type/DateTime$TimeOffsetCase;->forNumber(I)Lcom/google/type/DateTime$TimeOffsetCase;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Lcom/google/type/TimeZone;
    .locals 2

    .line 464
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/TimeZone;

    return-object v0

    .line 467
    :cond_0
    invoke-static {}, Lcom/google/type/TimeZone;->getDefaultInstance()Lcom/google/type/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getUtcOffset()Lcom/google/protobuf/Duration;
    .locals 2

    .line 388
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/type/DateTime;->timeOffset_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Duration;

    return-object v0

    .line 391
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/google/type/DateTime;->year_:I

    return v0
.end method

.method public hasTimeZone()Z
    .locals 2

    .line 453
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUtcOffset()Z
    .locals 2

    .line 375
    iget v0, p0, Lcom/google/type/DateTime;->timeOffsetCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

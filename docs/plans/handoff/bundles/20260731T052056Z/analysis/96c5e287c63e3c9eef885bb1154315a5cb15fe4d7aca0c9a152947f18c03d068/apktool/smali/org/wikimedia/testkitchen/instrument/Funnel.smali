.class public final Lorg/wikimedia/testkitchen/instrument/Funnel;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public _sequence:I

.field public final name:Ljava/lang/String;

.field public final startTime:J

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikimedia/testkitchen/instrument/Funnel;->name:Ljava/lang/String;

    .line 5
    .line 6
    sget-object p1, Lorg/wikimedia/testkitchen/SessionController;->SESSION_LENGTH:Lj$/time/Duration;

    .line 7
    .line 8
    invoke-static {}, Lokio/Options$Companion;->generateSessionId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/wikimedia/testkitchen/instrument/Funnel;->token:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lorg/wikimedia/testkitchen/instrument/Funnel;->startTime:J

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lorg/wikimedia/testkitchen/instrument/Funnel;->_sequence:I

    .line 22
    .line 23
    return-void
.end method

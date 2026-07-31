.class public abstract Lnet/thunderbird/feature/notification/api/content/AppNotification;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/content/Notification;


# instance fields
.field public final accessibilityText:Ljava/lang/String;

.field public final createdAt:Lkotlinx/datetime/LocalDateTime;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/Notification;->getTitle()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lnet/thunderbird/feature/notification/api/content/AppNotification;->accessibilityText:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lkotlin/time/InstantJvmKt;->systemClock:Lkotlin/time/Clock;

    .line 11
    .line 12
    invoke-interface {v0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lkotlinx/datetime/TimeZone;->UTC:Lkotlinx/datetime/FixedOffsetTimeZone;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lorg/minidns/util/Hex;->toLocalDateTime(Lkotlin/time/Instant;Lkotlinx/datetime/TimeZone;)Lkotlinx/datetime/LocalDateTime;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lnet/thunderbird/feature/notification/api/content/AppNotification;->createdAt:Lkotlinx/datetime/LocalDateTime;

    .line 23
    .line 24
    return-void
.end method

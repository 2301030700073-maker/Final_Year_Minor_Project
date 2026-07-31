.class public final Lkotlin/time/Clock$System;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/time/Clock;


# static fields
.field public static final INSTANCE:Lkotlin/time/Clock$System;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/time/Clock$System;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/time/Clock$System;->INSTANCE:Lkotlin/time/Clock$System;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final now()Lkotlin/time/Instant;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/time/InstantJvmKt;->systemClock:Lkotlin/time/Clock;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

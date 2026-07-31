.class public final Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer$schedule$$inlined$postDelayed$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer;->sendAllScheduled()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

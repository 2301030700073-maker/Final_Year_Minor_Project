.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$$serializer;->INSTANCE:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionData$$serializer;

    .line 2
    .line 3
    return-object p0
.end method

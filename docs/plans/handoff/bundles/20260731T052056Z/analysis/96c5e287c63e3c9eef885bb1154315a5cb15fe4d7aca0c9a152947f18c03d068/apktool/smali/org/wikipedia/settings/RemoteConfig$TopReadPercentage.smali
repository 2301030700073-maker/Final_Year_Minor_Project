.class public final Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage$Companion;


# instance fields
.field public final identifier:Ljava/lang/String;

.field public final max:I

.field public final min:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;->Companion:Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p4, ""

    .line 9
    .line 10
    :cond_0
    iput-object p4, p0, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;->identifier:Ljava/lang/String;

    .line 11
    .line 12
    and-int/lit8 p4, p1, 0x2

    .line 13
    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :cond_1
    iput p2, p0, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;->min:I

    .line 18
    .line 19
    and-int/lit8 p1, p1, 0x4

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    const p1, 0x7fffffff

    .line 24
    .line 25
    .line 26
    iput p1, p0, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;->max:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iput p3, p0, Lorg/wikipedia/settings/RemoteConfig$TopReadPercentage;->max:I

    .line 30
    .line 31
    return-void
.end method

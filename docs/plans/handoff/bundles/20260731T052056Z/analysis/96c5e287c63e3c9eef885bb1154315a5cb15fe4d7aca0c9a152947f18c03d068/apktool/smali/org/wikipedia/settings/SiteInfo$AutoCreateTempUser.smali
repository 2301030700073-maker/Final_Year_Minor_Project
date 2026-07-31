.class public final Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser$Companion;


# instance fields
.field public final enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;->Companion:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    and-int/2addr p1, v0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p0, Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;->enabled:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput-boolean p2, p0, Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;->enabled:Z

    .line 12
    .line 13
    return-void
.end method

.class public final Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto$Companion;


# instance fields
.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto;->Companion:Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto;->version:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput p2, p0, Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto;->version:I

    .line 13
    .line 14
    return-void
.end method

.class public final Lorg/wikipedia/suggestededits/ImageTag;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final description:Ljava/lang/String;

.field public isSelected:Z

.field public final label:Ljava/lang/String;

.field public final wikidataId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/suggestededits/ImageTag;->wikidataId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lorg/wikipedia/suggestededits/ImageTag;->label:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lorg/wikipedia/suggestededits/ImageTag;->description:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lorg/wikipedia/suggestededits/ImageTag;->isSelected:Z

    .line 18
    .line 19
    return-void
.end method

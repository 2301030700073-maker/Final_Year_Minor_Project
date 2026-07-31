.class public final Lorg/wikipedia/edit/db/EditSummary;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final lastUsed:Ljava/util/Date;

.field public final summary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/edit/db/EditSummary;->summary:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/edit/db/EditSummary;->lastUsed:Ljava/util/Date;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/db/EditSummary;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

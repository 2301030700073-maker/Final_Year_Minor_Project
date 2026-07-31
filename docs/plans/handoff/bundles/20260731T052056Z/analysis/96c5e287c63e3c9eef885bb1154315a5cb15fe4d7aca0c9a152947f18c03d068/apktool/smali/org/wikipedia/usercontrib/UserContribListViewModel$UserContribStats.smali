.class public final Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;
.super Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItemModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final projectName:Ljava/lang/String;

.field public final registrationDate:Ljava/util/Date;

.field public final totalEdits:I


# direct methods
.method public constructor <init>(ILjava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;->totalEdits:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;->registrationDate:Ljava/util/Date;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;->projectName:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

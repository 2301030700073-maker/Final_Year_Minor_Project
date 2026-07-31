.class public final synthetic Lorg/wikipedia/categories/CategoryActivityViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/categories/CategoryActivityViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/categories/CategoryActivityViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivityViewModel$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;

    .line 9
    .line 10
    const-string v1, "subcat"

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;-><init>(Lorg/wikipedia/categories/CategoryActivityViewModel;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;

    .line 17
    .line 18
    const-string v1, "page"

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/categories/CategoryActivityViewModel$CategoryMembersPagingSource;-><init>(Lorg/wikipedia/categories/CategoryActivityViewModel;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

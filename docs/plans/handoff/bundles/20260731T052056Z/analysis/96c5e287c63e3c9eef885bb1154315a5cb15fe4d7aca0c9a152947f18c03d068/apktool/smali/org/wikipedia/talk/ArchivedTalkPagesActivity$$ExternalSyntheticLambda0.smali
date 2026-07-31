.class public final synthetic Lorg/wikipedia/talk/ArchivedTalkPagesActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/ArchivedTalkPagesActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

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
    iget v0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->retry()V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->archivedTalkPagesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->retry()V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

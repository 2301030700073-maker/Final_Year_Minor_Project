.class public final synthetic Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILandroidx/compose/ui/Modifier;Ljava/util/List;)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p4, p0, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput p1, p0, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/feed/FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    or-int/lit8 p2, v2, 0x1

    .line 22
    .line 23
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p2, p1, v3, p0}, Lorg/wikipedia/compose/components/TabsBoxKt;->LicenseLinkText(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_0
    or-int/lit8 p2, v2, 0x1

    .line 32
    .line 33
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-static {p2, p1, v3, p0}, Lorg/wikipedia/feed/ForYouCardKt;->PlaceholderImageGrid(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

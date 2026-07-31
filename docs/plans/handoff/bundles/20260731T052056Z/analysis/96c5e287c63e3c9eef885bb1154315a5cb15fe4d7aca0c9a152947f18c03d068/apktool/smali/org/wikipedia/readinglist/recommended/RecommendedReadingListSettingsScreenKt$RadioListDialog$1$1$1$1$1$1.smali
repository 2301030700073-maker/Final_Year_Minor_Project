.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $onDismissRequest:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onOptionSelected:Lkotlin/jvm/functions/Function1;

.field public final synthetic $option:Ljava/lang/String;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;->$onOptionSelected:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;->$option:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;->$option:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;->$onOptionSelected:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

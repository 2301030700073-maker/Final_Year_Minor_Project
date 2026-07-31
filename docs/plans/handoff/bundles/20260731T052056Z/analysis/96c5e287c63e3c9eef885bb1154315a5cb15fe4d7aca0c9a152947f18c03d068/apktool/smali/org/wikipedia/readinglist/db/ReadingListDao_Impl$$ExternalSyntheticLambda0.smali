.class public final synthetic Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 8
    .line 9
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__deleteAdapterOfReadingList:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v2}, Lcoil3/util/UtilsKt;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__updateAdapterOfReadingList:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v2}, Lcoil3/util/UtilsKt;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__insertAdapterOfReadingList:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 36
    .line 37
    invoke-virtual {p0, p1, v2}, Lkotlin/text/RegexKt;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

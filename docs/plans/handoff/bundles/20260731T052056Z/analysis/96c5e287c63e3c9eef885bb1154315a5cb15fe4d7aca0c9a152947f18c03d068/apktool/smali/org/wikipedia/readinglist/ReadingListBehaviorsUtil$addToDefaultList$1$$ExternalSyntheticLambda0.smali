.class public final synthetic Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/database/ReadingList;

.field public final synthetic f$2:Lorg/wikipedia/page/PageTitle;

.field public final synthetic f$3:Lorg/wikipedia/Constants$InvokeSource;

.field public final synthetic f$4:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/page/PageTitle;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$3:Lorg/wikipedia/Constants$InvokeSource;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$4:Landroid/content/DialogInterface$OnDismissListener;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 4
    .line 5
    iget-wide v1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    .line 9
    .line 10
    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/page/PageTitle;

    .line 11
    .line 12
    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$3:Lorg/wikipedia/Constants$InvokeSource;

    .line 13
    .line 14
    iget-object v6, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$$ExternalSyntheticLambda0;->f$4:Landroid/content/DialogInterface$OnDismissListener;

    .line 15
    .line 16
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->moveToList(Landroid/app/Activity;JLorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;ZLandroid/content/DialogInterface$OnDismissListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

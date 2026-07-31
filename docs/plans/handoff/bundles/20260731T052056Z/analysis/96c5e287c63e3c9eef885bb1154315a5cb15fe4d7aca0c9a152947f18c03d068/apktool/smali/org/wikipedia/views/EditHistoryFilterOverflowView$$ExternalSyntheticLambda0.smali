.class public final synthetic Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/views/ReadingListsOverflowView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/ReadingListsOverflowView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const v0, 0x7f1205ee

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    const-string p1, "anonymous"

    .line 14
    .line 15
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/views/ReadingListsOverflowView;->onSelected()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    const-string p1, "editors"

    .line 25
    .line 26
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/views/ReadingListsOverflowView;->onSelected()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 34
    .line 35
    const-string p1, ""

    .line 36
    .line 37
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/views/ReadingListsOverflowView;->onSelected()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/HomeFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/feed/HomeFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/feed/HomeFragment;

    .line 4
    .line 5
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 14
    .line 15
    const/16 v0, 0x64

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    const v0, 0x7f12060b

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/feed/HomeViewModel;->refreshForYouContent()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 41
    .line 42
    const/4 v0, -0x1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 46
    .line 47
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getHomePreferenceSelection()Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->PERSONALIZED:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 52
    .line 53
    if-ne p1, v0, :cond_1

    .line 54
    .line 55
    sget-object p1, Lorg/wikipedia/feed/HomeTab;->FOR_YOU:Lorg/wikipedia/feed/HomeTab;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sget-object p1, Lorg/wikipedia/feed/HomeTab;->COMMUNITY:Lorg/wikipedia/feed/HomeTab;

    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/HomeFragment;->selectTab(Lorg/wikipedia/feed/HomeTab;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final notificationFilterButton:Landroidx/appcompat/widget/AppCompatImageView;

.field public final notificationFilterCountView:Landroid/widget/TextView;

.field public final synthetic this$0:Lorg/wikipedia/notifications/NotificationActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f09046f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;->notificationFilterButton:Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    const v1, 0x7f09024c

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast v1, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;->notificationFilterCountView:Landroid/widget/TextView;

    .line 33
    .line 34
    move-object p0, p2

    .line 35
    check-cast p0, Lorg/wikipedia/views/WikiCardView;

    .line 36
    .line 37
    new-instance v1, Landroid/util/TypedValue;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const v3, 0x7f040061

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x0

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v1, v3

    .line 59
    :goto_0
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    invoke-direct {p0, p1, v1}, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/notifications/NotificationActivity;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    new-instance p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;

    .line 76
    .line 77
    const/4 p2, 0x3

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/notifications/NotificationActivity;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    new-array p0, v4, [Landroid/view/View;

    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    aput-object v0, p0, p1

    .line 88
    .line 89
    aget-object p0, p0, p1

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    const-string p0, "Attribute not found; ID=2130968673"

    .line 100
    .line 101
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v3
.end method

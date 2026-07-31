.class public final Lorg/schabi/newpipe/settings/custom/NotificationSlot;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final SLOT_ITEMS:[I

.field public static final SLOT_TITLES:[I


# instance fields
.field public final context:Landroid/content/Context;

.field public final i:I

.field public final icon:Landroid/widget/ImageView;

.field public final onToggleCompactSlot:Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

.field public selectedAction:I

.field public final summary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x7f0a029f

    .line 2
    .line 3
    .line 4
    const v1, 0x7f0a02a0

    .line 5
    .line 6
    .line 7
    const v2, 0x7f0a029c

    .line 8
    .line 9
    .line 10
    const v3, 0x7f0a029d

    .line 11
    .line 12
    .line 13
    const v4, 0x7f0a029e

    .line 14
    .line 15
    .line 16
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_ITEMS:[I

    .line 21
    .line 22
    const v0, 0x7f13037b

    .line 23
    .line 24
    .line 25
    const v1, 0x7f13037c

    .line 26
    .line 27
    .line 28
    const v2, 0x7f130378

    .line 29
    .line 30
    .line 31
    const v3, 0x7f130379

    .line 32
    .line 33
    .line 34
    const v4, 0x7f13037a

    .line 35
    .line 36
    .line 37
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_TITLES:[I

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILandroid/view/View;ZLorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    .line 3
    iput p3, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->i:I

    .line 4
    iput-object p6, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->onToggleCompactSlot:Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

    .line 5
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p6, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_PREF_KEYS:[I

    aget p6, p6, p3

    .line 6
    invoke-virtual {p1, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object p6, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_DEFAULTS:[I

    aget p6, p6, p3

    .line 7
    invoke-interface {p2, p1, p6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    .line 8
    sget-object p1, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_ITEMS:[I

    aget p1, p1, p3

    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x8

    const/16 p6, 0x21

    if-lt p2, p6, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    :goto_0
    const v0, 0x7f0a02a4

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a02a5

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->summary:Landroid/widget/TextView;

    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->updateInfo()V

    const v0, 0x7f0a02a6

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->SLOT_TITLES:[I

    aget p3, v1, p3

    .line 15
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f0a02a3

    .line 16
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p4}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a02a1

    .line 17
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    const v0, 0x7f0a02a2

    if-lt p2, p6, :cond_2

    .line 18
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 20
    invoke-virtual {p0, p4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 21
    :cond_2
    invoke-virtual {p3, p5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    const/16 p4, 0xf

    invoke-direct {p2, p0, p3, p4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final updateInfo()V
    .locals 3

    .line 1
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ACTION_ICONS:[I

    .line 2
    .line 3
    iget v1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    .line 4
    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->icon:Landroid/widget/ImageView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v1, v0}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget v0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->selectedAction:I

    .line 26
    .line 27
    invoke-static {v1, v0}, Lorg/schabi/newpipe/player/notification/NotificationConstants;->getActionName(Landroid/content/Context;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/settings/custom/NotificationSlot;->summary:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

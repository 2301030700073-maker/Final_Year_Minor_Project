.class public final synthetic Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lcom/fsck/k9/ui/settings/AboutFragment;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/fsck/k9/ui/settings/AboutFragment;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda3;->f$1:Lcom/fsck/k9/ui/settings/AboutFragment;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda3;->f$1:Lcom/fsck/k9/ui/settings/AboutFragment;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;

    .line 13
    .line 14
    const v3, 0x7f120669

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_0
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;

    .line 32
    .line 33
    const v3, 0x7f1201da

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2}, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_1
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;

    .line 51
    .line 52
    const v3, 0x7f1201d7

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v2}, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :pswitch_2
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;

    .line 70
    .line 71
    const v3, 0x7f1201d5

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v2}, Lcom/fsck/k9/ui/settings/AboutContract$Event$OnSectionContentClick;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

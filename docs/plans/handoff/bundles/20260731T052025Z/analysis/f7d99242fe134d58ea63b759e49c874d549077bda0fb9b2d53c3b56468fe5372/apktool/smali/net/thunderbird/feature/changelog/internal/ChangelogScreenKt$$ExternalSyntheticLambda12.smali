.class public final synthetic Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/Object;Landroidx/compose/ui/Modifier;II)V
    .locals 0

    .line 16
    iput p6, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$1:Z

    iput-object p3, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$3:Landroidx/compose/ui/Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 1
    const/4 p5, 0x2

    .line 2
    iput p5, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$1:Z

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$3:Landroidx/compose/ui/Modifier;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object v7, v5

    .line 16
    check-cast v7, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;

    .line 17
    .line 18
    move-object v8, v4

    .line 19
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    move-object/from16 v10, p1

    .line 22
    .line 23
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 24
    .line 25
    move-object/from16 v1, p2

    .line 26
    .line 27
    check-cast v1, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    iget-boolean v6, v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$1:Z

    .line 37
    .line 38
    iget-object v9, v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$3:Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    invoke-static/range {v6 .. v11}, Lkotlin/io/ByteStreamsKt;->LeadingElements(ZLnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :pswitch_0
    move-object v12, v5

    .line 45
    check-cast v12, Ljava/lang/String;

    .line 46
    .line 47
    move-object v14, v4

    .line 48
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 49
    .line 50
    move-object/from16 v16, p1

    .line 51
    .line 52
    check-cast v16, Landroidx/compose/runtime/Composer;

    .line 53
    .line 54
    move-object/from16 v1, p2

    .line 55
    .line 56
    check-cast v1, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 62
    .line 63
    .line 64
    move-result v17

    .line 65
    iget-boolean v13, v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$1:Z

    .line 66
    .line 67
    iget-object v15, v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$3:Landroidx/compose/ui/Modifier;

    .line 68
    .line 69
    invoke-static/range {v12 .. v17}, Lorg/minidns/util/Base64;->RemoteFolderListItem(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :pswitch_1
    check-cast v5, Ljava/lang/String;

    .line 74
    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    move-object/from16 v7, p1

    .line 78
    .line 79
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 80
    .line 81
    move-object/from16 v1, p2

    .line 82
    .line 83
    check-cast v1, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    move-object v3, v5

    .line 93
    move-object v5, v4

    .line 94
    iget-boolean v4, v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$1:Z

    .line 95
    .line 96
    iget-object v6, v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda12;->f$3:Landroidx/compose/ui/Modifier;

    .line 97
    .line 98
    invoke-static/range {v3 .. v8}, Lorg/jsoup/Jsoup;->ReleaseItemHeader(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 99
    .line 100
    .line 101
    return-object v2

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

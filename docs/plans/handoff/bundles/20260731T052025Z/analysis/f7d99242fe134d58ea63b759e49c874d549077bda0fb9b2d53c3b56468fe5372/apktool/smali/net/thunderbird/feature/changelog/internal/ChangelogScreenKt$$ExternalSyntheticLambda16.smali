.class public final synthetic Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/ui/Modifier;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$0:J

    .line 8
    .line 9
    iput-object p3, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$1:Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    iput p4, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$2:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JI)V
    .locals 1

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$1:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$0:J

    iput p4, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$2:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JII)V
    .locals 0

    .line 15
    const/4 p4, 0x1

    iput p4, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$1:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$0:J

    iput p5, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    iget v1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$2:I

    .line 4
    .line 5
    iget-wide v2, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$0:J

    .line 6
    .line 7
    iget-object v4, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$1:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    or-int/lit8 p0, v1, 0x1

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0, v2, v3, p1, v4}, Lkotlin/uuid/UuidKt;->ColorChip-Zi-j2fk(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 29
    .line 30
    .line 31
    return-object v5

    .line 32
    :pswitch_0
    move-object v9, p1

    .line 33
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 34
    .line 35
    check-cast p2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    iget-object v6, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$1:Landroidx/compose/ui/Modifier;

    .line 45
    .line 46
    iget-wide v7, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$0:J

    .line 47
    .line 48
    iget v11, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;->f$2:I

    .line 49
    .line 50
    invoke-static/range {v6 .. v11}, Lcom/fsck/k9/sasl/OAuthBearer;->CircularProgressIndicator-iJQMabo(Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 51
    .line 52
    .line 53
    return-object v5

    .line 54
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 55
    .line 56
    check-cast p2, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    or-int/lit8 p0, v1, 0x1

    .line 62
    .line 63
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {p0, v2, v3, p1, v4}, Lorg/jsoup/Jsoup;->ChangeDot-3J-VO9M(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 68
    .line 69
    .line 70
    return-object v5

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

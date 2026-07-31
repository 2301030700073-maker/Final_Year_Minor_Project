.class public final synthetic Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;->f$1:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;->f$2:Landroidx/compose/runtime/MutableState;

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
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const v2, 0x7f12064e

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;->f$2:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iget-object v4, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;->f$1:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt$$ExternalSyntheticLambda23;->f$0:Ljava/lang/String;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 18
    .line 19
    invoke-static {v2, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 30
    .line 31
    invoke-static {v2, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :pswitch_1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 42
    .line 43
    invoke-static {v2, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

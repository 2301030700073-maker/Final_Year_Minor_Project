.class public final synthetic Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    const/4 p5, 0x0

    .line 2
    iput p5, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 16
    const/4 p5, 0x1

    iput p5, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    move-object/from16 v1, p2

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iget-object v6, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    iget-object v7, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    .line 29
    .line 30
    iget-object v8, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v9, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 33
    .line 34
    invoke-static/range {v4 .. v9}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->AdaptiveMessageItemHeaderRow(ILandroidx/compose/runtime/Composer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :pswitch_0
    move-object/from16 v11, p1

    .line 39
    .line 40
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    check-cast v1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    iget-object v12, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 54
    .line 55
    iget-object v13, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    .line 56
    .line 57
    iget-object v14, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v15, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;

    .line 60
    .line 61
    invoke-static/range {v10 .. v15}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->MessageBodyContent(ILandroidx/compose/runtime/Composer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;)V

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
